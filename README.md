# Opspresso Homebrew Tap

A collection of Homebrew formulae for Opspresso projects.

## Usage

```bash
brew tap opspresso/tap
brew install opspresso/tap/toast
```

## github action repository_dispatch

```bash
TG_PROJECT="toast"
TG_VERSION="v0.6.1"
TG_SHA256="dd03b739a4286a0440ebee4036c6b0580a659b9db670305761b1262e7107b0f1"

PAYLOAD="{\"event_type\":\"gitops\","
PAYLOAD="${PAYLOAD}\"client_payload\":{"
PAYLOAD="${PAYLOAD}\"project\":\"${TG_PROJECT}\","
PAYLOAD="${PAYLOAD}\"version\":\"${TG_VERSION}\","
PAYLOAD="${PAYLOAD}\"sha256\":\"${TG_SHA256}\""
PAYLOAD="${PAYLOAD}}}"

curl -sL -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -d "${PAYLOAD}" \
  https://api.github.com/repos/opspresso/homebrew-tap/dispatches
```
