# Figma Agent CLI

Use this repository as the Figma automation backend for your assistant session.

Core rules:
- Prefer documented `node src/index.js ...` commands.
- Keep edits inside this repo unless the user explicitly wants cross-repo changes.
- Verify visual creations after render or component creation.
- Use Safe Mode when patching or direct desktop access is not appropriate.

Consistency rules:
- Keep generated repo files plain, compact, and easy to scan.
- Reuse the same section order, naming, and tone across generated helper files.
- Prefer stable headings such as `Purpose`, `How to Use`, and `Practical Guidance`.
- Do not invent assistant-specific file names or folder structures when a repo convention already exists.
- When writing helper markdown for the user, make it read like one maintained system, not a collection of unrelated adapters.
