# Contributing

Thanks for helping improve Cursor FE Kits.

## What belongs here

This repo is intentionally narrow:

- **UI/UX fundamentals** — layout, spacing, typography, states, a11y, IA, forms
- **Frontend testing** — Vitest, Jest, Playwright, test workflow skills

We do **not** accept:

- Backend or DevOps rules
- Framework-specific app templates (Next.js auth, Convex, etc.)
- Duplicate content already covered upstream — link instead

## How to contribute

1. Fork the repo
2. Create a branch: `feat/short-description` or `fix/short-description`
3. Keep changes focused — one concern per PR
4. Update the relevant pack README if you add/remove files
5. Add upstream attribution if adapting external rules
6. Open a PR with a clear description of what and why

## Adding a rule or skill

Place files in the correct pack:

```
ui-fundamentals/.cursor/rules/   ← design doctrine
ui-fundamentals/skills/          ← manual browser QA
fe-testing/.cursor/rules/        ← automated test rules
fe-testing/skills/               ← test workflow skills
```

Use `.mdc` for Cursor rules with valid front matter (`description`, `globs`, `alwaysApply`).

Use `SKILL.md` with YAML front matter for skills (`name`, `description`).

## Profiles

If you add rules, update the matching profile in `profiles/`:

- `ui-fundamentals/profiles/lean.md` and `full.md`
- `fe-testing/profiles/vitest-only.md` and `full-stack-fe.md`

## Questions

Open a [Discussion](https://github.com/ShemaiahYaba/cursor-fe-kits/discussions) or an issue labeled `question`.
