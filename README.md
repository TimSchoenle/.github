# .github

Default community health files for every public repository owned by
[TimSchoenle](https://github.com/TimSchoenle).

GitHub serves a file from this repository to any repository that does not ship its own copy. A
repository-level file always wins, and for issue templates the override is all-or-nothing: a
repository with any valid template in its own `.github/ISSUE_TEMPLATE` uses none of the forms here.

| File                                  | Purpose                                                        |
| ------------------------------------- | -------------------------------------------------------------- |
| `CODE_OF_CONDUCT.md`                  | Contributor Covenant 3.0                                       |
| `CONTRIBUTING.md`                     | Default workflow; repositories with their own guide override it |
| `SECURITY.md`                         | Private vulnerability reporting and response targets           |
| `SUPPORT.md`                          | Where each kind of request goes                                |
| `.github/ISSUE_TEMPLATE/`             | Bug, feature and question forms; blank issues disabled         |
| `.github/PULL_REQUEST_TEMPLATE.md`    | Pull request checklist                                         |
| `scripts/community-audit.sh`          | Reports the community profile of every public repository      |

Not covered by defaults, and required in each repository: `README`, `LICENSE` and the repository
description. Defaults also do not appear in a repository's clones, archives or Git history.

## License

`MIT`, except `CODE_OF_CONDUCT.md`, which is adapted from the Contributor Covenant 3.0 and remains
under `CC-BY-SA-4.0`. See [LICENSE](LICENSE) for the terms.
