#!/usr/bin/env bash
# Install Cursor FE Kits into a target project.
# Usage: ./scripts/install.sh <pack> <profile> [target-dir]
#
# Examples:
#   ./scripts/install.sh ui lean ../my-app
#   ./scripts/install.sh testing vitest-only .
#   ./scripts/install.sh ui full ~/projects/my-app

set -euo pipefail

PACK="${1:-}"
PROFILE="${2:-}"
TARGET="${3:-.}"

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

usage() {
  cat <<EOF
Cursor FE Kits — installer

Usage: $0 <pack> <profile> [target-dir]

Packs:
  ui         UI/UX fundamentals (ui-fundamentals/)
  testing    Frontend testing (fe-testing/)

Profiles:
  ui:        lean | full
  testing:   vitest-only | full-stack-fe

Target defaults to current directory (.)

Skills are copied to ~/.cursor/skills/ unless CURSOR_SKILLS_DIR is set.
EOF
  exit 1
}

copy_rules() {
  local src="$1"
  local dest="$2"
  mkdir -p "$dest"
  cp -r "$src"/* "$dest/"
  echo "  → rules: $dest"
}

copy_skills() {
  local src="$1"
  local skills_dest="${CURSOR_SKILLS_DIR:-$HOME/.cursor/skills}"
  mkdir -p "$skills_dest"
  for skill in "$src"/*; do
    [[ -d "$skill" ]] || continue
    local name
    name="$(basename "$skill")"
    rm -rf "$skills_dest/$name"
    cp -r "$skill" "$skills_dest/$name"
    echo "  → skill: $skills_dest/$name"
  done
}

install_ui() {
  local rules_dest="$TARGET/.cursor/rules"
  mkdir -p "$rules_dest"

  case "$PROFILE" in
    lean)
      copy_rules "$REPO_ROOT/ui-fundamentals/.cursor/rules/core" "$rules_dest"
      copy_rules "$REPO_ROOT/ui-fundamentals/.cursor/rules/frontend" "$rules_dest"
      mkdir -p "$TARGET/design"
      cp -r "$REPO_ROOT/ui-fundamentals/design/tokens" "$TARGET/design/"
      ;;
    full)
      copy_rules "$REPO_ROOT/ui-fundamentals/.cursor/rules/core" "$rules_dest"
      copy_rules "$REPO_ROOT/ui-fundamentals/.cursor/rules/frontend" "$rules_dest"
      copy_rules "$REPO_ROOT/ui-fundamentals/.cursor/rules/binders" "$rules_dest"
      copy_rules "$REPO_ROOT/ui-fundamentals/.cursor/rules/supplements" "$rules_dest"
      cp -r "$REPO_ROOT/ui-fundamentals/design" "$TARGET/"
      copy_skills "$REPO_ROOT/ui-fundamentals/skills"
      ;;
    *)
      echo "Unknown UI profile: $PROFILE (use lean or full)"
      exit 1
      ;;
  esac
}

install_testing() {
  local rules_dest="$TARGET/.cursor/rules"
  mkdir -p "$rules_dest"

  case "$PROFILE" in
    vitest-only)
      cp "$REPO_ROOT/fe-testing/.cursor/rules/frameworks/vitest-unit.mdc" "$rules_dest/"
      copy_skills "$REPO_ROOT/fe-testing/skills/writing-tests"
      copy_skills "$REPO_ROOT/fe-testing/skills/parallel-test-fixing"
      ;;
    full-stack-fe)
      cp "$REPO_ROOT/fe-testing/.cursor/rules/core/e2e-fundamentals.mdc" "$rules_dest/"
      cp "$REPO_ROOT/fe-testing/.cursor/rules/frameworks/"*.mdc "$rules_dest/"
      copy_skills "$REPO_ROOT/fe-testing/skills"
      ;;
    *)
      echo "Unknown testing profile: $PROFILE (use vitest-only or full-stack-fe)"
      exit 1
      ;;
  esac
}

[[ -n "$PACK" && -n "$PROFILE" ]] || usage

echo "Installing Cursor FE Kits"
echo "  pack:    $PACK"
echo "  profile: $PROFILE"
echo "  target:  $(cd "$TARGET" 2>/dev/null && pwd || echo "$TARGET")"
echo

case "$PACK" in
  ui) install_ui ;;
  testing|fe-testing|test) install_testing ;;
  *) usage ;;
esac

echo
echo "Done. Restart Cursor or reload the window to pick up new rules/skills."
