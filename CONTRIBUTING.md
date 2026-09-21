# Contributing

This is the default guide for every public repository owned by
[TimSchoenle](https://github.com/TimSchoenle). A repository that ships its own `CONTRIBUTING.md`
overrides it; read that file first, because it documents the toolchain, generated files, and checks
specific to that project.

By participating you agree to follow the [Code of Conduct](https://github.com/TimSchoenle/.github/blob/main/CODE_OF_CONDUCT.md).

## Before you start

- **Bugs and features:** open an issue using one of the forms before writing code for anything beyond a
  typo. A change that has not been agreed on may be declined regardless of its quality.
- **Security issues:** never file them publicly. Follow the [Security Policy](https://github.com/TimSchoenle/.github/blob/main/SECURITY.md).
- **Questions:** see [SUPPORT.md](https://github.com/TimSchoenle/.github/blob/main/SUPPORT.md).

## Pull requests

1. Fork the repository and branch from the default branch.
2. Keep each pull request to one logical change. Unrelated refactors belong in their own pull request.
3. Write commit messages and the pull request title in
   [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) form, for example
   `fix(chart): quote the port in the service template`. Release tooling derives versions and
   changelogs from them.
4. Sign your commits. The default branch rejects unsigned commits. See
   [signing commits](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits).
5. Add or update tests for the behaviour you change, and update documentation in the same pull
   request.
6. Run the project's format, lint, and test commands locally. CI runs the same checks, and every
   required check must be green before review.
7. Fill in the pull request template. Link the issue with `Closes #<number>`.

Do not edit generated files by hand. The repository's own `CONTRIBUTING.md` or README lists which
files are generated and the command that regenerates them.

## Review

Every change reaches the default branch through a reviewed pull request. Expect review comments to
be direct; they concern the change, not you. Pull requests without activity for 30 days after a
review request may be closed; they can be reopened at any time.

## Licensing

Contributions are accepted under the license of the repository they are made to, as stated in its
`LICENSE` file (inbound = outbound). Do not submit code you do not have the right to license on
those terms.
