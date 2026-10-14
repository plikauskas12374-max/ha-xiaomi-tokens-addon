# Xiaomi Cloud Tokens Extractor — Home Assistant add-on prototype

This add-on packages the community tool by Piotr Machowski and exposes its interactive terminal through Home Assistant Ingress. It avoids requiring `python3`, `pip3`, or Docker commands in the Terminal & SSH add-on.

Upstream: https://github.com/PiotrMachowski/Xiaomi-cloud-tokens-extractor

## Important
- This is an **experimental prototype**, not a verified release. I cannot build it against your Home Assistant OS from here.
- The terminal is interactive rather than a custom web form because upstream authentication supports account/password and QR-code flows, and can require region selection / 2FA.
- Only run it for your own Xiaomi account. Tokens are credentials; never share them in screenshots, logs, or chat.
- It downloads the upstream repository during image build. Review upstream code before use.
- `repository.yaml` contains a placeholder URL. Replace it with a real GitHub Pages add-on repository URL before adding this repository to Home Assistant.
- The Dockerfile base image and package availability can change; a build failure may require adjustment to the Home Assistant base image.

## Installation (after publishing to your own Git repository)
1. Put this directory structure in a public GitHub repository.
2. Replace the URL in `repository.yaml` with the actual repository URL.
3. Add the repository URL in Home Assistant: Settings → Add-ons → Add-on Store → menu → Repositories.
4. Install **Xiaomi Cloud Tokens Extractor**, start it, and open its Web UI.
5. Follow the upstream prompts. Avoid taking screenshots while tokens are visible.
6. Stop the add-on after extracting what you need.

This prototype does not store credentials in add-on options and does not intentionally log input, but the upstream program and terminal transport should still be reviewed before using sensitive credentials.
