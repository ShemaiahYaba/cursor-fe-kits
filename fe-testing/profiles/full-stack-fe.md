# Full-stack FE testing profile

Vitest for unit/component + Playwright for E2E + automated a11y regression.

## Rules → `.cursor/rules/`

**Core:**
- `core/e2e-fundamentals.mdc`

**Frameworks (pick your unit runner):**
- `frameworks/vitest-unit.mdc` — recommended
- `frameworks/jest-unit.mdc` — only if project uses Jest

**Playwright:**
- `frameworks/playwright-e2e.mdc`
- `frameworks/playwright-integration.mdc`
- `frameworks/playwright-a11y.mdc`

## Skills → `~/.cursor/skills/`

- `writing-tests`
- `adding-e2e-tests`
- `recording-browser-flow-as-test`
- `parallel-test-fixing`
- `grinding-until-pass`

## Suggested test pyramid

```
        ┌─────────────┐
        │  Playwright │  few critical flows + a11y specs
        │  (E2E/a11y) │
        ├─────────────┤
        │   Vitest    │  components, hooks, utils
        │  + RTL      │
        └─────────────┘
```

## Pair with UI fundamentals

| UI rule | Test counterpart |
|---------|------------------|
| `accessibility-frontend.mdc` | `playwright-a11y.mdc` + axe |
| `ux-forms-and-validation.mdc` | `form-testing` skill (ui-fundamentals) + Vitest form tests |
| `ui-components-and-states.mdc` | Vitest tests for loading/error/disabled states |

Copy both `ui-fundamentals/profiles/full.md` and this profile for complete FE coverage.
