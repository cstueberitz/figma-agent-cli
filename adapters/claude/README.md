# Claude Adapter Notes

Claude-style terminal workflows can fit this repo as another thin adapter layer.

Suggested direction:

```bash
FIGMA_AGENT_NAME="Claude"
FIGMA_AGENT_COMMAND="claude"
fig-start --safe
```

If your Claude launcher needs different arguments than Codex, provide a custom template:

```bash
FIGMA_AGENT_REPO_TEMPLATE='{cmd} -C "{repo}"'
FIGMA_AGENT_HERE_TEMPLATE='{cmd} -C "{cwd}" --add-dir "{repo}" "{instructions}"'
```

Keep Claude-specific prompt shaping here, while leaving all Figma behavior in the shared core.
