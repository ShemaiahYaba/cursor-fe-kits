# Full UI/UX fundamentals profile

Copy everything from `ui-fundamentals/` into your project for complete coverage.

## Rules → `.cursor/rules/`

| Folder | Files | Purpose |
|--------|-------|---------|
| `core/` | 2 | Always-on UX principles + agent constraints |
| `frontend/` | 9 | Layout, states, visual language, a11y, IA, forms, flows, copy, **UX laws** |
| `binders/` | 2 | Cross-platform consistency + pre-release QA checklist |
| `supplements/` | 3 | RTL layout, image quality, optional Toss aesthetic |

## Design docs → `design/`

- `tokens/spacing.md`, `typography.md`, `colors.md` — fill in your scale
- `ia/navigation.md` — sitemap template
- `content/voice-and-tone.md` — brand voice
- `content/ux-design-laws.md` — UX laws reference (human-readable)

**Optional — brand aesthetic:** [Refero Styles](https://styles.refero.design/) `DESIGN.md` files — see [design/references.md](../design/references.md)

## Skills → `~/.cursor/skills/` or project skills folder

- `using-ui-stack` — numeric defaults (8px grid, type scale)
- `accessibility-auditing`, `responsive-testing`, `dark-mode-testing`
- `visual-qa-testing`, `form-testing`

## Optional supplements

Skip `supplements/toss-style-design-system.mdc` if you already have your own visual language defined in `design/tokens/`.
