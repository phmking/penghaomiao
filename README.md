# penghaomiao

OpenClaw AI Assistant setup with MiniMax M2.1 and WhatsApp.

## Prerequisites

- Node.js >= 22

## Setup

1. Install OpenClaw globally:

```bash
npm install -g openclaw@latest
```

2. Copy `.env.example` to `.env` and fill in your API keys:

```bash
cp .env.example .env
```

3. Run the onboarding wizard:

```bash
openclaw onboard --auth-choice minimax
```

During onboarding, select:
- **Model provider**: MiniMax M2.1
- **Channel**: WhatsApp
- **Endpoint**: Global (`api.minimax.io`)

4. Verify the setup:

```bash
openclaw doctor
```

## Brave Search (MCP)

Brave Search is configured as an MCP server via mcporter. To enable it:

1. Get a free API key from https://brave.com/search/api/
2. Add your key to `.env`:
   ```
   BRAVE_API_KEY=your-actual-key
   ```
3. Verify the server is available:
   ```bash
   npx mcporter list brave-search --schema
   ```

## Lossless-Claw Plugin

The [lossless-claw](https://www.npmjs.com/package/@martian-engineering/lossless-claw) plugin provides lossless context compaction for long-running sessions.

Install:

```bash
openclaw plugins install @martian-engineering/lossless-claw
```

The plugin is configured in `~/.openclaw/openclaw.json` under `plugins.entries` and `plugins.allow`.

## Usage

```bash
# Install the gateway service (required once, sets up the LaunchAgent)
openclaw gateway install

# Start the gateway
openclaw gateway start

# Check status
openclaw status

# Test Brave Search via mcporter
npx mcporter call brave-search.brave_web_search query="hello world"
```
