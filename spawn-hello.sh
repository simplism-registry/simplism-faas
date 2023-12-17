#!/bin/bash
ORGANISATION="simplism-registry"
PROJECT="hello"
WASM_FILE="${PROJECT}.wasm"
VERSION="0.0.0"

curl -X POST \
http://localhost:8080/spawn \
-H 'admin-spawn-token:michael-burnham-rocks' \
-H 'Content-Type: application/json; charset=utf-8' \
--data-binary @- << EOF
{
    "wasm-file":"hello.wasm", 
    "wasm-url":"https://github.com/${ORGANISATION}/${PROJECT}/releases/download/v${VERSION}/${WASM_FILE}",
    "wasm-function":"handle", 
    "http-port":"9091", 
    "discovery-endpoint":"http://localhost:8080/discovery", 
    "admin-discovery-token":"people-are-strange",
    "admin-spawn-token":"michael-burnham-rocks",
    "information": "✋ I'm the hello-people service",
    "service-name": "hello"
}
EOF

