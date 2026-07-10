---
name: create-worktree
description: Create or reuse a git worktree and switch the session into it.
when_to_use: when the session is at the repo root (main worktree) and the user starts work on a PR or a feature needing substantial changes.
argument-hint: "[PR-number | branch-name | task description]"
---

# Create worktree

Pick the flow from the argument:

1. **PR number** (`#123`, `123`, or a PR URL) — get the branch with
   `gh pr view <n> --json headRefName`, then:
   - a worktree for that branch already exists in `git worktree list` →
     `EnterWorktree` with `path` pointing at it (never plain `cd` — it doesn't
     switch the session);
   - otherwise `git fetch origin <branch>` and
     `git worktree add .claude/worktrees/<short-name> <branch>`, then
     `EnterWorktree` with `path`. Do NOT use `EnterWorktree` with `name` here —
     that creates a fresh branch off the default branch instead of checking out
     the PR's branch.
2. **Branch name** — `EnterWorktree` with `name` (creates that branch off
   origin/<default-branch> and enters it).
3. **Task description only** — derive a short kebab-case branch name from it
   (follow the repo's branch naming if one is evident), then as (2).
4. **No argument** — ask what they're working on.

After entering: the session cwd is switched for you, but shell cwd can reset
between turns — in Bash always use absolute worktree paths or
`git -C <worktree-path>`, never paths under the primary repo root.

When the user is done with the worktree, use `ExitWorktree` to leave —
ask whether to keep or remove it.
