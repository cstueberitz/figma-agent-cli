# Claude Profile

Claude should use this repo as the command backend and prefer the documented CLI surface over ad-hoc shell flows.

Practical guidance:
- Read the repo root `AGENTS.md` before issuing Figma commands.
- Use `node src/index.js connect --safe` when plugin-based access is preferred.
- Keep user-facing responses concise and action-oriented.
