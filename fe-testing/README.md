# Frontend Testing Fundamentals

**Cursor FE Kits** — trimmed collection for **Vitest, Jest, and Playwright**. Part of [Cursor FE Kits](https://github.com/ShemaiahYaba/cursor-fe-kits).

Curated from:

- [PatrickJS/awesome-cursorrules](https://github.com/PatrickJS/awesome-cursorrules) — Vitest, Jest, Playwright rules
- [tugkanboz/awesome-cursorrules](https://github.com/tugkanboz/awesome-cursorrules) — E2E fundamentals (selectors, isolation, waits)
- [spencerpauly/awesome-cursor-skills](https://github.com/spencerpauly/awesome-cursor-skills) — test writing and workflow skills

## What's inside

```
fe-testing/
├── .cursor/rules/
│   ├── core/e2e-fundamentals.mdc     ← selectors, waits, isolation (1)
│   └── frameworks/
│       ├── vitest-unit.mdc           ← vi.mock, AAA, edge cases
│       ├── jest-unit.mdc             ← optional if not on Vitest
│       ├── playwright-e2e.mdc        ← user flows, page.route
│       ├── playwright-integration.mdc
│       └── playwright-a11y.mdc       ← axe-core / WCAG checks
├── skills/
│   ├── writing-tests/                ← auto-detect runner, Testing Library
│   ├── adding-e2e-tests/             ← Playwright setup + CI
│   ├── recording-browser-flow-as-test/
│   ├── parallel-test-fixing/
│   └── grinding-until-pass/
└── profiles/
    ├── vitest-only.md
    └── full-stack-fe.md
```

**11 files** — enable only what your stack uses.

## How the layers fit together

| Layer | Pack | When to use |
|-------|------|-------------|
| Design rules | `ui-fundamentals/` | Building UI (spacing, states, a11y) |
| Manual QA | `ui-fundamentals/skills/` | Quick browser checks before writing specs |
| Automated tests | `fe-testing/` | Vitest + Playwright in CI |

## Quick start

### Vitest-only (unit + component)

```bash
cp fe-testing/.cursor/rules/frameworks/vitest-unit.mdc your-project/.cursor/rules/
cp -r fe-testing/skills/writing-tests ~/.cursor/skills/
cp -r fe-testing/skills/parallel-test-fixing ~/.cursor/skills/
```

### Full stack FE (Vitest + Playwright + a11y)

```bash
cp fe-testing/.cursor/rules/core/e2e-fundamentals.mdc your-project/.cursor/rules/
cp fe-testing/.cursor/rules/frameworks/*.mdc your-project/.cursor/rules/
cp -r fe-testing/skills/* ~/.cursor/skills/
```

Skip `jest-unit.mdc` if you're Vitest-only. See [profiles/](profiles/) for copy lists.

## Rule map

| Topic | File |
|-------|------|
| data-testid, waits, test isolation | `core/e2e-fundamentals.mdc` |
| vi.mock, unit test structure | `frameworks/vitest-unit.mdc` |
| Jest equivalent | `frameworks/jest-unit.mdc` |
| E2E user flows | `frameworks/playwright-e2e.mdc` |
| API + UI together | `frameworks/playwright-integration.mdc` |
| WCAG automated checks | `frameworks/playwright-a11y.mdc` |
| Detect runner, write tests | `skills/writing-tests/SKILL.md` |
| Bootstrap Playwright | `skills/adding-e2e-tests/SKILL.md` |
| Record flow → Playwright spec | `skills/recording-browser-flow-as-test/SKILL.md` |
