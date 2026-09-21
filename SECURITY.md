# Security Policy

This is the default policy for every repository. A repository that ships its own `SECURITY.md` overrides
it, and that file is authoritative for the repository.

## Supported Versions

Only the latest release of each project receives security fixes. A project without releases is
supported at the head of its default branch. Fixes are not backported.

## Reporting a Vulnerability

Do not open a public issue, discussion or pull request for a vulnerability. Report it privately
through GitHub's private vulnerability reporting:

1. Open the **Security** tab of the affected repository.
2. Choose **Report a vulnerability**.
3. Include the affected version or commit, the component, a reproduction and the impact you
   observed.

The advisory stays private until a fix is released. If the report is accepted, a CVE is requested
through GitHub and you are credited in the advisory unless you ask not to be.

## Response

Reports are handled by a single maintainer. The targets below are goals and carry no contractual
service level.

| Stage                         | Target                           |
| ----------------------------- | -------------------------------- |
| Acknowledgement               | 7 days                           |
| Initial assessment            | 14 days                          |
| Fix for a confirmed critical  | 30 days                          |
| Coordinated public disclosure | 90 days after report, at latest  |

## Scope

In scope: code, container images, Helm charts and GitHub Actions published from these repositories.
Out of scope: vulnerabilities in third-party dependencies that are already publicly tracked upstream,
and findings that require a compromised host or cluster-admin privileges to exploit.
