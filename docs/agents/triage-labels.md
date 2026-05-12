# Triage Labels

The skills speak in terms of canonical triage roles. This file maps those roles to the actual label strings used in this repo's issue tracker.

| Canonical role     | Label / `Status:` string in this repo | Meaning                                                                  |
| ------------------ | ------------------------------------- | ------------------------------------------------------------------------ |
| `needs-triage`     | `needs-triage`                        | Maintainer needs to evaluate this issue                                  |
| `needs-info`       | `needs-info`                          | Waiting on reporter for more information                                 |
| `ready-for-agent`  | `ready-for-agent`                     | Fully specified, ready for an AFK agent                                  |
| `ready-for-human`  | `ready-for-human`                     | Requires human implementation                                            |
| `backlog`          | `backlog`                             | Interesting, kept on the radar, but not scheduled — typical for `Idea`s and deferred PRDs |
| `wontfix`          | `wontfix`                             | Will not be actioned. Transient — close (and delete, if local-markdown) after marking. |

When a skill mentions a role (e.g. "apply the AFK-ready triage label"), use the corresponding string from this table.

There is no `done` state. When work completes, the issue is **closed** — what that means is project-defined per `issue-tracker.md`. In GitHub/GitLab modes, "close" archives. In local-markdown mode, "close" deletes the file outright (no kept history; anti-documentation-rot).

Edit the right-hand column to match whatever vocabulary you actually use.
