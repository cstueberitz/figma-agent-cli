# Generic Assistant Profile

Purpose:
- Use this profile when the assistant does not have a native repo-aware CLI.

How to Use:
- Inject this repo's working context in the wrapper.
- Keep the Figma backend stable and swap only the launch and prompt glue.

Practical Guidance:
- Route all Figma actions through documented CLI commands.
- Keep generated helper files structurally aligned with the shared repo conventions so different assistants still feel like one maintained toolchain.
