# Codex Adapter Notes

Codex remains the default adapter because it already matches the current launcher workflow well.

Out of the box:

```bash
fig-start
fig-start --safe
```

If you want to be explicit:

```bash
FIGMA_AGENT_NAME="Codex"
FIGMA_AGENT_COMMAND="codex"
fig-start --safe
```

Codex should read and follow the repo root `AGENTS.md`. Keep any extra Codex-only guidance in this folder if the generic repo instructions become too broad.
