#!/usr/bin/env bash
# Install OpenClaw gateway as a macOS LaunchAgent (run once)

set -e

echo "Installing OpenClaw gateway as a launchd service..."
openclaw gateway install

echo "Starting the gateway service..."
launchctl bootstrap gui/$UID ~/Library/LaunchAgents/ai.openclaw.gateway.plist

echo "Done. Use 'openclaw gateway restart' to restart, 'openclaw gateway uninstall' to remove."
