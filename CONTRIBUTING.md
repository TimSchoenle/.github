# Contributing

This is the default guide for every repository. A repository that ships its own `CONTRIBUTING.md`
overrides it. Read that file first: it documents the toolchain, the generated files and the checks
specific to that project.

By participating you agree to follow the [Code of Conduct](https://github.com/TimSchoenle/.github/blob/main/CODE_OF_CONDUCT.md).

## Before you start

Open an issue using one of the forms before writing code for anything beyond a typo. A change that
has not been agreed on may be declined regardless of its quality.

Vulnerabilities are never filed publicly. The
[Security Policy](https://github.com/TimSchoenle/.github/blob/main/SECURITY.md) has the reporting
instructions. Questions go where [SUPPORT.md](https://github.com/TimSchoenle/.github/blob/main/SUPPORT.md)
says.

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
6. Run the project's format, lint and test commands locally. CI runs the same checks, and every
   required check must be green before review.
7. Fill in the pull request template. Link the issue with `Closes #<number>`.

Several files are generated. Each one says so in its first few lines, and editing the output instead
of its template or source will be reverted by CI.

## Writing

Prose in a README, a `docs/` page, a doc comment, a commit body or a pull request description is
reviewed against the
[prose contract](https://github.com/TimSchoenle/actions/blob/main/docs/readme/PROSE.md). A README
also follows the [README contract](https://github.com/TimSchoenle/actions/blob/main/docs/readme/GUIDE.md),
and code comments follow the
[doc comment standard](https://github.com/TimSchoenle/actions/blob/main/docs/doc-comments/GUIDE.md)
with its annex for the repository's language.

## Review

Every change reaches the default branch through a reviewed pull request. A pull request with no
activity for 30 days after a review request may be closed, and can be reopened at any time.

## Licensing

Contributions are accepted under the licence of the repository they are made to, as stated in its
`LICENSE` file (inbound = outbound). Do not submit code you do not have the right to license on
those terms.
