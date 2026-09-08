# Attribution

**Cursor FE Kits** is a curated, trimmed collection. We are grateful to the upstream authors.

## Upstream sources

| Project | Author | License | Used in |
|---------|--------|---------|---------|
| [spencergoldade/cursor-designer](https://github.com/spencergoldade/cursor-designer) | Spencer Goldade | [GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html) | `ui-fundamentals/` rules, design tokens, profiles |
| [spencerpauly/awesome-cursor-skills](https://github.com/spencerpauly/awesome-cursor-skills) | Spencer Pauly | [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/) | Skills in both packs |
| [PatrickJS/awesome-cursorrules](https://github.com/PatrickJS/awesome-cursorrules) | PatrickJS | [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/) | Supplements, Playwright/Vitest/Jest rules |
| [tugkanboz/awesome-cursorrules](https://github.com/tugkanboz/awesome-cursorrules) | Tuğkan Boz | [MIT](https://opensource.org/licenses/MIT) | `fe-testing/` E2E fundamentals |

## File-level source map

### `ui-fundamentals/` — from cursor-designer (GPL-3.0)

All files below retain inline credit: *Rules curated by Spencer Goldade (spencergoldade.ca)*.

| File | Upstream path |
|------|---------------|
| `.cursor/rules/core/design-core.mdc` | `.cursor/rules/core/design-core.mdc` |
| `.cursor/rules/core/cursor-behavior-constraints.mdc` | `.cursor/rules/core/cursor-behavior-constraints.mdc` |
| `.cursor/rules/frontend/*.mdc` (8 files) | `.cursor/rules/frontend/*.mdc` |
| `.cursor/rules/binders/design-quality-testing.mdc` | `.cursor/rules/binders/design-quality-testing.mdc` |
| `.cursor/rules/binders/cross-platform-ux-consistency.mdc` | `.cursor/rules/binders/cross-platform-ux-consistency.mdc` |
| `design/tokens/spacing.md` | `design/tokens/spacing.example.md` |
| `design/tokens/typography.md` | `design/tokens/typography.example.md` |
| `design/tokens/colors.md` | `design/tokens/colors.example.md` |
| `design/ia/navigation.md` | `design/ia/navigation.example.md` |
| `design/content/voice-and-tone.md` | `design/content/voice-and-tone.example.md` |
| `GETTING_STARTED_FOR_DESIGNERS.md` | `GETTING_STARTED_FOR_DESIGNERS.md` |
| `LEAN_PROFILE_NOTES.md` | `LEAN_PROFILE_NOTES.md` |

### `ui-fundamentals/` — from PatrickJS/awesome-cursorrules (CC0 1.0)

| File | Upstream path |
|------|---------------|
| `.cursor/rules/supplements/toss-style-design-system.mdc` | `rules/toss-style-design-system.mdc` |
| `.cursor/rules/supplements/landing-page-image-quality.mdc` | `rules/landing-page-image-quality-cursorrules-prompt-file.mdc` |
| `.cursor/rules/supplements/rtl-i18n-layout.mdc` | `rules/rtl-right-to-left-i18n-cursorrules-prompt-file.mdc` |

### `ui-fundamentals/skills/` — from awesome-cursor-skills (CC0 1.0)

| File | Upstream path |
|------|---------------|
| `using-ui-stack/SKILL.md` | `resources/using-ui-stack/SKILL.md` |
| `accessibility-auditing/SKILL.md` | `resources/accessibility-auditing/SKILL.md` |
| `responsive-testing/SKILL.md` | `resources/responsive-testing/SKILL.md` |
| `dark-mode-testing/SKILL.md` | `resources/dark-mode-testing/SKILL.md` |
| `visual-qa-testing/SKILL.md` | `resources/visual-qa-testing/SKILL.md` |
| `form-testing/SKILL.md` | `resources/form-testing/SKILL.md` |

### `fe-testing/` — from PatrickJS/awesome-cursorrules (CC0 1.0)

| File | Upstream path |
|------|---------------|
| `.cursor/rules/frameworks/vitest-unit.mdc` | `rules/vitest-unit-testing-cursorrules-prompt-file.mdc` |
| `.cursor/rules/frameworks/jest-unit.mdc` | `rules/jest-unit-testing-cursorrules-prompt-file.mdc` |
| `.cursor/rules/frameworks/playwright-e2e.mdc` | `rules/playwright-e2e-testing-cursorrules-prompt-file.mdc` |
| `.cursor/rules/frameworks/playwright-integration.mdc` | `rules/playwright-integration-testing-cursorrules-prompt-file.mdc` |
| `.cursor/rules/frameworks/playwright-a11y.mdc` | `rules/playwright-accessibility-testing-cursorrules-prompt-file.mdc` |

### `fe-testing/` — from tugkanboz/awesome-cursorrules (MIT)

| File | Upstream path |
|------|---------------|
| `.cursor/rules/core/e2e-fundamentals.mdc` | `frameworks/cypress/.cursor/rules/core/testing-fundamentals.mdc` |

### `fe-testing/skills/` — from awesome-cursor-skills (CC0 1.0)

| File | Upstream path |
|------|---------------|
| `writing-tests/SKILL.md` | `resources/writing-tests/SKILL.md` |
| `adding-e2e-tests/SKILL.md` | `resources/adding-e2e-tests/SKILL.md` |
| `recording-browser-flow-as-test/SKILL.md` | `resources/recording-browser-flow-as-test/SKILL.md` |
| `parallel-test-fixing/SKILL.md` | `resources/parallel-test-fixing/SKILL.md` |
| `grinding-until-pass/SKILL.md` | `resources/grinding-until-pass/SKILL.md` |

## What we changed

- Removed framework-specific, backend, and unrelated rules (~600+ files → ~45)
- Renamed and reorganized into two packs with lean/full profiles
- Broadened rule `globs` for stack-agnostic UI file types
- Added root documentation, install script, and cross-pack guides
- Added this file-level source map and inline `Source:` credits on adapted files

## Keeping credit when you copy

Do **not** remove upstream attribution when copying into your projects:

- **cursor-designer** rules: keep the Spencer Goldade credit line
- **PatrickJS / tugkanboz / awesome-cursor-skills** files: keep the `Source:` line at the top of each file

## License compatibility

This repository is distributed under **GPL-3.0** because `ui-fundamentals/` derives from GPL-3.0-licensed cursor-designer content. CC0 and MIT upstream components are included in compliance with their respective licenses.
