#!/usr/bin/env bash
# ==============================================================================
# 🚀 1-Click Installer for Antigravity AI Skills & Operating System
# Supported OS: macOS / Linux
# ==============================================================================

set -e

CONFIG_DIR="$HOME/.gemini/config"
SKILLS_DIR="$CONFIG_DIR/skills"
RULES_DIR="$CONFIG_DIR/rules"

echo "========================================================"
echo "Installing Antigravity AI Skills & Operating System..."
echo "Target Directory: $CONFIG_DIR"
echo "========================================================"

mkdir -p "$SKILLS_DIR"
mkdir -p "$RULES_DIR"

echo "📂 Installing 126 specialized skills..."
cp -rn ./skills/* "$SKILLS_DIR/"

echo "📜 Installing global directives and 3-step workflow rules..."
cp -f ./GEMINI.md "$CONFIG_DIR/GEMINI.md"
cp -f ./rules/skill-first-workflow.md "$RULES_DIR/skill-first-workflow.md"

TOTAL_SKILLS=$(ls -1 "$SKILLS_DIR" | wc -l | tr -d ' ')

echo ""
echo "✅ Installation Complete!"
echo "🎉 Total Skills Installed: $TOTAL_SKILLS"
echo "⚙️ Permanent Rules active at: $CONFIG_DIR/GEMINI.md"
echo ""
echo "You can now open Antigravity IDE and start using all skills immediately."
echo "========================================================"
