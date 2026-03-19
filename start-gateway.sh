#!/usr/bin/env bash
# Start the OpenClaw gateway

set -e

# Ensure log directory exists
mkdir -p /tmp/openclaw

# Start gateway
exec openclaw gateway "$@"
