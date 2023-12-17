#!/bin/bash
set -o allexport; source .release.env; set +o allexport
rm -f *.db
simplism listen \
${WASM_FILE} handle \
--http-port 8080 \
--log-level info \
--service-discovery true \
--admin-discovery-token people-are-strange \
--information "👋 I'm the spawner service" \
--spawn-mode true \
--admin-spawn-token michael-burnham-rocks
