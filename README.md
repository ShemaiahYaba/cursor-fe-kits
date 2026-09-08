<p align="center">
  <strong>Cursor FE Kits</strong><br/>
  <em>Design rules &amp; testing strategies for Cursor — curated, trimmed, ready to ship.</em>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-GPL--3.0-blue.svg" alt="License: GPL-3.0"></a>
  <a href="./ui-fundamentals"><img src="https://img.shields.io/badge/pack-UI%20Fundamentals-6366f1" alt="UI Fundamentals"></a>
  <a href="./fe-testing"><img src="https://img.shields.io/badge/pack-FE%20Testing-22c55e" alt="FE Testing"></a>
  <img src="https://img.shields.io/badge/files-~45-888" alt="~45 curated files">
</p>

---

**Cursor FE Kits** distills hundreds of scattered Cursor rules and skills into two focused packs for frontend work:

| Pack | What it does | Files |
|------|--------------|-------|
| [**ui-fundamentals**](./ui-fundamentals/) | Layout, spacing, typography, component states, a11y, IA, forms | 31 |
| [**fe-testing**](./fe-testing/) | Vitest, Jest, Playwright, E2E fundamentals, test workflows | 14 |

No backend noise. No framework template bloat. Copy what you need.

## Why this exists

Community repos like [awesome-cursorrules](https://github.com/PatrickJS/awesome-cursorrules) and [cursor-designer](https://github.com/spencergoldade/cursor-designer) are excellent — and enormous. **Cursor FE Kits** keeps only what matters for **building and testing frontend UI**, organized into lean profiles you can drop into any project in minutes.

## Quick install

```bash
git clone https://github.com/ShemaiahYaba/cursor-fe-kits.git
cd cursor-fe-kits
chmod +x scripts/install.sh
```

**UI — lean profile** (layout, states, a11y + token docs):

```bash
./scripts/install.sh ui lean /path/to/your-project
```

**Testing — Vitest only**:

```bash
./scripts/install.sh testing vitest-only /path/to/your-project
```

**Everything**:

```bash
./scripts/install.sh ui full /path/to/your-project
./scripts/install.sh testing full-stack-fe /path/to/your-project
```

Set `CURSOR_SKILLS_DIR` to override the default skills destination (`~/.cursor/skills`).

### Manual copy

See each pack's README for profile details:

- [ui-fundamentals → profiles](./ui-fundamentals/profiles/)
- [fe-testing → profiles](./fe-testing/profiles/)

## How the packs work together

```
┌─────────────────────────────────────────────────────────┐
│                    Your Cursor project                   │
├─────────────────────────┬───────────────────────────────┤
│   ui-fundamentals       │         fe-testing            │
│   ───────────────       │         ──────────            │
│   HOW to build UI       │   HOW to test UI              │
│   spacing · states      │   Vitest · Playwright         │
│   a11y · forms · IA     │   E2E · axe · test skills     │
└─────────────────────────┴───────────────────────────────┘
         │                              │
         └──────── browser QA ──────────┘
              (ui-fundamentals skills)
```

| Build with | Verify manually | Automate with |
|------------|-----------------|---------------|
| `ui-layout-and-density.mdc` | `responsive-testing` skill | — |
| `ui-components-and-states.mdc` | `visual-qa-testing` skill | Vitest + Testing Library |
| `accessibility-frontend.mdc` | `accessibility-auditing` skill | `playwright-a11y.mdc` |
| `ux-forms-and-validation.mdc` | `form-testing` skill | Vitest form specs |

## Profiles at a glance

### UI (`ui-fundamentals/`)

| Profile | Rules | Design docs | Skills |
|---------|-------|-------------|--------|
| **Lean** | 2 core + 4 frontend | 3 token files | — |
| **Full** | + binders + supplements | + IA + voice | 6 browser QA skills |

→ [lean.md](./ui-fundamentals/profiles/lean.md) · [full.md](./ui-fundamentals/profiles/full.md)

### Testing (`fe-testing/`)

| Profile | Rules | Skills |
|---------|-------|--------|
| **Vitest-only** | `vitest-unit.mdc` | writing-tests, parallel-test-fixing |
| **Full-stack FE** | E2E core + all Playwright + Vitest/Jest | all 5 skills |

→ [vitest-only.md](./fe-testing/profiles/vitest-only.md) · [full-stack-fe.md](./fe-testing/profiles/full-stack-fe.md)

## Repository structure

```
cursor-fe-kits/
├── ui-fundamentals/          # Pack 1 — design doctrine
│   ├── .cursor/rules/
│   ├── skills/
│   ├── design/tokens/
│   └── profiles/
├── fe-testing/               # Pack 2 — automated testing
│   ├── .cursor/rules/
│   ├── skills/
│   └── profiles/
├── scripts/install.sh        # One-command installer
├── ATTRIBUTION.md            # Upstream credits & licenses
└── CONTRIBUTING.md
```

## Publishing checklist

Before your first GitHub push:

1. Create repo **`cursor-fe-kits`** (or rename to taste)
2. Replace `ShemaiahYaba` in this README and `CONTRIBUTING.md`
3. Commit only the packs — upstream clones are gitignored
4. Add topics: `cursor`, `cursor-rules`, `ui-ux`, `vitest`, `playwright`, `frontend`, `design-system`

```bash
git add .
git commit -m "Publish Cursor FE Kits — UI fundamentals and FE testing packs"
git remote add origin https://github.com/ShemaiahYaba/cursor-fe-kits.git
git push -u origin main
```

## Attribution

Curated from [cursor-designer](https://github.com/spencergoldade/cursor-designer), [awesome-cursor-skills](https://github.com/spencerpauly/awesome-cursor-skills), [awesome-cursorrules](https://github.com/PatrickJS/awesome-cursorrules), and [tugkanboz/awesome-cursorrules](https://github.com/tugkanboz/awesome-cursorrules).

See [ATTRIBUTION.md](./ATTRIBUTION.md) for **file-level source mapping** and license details.

## License

GPL-3.0 — required for `ui-fundamentals/` content derived from cursor-designer. See [LICENSE](./LICENSE).

---

<p align="center">
  Maintained by <a href="https://github.com/ShemaiahYaba">Wambebe</a>
</p>
