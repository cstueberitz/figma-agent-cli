# Generic Assistant Profile

Use this profile when the assistant does not have a native repo-aware CLI.

Practical guidance:
- Inject this repo's working context in the wrapper.
- Keep the Figma backend stable and swap only the launch and prompt glue.
- Route all Figma actions through documented CLI commands.
