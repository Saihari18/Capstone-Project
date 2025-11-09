#!/bin/bash
# system_update.sh — macOS System Maintenance Script

echo "🔄 Updating Homebrew and installed packages..."
brew update && brew upgrade

echo "🧹 Cleaning up old packages and cache..."
brew cleanup

echo "✅ System update and cleanup complete!"