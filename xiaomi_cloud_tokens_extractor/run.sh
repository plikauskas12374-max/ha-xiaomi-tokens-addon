#!/usr/bin/with-contenv bashio
set -e
cat <<'EOF'
Xiaomi Cloud Tokens Extractor
-----------------------------
This runs the upstream community tool inside a browser terminal.
Use only your own Xiaomi account.
Do not share screenshots or logs that contain tokens.
EOF
cd /opt/upstream
exec ttyd -W -p 7681 /bin/bash -lc 'cd /opt/upstream && /opt/venv/bin/python token_extractor.py'
