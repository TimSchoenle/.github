#!/usr/bin/env bash
# Prints the community profile of every public, non-fork, non-archived repository of an owner.
# Requires an authenticated gh CLI. Usage: scripts/community-audit.sh [owner]
set -euo pipefail

owner="${1:-TimSchoenle}"

printf 'repository\thealth\tdescription\treadme\tlicense\tconduct\tcontributing\tissue_templates\tpr_template\tsecurity_policy\tprivate_reporting\n'

gh repo list "$owner" --visibility public --no-archived --source --limit 1000 --json name --jq '.[].name' |
  while read -r repo; do
    profile=$(gh api "repos/$owner/$repo/community/profile" --jq '[
      .health_percentage,
      (.description != null),
      (.files.readme != null),
      (.files.license.spdx_id // "none"),
      (.files.code_of_conduct_file != null),
      (.files.contributing != null),
      (.files.issue_template != null),
      (.files.pull_request_template != null)
    ] | @tsv')
    security=$(gh api graphql -f query='query($o:String!,$r:String!){repository(owner:$o,name:$r){isSecurityPolicyEnabled}}' \
      -f o="$owner" -f r="$repo" --jq '.data.repository.isSecurityPolicyEnabled')
    reporting=$(gh api "repos/$owner/$repo/private-vulnerability-reporting" --jq '.enabled')
    printf '%s\t%s\t%s\t%s\n' "$repo" "$profile" "$security" "$reporting"
  done
