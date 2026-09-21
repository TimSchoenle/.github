# .github

Default community health files for all TimSchoenle repositories

[![License](https://img.shields.io/github/license/TimSchoenle/.github)](LICENSE)

## What this is

GitHub serves each file here to every repository of the owner that has no copy of its own, and
counts it toward that repository's Community Standards checklist. A repository-level file always
takes precedence.

## Quick start

```bash
gh repo clone TimSchoenle/.github community-health -- --depth 1 && bash community-health/scripts/community-audit.sh
```

That prints one row per public source repository: its health percentage and which checklist items
it satisfies.

## Features

- Every issue starts from a form. Blank issues are disabled, and the bug form will not submit
  without a version and a reproduction.
- Vulnerability reports are routed to private vulnerability reporting, both from `SECURITY.md` and
  from a contact link on the new-issue page.
- The contributing guide links the
  [prose contract](https://github.com/TimSchoenle/actions/blob/main/docs/readme/PROSE.md) instead of
  restating it, so the two cannot drift apart.
- **Audit:** `scripts/community-audit.sh` reads the Community Profile API for each repository, plus
  whether a security policy and private vulnerability reporting are enabled.

## Usage

A repository overrides a default by committing a file of the same name in its root, `.github/` or
`docs/`. Five repositories do so for `CONTRIBUTING.md`.

Issue templates override as a set. A repository with any valid form in its own
`.github/ISSUE_TEMPLATE` uses none of the forms here and none of `config.yml`, so a repository that
adds one custom form has to copy the others next to it.

GitHub never inherits `README`, `LICENSE` or the repository description. Defaults are also absent
from a repository's clones, archives and Git history.

The audit script needs an authenticated `gh` and takes the owner as its only argument:

```bash
bash scripts/community-audit.sh TimSchoenle
```

The API's `issue_template` column stays `false` for issue forms. The health percentage counts them
all the same.

## Documentation

| Document                                                             | Purpose                                                   |
| -------------------------------------------------------------------- | --------------------------------------------------------- |
| [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)                             | Contributor Covenant 3.0, with the reporting contact      |
| [CONTRIBUTING.md](CONTRIBUTING.md)                                   | Issue first, Conventional Commits, signed commits         |
| [SECURITY.md](SECURITY.md)                                           | Supported versions, reporting, response targets and scope |
| [SUPPORT.md](SUPPORT.md)                                             | Where each kind of request goes                           |
| [.github/ISSUE_TEMPLATE/](.github/ISSUE_TEMPLATE)                    | Bug, feature and question forms, and the contact links    |
| [.github/PULL_REQUEST_TEMPLATE.md](.github/PULL_REQUEST_TEMPLATE.md) | Summary, type of change, verification and checklist       |

## Contributing

Issues and pull requests are welcome. [CONTRIBUTING.md](CONTRIBUTING.md) covers the commit
convention and the review. A merged change here reaches every repository without its own copy
immediately, with no pull request on that repository.

## Security

Do not open a public issue for a vulnerability. [SECURITY.md](SECURITY.md) has the reporting
instructions and the supported versions.

## License

`MIT`, except `CODE_OF_CONDUCT.md`, which is adapted from the Contributor Covenant 3.0 and remains
under `CC-BY-SA-4.0`. See [LICENSE](LICENSE) for the terms.
