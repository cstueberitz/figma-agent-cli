# Assistant Adapters

This repo keeps the Figma automation layer provider-neutral.

Use this folder for thin assistant-specific entry points:

- `codex/` for Codex-first launch and instruction notes
- `claude/` for Claude-specific prompt and startup material
- `ollama/` for local wrapper scripts that translate a generic request into the shared CLI

The rule of thumb is simple:

- keep all Figma behavior in the shared core
- keep assistant-specific logic limited to launch, prompt, and workflow glue

The current `fig-start` launcher defaults to Codex, but can be redirected with:

```bash
FIGMA_AGENT_NAME="Claude"
FIGMA_AGENT_COMMAND="claude"
```

or to a wrapper command:

```bash
FIGMA_AGENT_NAME="Ollama Wrapper"
FIGMA_AGENT_COMMAND="$HOME/bin/figma-ollama"
```
