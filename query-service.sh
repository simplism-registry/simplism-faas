#!/bin/bash
curl http://localhost:8080/service/hello \
-H 'content-type: application/json; charset=utf-8' \
-d 'Bob Morane'
