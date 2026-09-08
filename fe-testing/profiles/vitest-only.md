# Vitest-only profile

Unit and component testing — no E2E runner required.

## Rules → `.cursor/rules/`

- `frameworks/vitest-unit.mdc`

Skip `jest-unit.mdc` unless the project uses Jest.

## Skills → `~/.cursor/skills/` or project skills folder

- `writing-tests` — detects Vitest, sets up Testing Library, writes specs
- `parallel-test-fixing` — fix multiple failing files in parallel

## Typical setup

```bash
npm install -D vitest @testing-library/react @testing-library/jest-dom jsdom
```

Add to `package.json`:

```json
{
  "scripts": {
    "test": "vitest run",
    "test:watch": "vitest"
  }
}
```

## Pair with UI fundamentals

Copy `ui-fundamentals/` lean profile for layout/a11y rules while building components you'll test with Vitest + Testing Library.
