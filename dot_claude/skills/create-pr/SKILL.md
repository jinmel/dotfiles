---
name: create-pr
description: Create a PR using the gh CLI; branch off main with conventional naming if needed.
when_to_use: when the user asks to open or create a pull request for the current work.
argument-hint: "[issue-number]"
---

# Create PR

Create PR using the gh CLI. If you are in the main branch, create a new branch with conventional naming.
If user provides the corresponding issue number the PR should be working on, update the issue with the current progress when you are done.
