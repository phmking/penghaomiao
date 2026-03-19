# penghaomiao

## OpenClaw Gateway Setup

This repository contains configuration for running the [OpenClaw](https://openclaw.dev) gateway.

### Prerequisites

- OpenClaw installed (`openclaw` CLI available in PATH)

### Quick Start

```bash
chmod +x start-gateway.sh
./start-gateway.sh
```

Or directly:

```bash
openclaw gateway
```

### Configuration

Gateway settings are in `openclaw.config.json`:

| Setting | Default | Description |
|---|---|---|
| `gateway.port` | `18789` | WebSocket listener port |
| `browser.port` | `18791` | Browser control port |
| `agent.model` | `openrouter/openrouter/auto` | Agent model |
| `healthMonitor.intervalSeconds` | `300` | Health check interval |

### Services

Once running, the gateway exposes:

- **WebSocket**: `ws://127.0.0.1:18789` — main agent communication
- **Canvas**: `http://127.0.0.1:18789/__openclaw__/canvas/` — visual canvas
- **Browser control**: `http://127.0.0.1:18791/` — browser automation (auth required)

### Stopping

Press `Ctrl+C` to gracefully shut down the gateway.
