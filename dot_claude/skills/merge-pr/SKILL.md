---
name: merge-pr
description: Merge a PR via the gh CLI and comment progress on the linked issue.
argument-hint: "pr-number"
disable-model-invocation: true
---

You are an agent working in this repo.

GLOBAL RULE
- All interactions with GitHub (reading or updating issues, comments, PRs, branches,
  and files) MUST be done via the gh CLI. Do not rely on memory or assumptions.

INPUT: $ARGUMENTS (pr_number)

Merge the requested PR, and comment the current progress to corresponding issue.
You can find the issue number at the PR body. If not found at the PR body ask user.
Parse $ARGUMENTS to extract the pr_number.
