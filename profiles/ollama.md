# Ollama Profile

Purpose:
- Use a local or open-source model through a wrapper while keeping the shared Figma backend intact.

How to Use:
- Pass repo context and the current working directory into the local model prompt.
- Use the repo root `AGENTS.md` as the source of command knowledge.

Practical Guidance:
- Prefer explicit `node src/index.js ...` commands when tool use is unreliable.
- Keep generated helper markdown and prompts structurally aligned with the shared repo format so local models do not drift stylistically.
