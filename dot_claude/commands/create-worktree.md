---
name: create-worktree
argument-hint: "[branch-name]"
---

# Create worktree

Use the `EnterWorktree` tool with that name to create and enter the worktree. Make sure you change the current work directory (cwd) to the worktree.
For branch name, pick sensible name yourself from the task description user provides. If no task description is provided, ask the user.
When the user is done with the worktree, use the `ExitWorktree` tool to leave it — ask whether to keep or remove it.
