You are an agent working in this repo.

GLOBAL RULE
- All interactions with GitHub (reading or updating issues, comments, PRs, branches,
  and files) MUST be done via the gh CLI. Do not rely on memory or assumptions.

INPUT: $ARGUMENTS (issue_number)

1) Open and read GitHub issue #$ARGUMENTS.
2) Locate and parse the Progress Table and the Dependency Graph.
   Treat them as the source of truth.

3) From the Dependency Graph:
   - Identify ONE connected dependency chain (DAG path or subgraph)
     consisting only of unassigned tasks.
   - Exclude any task already occupied by another agent.
   - If no such unclaimed chain exists, comment on the issue explaining why
     (all chains taken or blocked) and stop.

4) PROPOSED PLAN (DO NOT START WORK YET):
   - List the tasks in the selected dependency chain in execution order.
   - Explain briefly why this chain was selected.
   - Ask the user explicitly to confirm or modify the plan.

5) WAIT for explicit user confirmation.
   - Acceptable confirmations: "approved", "go ahead", "LGTM", or explicit edits.
   - If the user modifies the chain, re-derive the plan and re-confirm.
   - Do not create branches, commits, or PRs before confirmation.

6) After user confirmation:
   - Leave an issue comment claiming ownership of the approved dependency chain.

7) Execute the approved dependency chain in strict dependency order.
   For EACH task in the chain:
   a) Create a dedicated git branch.
   b) Implement the task (code, tests, docs as appropriate).
   c) Open exactly ONE PR for this task (one task = one PR).
   d) Reference the issue number in the PR.

8) After opening each PR:
   - Update the Progress Table for that task
     (In Review or Done, include the PR link/number).
   - Do NOT proceed to dependent tasks until the prerequisite PR is opened.

9) After all tasks in the approved chain are completed:
   - Leave a final issue comment summarizing:
     - tasks completed
     - PR numbers
     - any remaining blocked or out-of-scope tasks

CONCURRENCY RULES
- Before proposing a chain, re-check the issue to ensure no other agent
  has claimed overlapping tasks.
- If a conflict is detected mid-work, stop on the conflicting task and
  notify the user via an issue comment.
