# About my setup

- Desktop: CachyOS (Arch), Claude Code runs in Ghostty with fish as the shell.
- Also have a couple of Windows laptops.

# Universal rules

## Credentials

- Never write credentials (API keys, tokens, passwords, connection strings) into anything — code, docs, configs, commit messages, commands, examples — unless absolutely necessary.
- When a credential is genuinely needed, it goes in a `.env` file, and only if that file is gitignored. Verify the gitignore before writing it.
- Everywhere else, use placeholders (`<API_KEY>`) or env-var references, never the value.
