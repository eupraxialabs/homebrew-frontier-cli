<!-- repo-card:start (generated 2026-10-15; see federal-frontier-platform/ARCHITECTURE.md) -->
# homebrew-frontier-cli

Homebrew tap for the `frontier` CLI.

## At a glance

| | |
|---|---|
| **Builds (Harbor `harbor.vitro.lan/ffp/`)** | none |
| **Owner** | David Brewer, Eupraxia Labs (platform architect). Changes go through GitLab merge requests in the `eupraxialabs` group. |
| **Related repos** | frontier-cli |
| **ADRs** (Confluence space FED) | — |

## Where it deploys

| Argo CD app | Namespace | Workloads |
|---|---|---|
| *(none)* | - | `brew install eupraxialabs/frontier-cli/frontier-cli` |

Cluster: the f3iai management cluster (RKE2). Argo CD reads the Gitea mirror of the GitOps repo; GitLab is the source of truth.

## Build, test, release

- **Build:** n/a
- **Test:** `brew audit frontier-cli.rb`
- **Release:** Update the version and SHA256 in `frontier-cli.rb`.

<!-- repo-card:end -->

---

## Existing documentation

---

## Existing documentation

# Eupraxia Labs Federal Frontier CLI

## How do I install these formulae?

`brew install eupraxialabs/frontier-cli/frontier-cli`

Or `brew tap eupraxialabs/frontier-cli` and then `brew install frontier-cli`.


## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
