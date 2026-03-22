# Ollama Adapter Notes

Ollama is a local model runner, not a drop-in coding-agent CLI with repository-aware startup flags.

For this repo, the recommended Ollama path is:

1. create a small wrapper command such as `figma-ollama`
2. let that wrapper inject repo instructions and call your preferred local workflow
3. point `fig-start` at that wrapper with `FIGMA_AGENT_COMMAND`

Example:

```bash
FIGMA_AGENT_NAME="Ollama Wrapper"
FIGMA_AGENT_COMMAND="$HOME/bin/figma-ollama"
fig-start --safe
```

Typical wrapper responsibilities:

- read repo instructions from `AGENTS.md`
- keep the current working directory and repo path in context
- forward user prompts to the local model
- surface `node src/index.js ...` commands or tool calls back into the repo workflow

This keeps the Figma core stable while allowing experimentation with local open-source models.
