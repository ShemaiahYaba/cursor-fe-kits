# UI/UX Fundamentals

**Cursor FE Kits** — fundamental UI/UX rules for layout, spacing, dimensions, typography, component states, accessibility, IA, and forms. Part of [Cursor FE Kits](https://github.com/ShemaiahYaba/cursor-fe-kits).

Curated from:

- [spencergoldade/cursor-designer](https://github.com/spencergoldade/cursor-designer) — core rules + design tokens
- [spencerpauly/awesome-cursor-skills](https://github.com/spencerpauly/awesome-cursor-skills) — design-system skill + browser QA workflows
- [PatrickJS/awesome-cursorrules](https://github.com/PatrickJS/awesome-cursorrules) — RTL layout, image quality, optional Toss aesthetic
- [Adam Hayes](https://adamhayes.xyz/blog/the-ux-laws-in-my-claude-md) — 20 UX design laws (Hick, Fitts, Jakob, etc.)

## What's inside

```
ui-fundamentals/
├── .cursor/rules/
│   ├── core/           ← always-on UX principles (2)
│   ├── frontend/       ← layout, states, visual language, a11y, IA, forms, flows, copy, UX laws (9)
│   ├── binders/        ← cross-platform + pre-release QA checklists (2)
│   └── supplements/    ← RTL, images, optional design aesthetic (3)
├── skills/             ← 8px grid defaults + browser verification workflows (6)
├── design/tokens/      ← spacing, typography, color templates
├── design/ia/          ← navigation / sitemap template
├── design/references.md ← Refero Styles & external DESIGN.md sources
└── profiles/           ← lean vs full copy lists
```

**33 files** vs ~600+ across the original four repos.

**Companion pack:** [`fe-testing/`](../fe-testing/) — Vitest, Playwright, and test workflow skills.

## Quick start

Copy into your project:

### Lean (recommended)

```bash
# Rules
cp -r ui-fundamentals/.cursor/rules/core your-project/.cursor/rules/
cp -r ui-fundamentals/.cursor/rules/frontend your-project/.cursor/rules/

# Token docs (fill in your values)
cp -r ui-fundamentals/design your-project/
```

### Full

Add binders, supplements, and skills:

```bash
cp -r ui-fundamentals/.cursor/rules/binders your-project/.cursor/rules/
cp -r ui-fundamentals/.cursor/rules/supplements your-project/.cursor/rules/
cp -r ui-fundamentals/skills/* ~/.cursor/skills/   # or your project's skills folder
```

See [profiles/lean.md](profiles/lean.md) and [LEAN_PROFILE_NOTES.md](LEAN_PROFILE_NOTES.md) for profile details.

## Rule map

| Topic | File |
|-------|------|
| Spacing, density, responsive breakpoints | `frontend/ui-layout-and-density.mdc` |
| Component states (hover, loading, error…) | `frontend/ui-components-and-states.mdc` |
| Color, typography, elevation, icons | `frontend/ui-visual-language.mdc` |
| Semantic HTML, ARIA, focus, contrast | `frontend/accessibility-frontend.mdc` |
| Sitemap, nav patterns, labeling | `frontend/ia-navigation-and-structure.mdc` |
| Form layout, validation, error copy | `frontend/ux-forms-and-validation.mdc` |
| Multi-step flows, feedback, disclosure | `frontend/ux-flows-and-feedback.mdc` |
| UX laws (Hick, Fitts, Jakob, Miller, etc.) | `frontend/ux-design-laws.mdc` |
| Labels, microcopy, inclusive language | `frontend/ux-writing-and-microcopy.mdc` |
| 8px grid, type scale, 60-30-10 color | `skills/using-ui-stack/SKILL.md` |
| RTL / logical CSS properties | `supplements/rtl-i18n-layout.mdc` |
| Image dims, alt text, layout shift | `supplements/landing-page-image-quality.mdc` |

## Skills (verification, not doctrine)

Use these when you want Cursor to **check** UI in the browser — they complement the rules, not replace them:

- `accessibility-auditing` — aria-tree audit
- `responsive-testing` — viewport matrix (375–1536px)
- `dark-mode-testing` — light/dark token checks
- `visual-qa-testing` — post-change visual QA
- `form-testing` — validation UX verification

## Brand design systems (external)

Want a specific look — Linear-minimal, Apple-clean, brutalist editorial?

**[Refero Styles](https://styles.refero.design/)** has 2,000+ AI-readable `DESIGN.md` files from real product sites: colors, typography, spacing, and components you can copy into Cursor alongside these rules.

→ Full workflow: [design/references.md](design/references.md)
