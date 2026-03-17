# penghaomiao

OpenClaw AI Assistant setup with OpenRouter and WhatsApp.

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
openclaw onboard --install-daemon
```

During onboarding, select:
- **Model provider**: OpenRouter
- **Channel**: WhatsApp

4. Verify the setup:

```bash
openclaw doctor
```

## Usage

```bash
# Start the gateway
openclaw gateway --port 18789

# Check status
openclaw status
```
