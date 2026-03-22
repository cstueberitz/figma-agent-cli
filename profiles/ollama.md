# Ollama Profile

This profile is intended for local open-source model setups routed through a wrapper command.

Practical guidance:
- The wrapper should pass repo context and current working directory into the local model prompt.
- Use the repo root `AGENTS.md` as the source of command knowledge.
- Prefer explicit `node src/index.js ...` commands when tool use is unreliable.
