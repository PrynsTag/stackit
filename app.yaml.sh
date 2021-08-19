#!/bin/bash
echo """---
runtime: python39  # or another supported version

env_variables:
  GS_BUCKET_NAME: \"$GS_BUCKET_NAME\"
  DJANGO_SETTINGS_MODULE: \"stackit.settings\"
  GOOGLE_PROJECT_ID: \"$GOOGLE_PROJECT_ID\"
  GOOGLE_COMPUTE_ZONE: \"$GOOGLE_COMPUTE_ZONE\"

handlers:
  # Matches requests to /images/... to files in static/images/...
  - url: /images
    static_dir: static/images
  - url: /.*
    secure: always
    redirect_http_response_code: 301
    script: auto

automatic_scaling:
  target_cpu_utilization: 0.75
  max_instances: 1
  max_pending_latency: automatic

inbound_services:
  - warmup"""