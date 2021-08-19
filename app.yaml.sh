#!/bin/bash
echo """---
runtime: python39
env: standard
instance_class: F1
inbound_services:
  - warmup
entrypoint: gunicorn -b :$PORT -w 1 main:app

handlers:
  - url: /static
    static_dir: static

env_variables:
  GS_BUCKET_NAME: \"$GS_BUCKET_NAME\"
  DJANGO_SETTINGS_MODULE: \"$DJANGO_SETTINGS_MODULE\"
  GOOGLE_PROJECT_ID: \"$GOOGLE_PROJECT_ID\"
  GOOGLE_COMPUTE_ZONE: \"$GOOGLE_COMPUTE_ZONE\"

automatic_scaling:
  min_idle_instances: automatic
  max_idle_instances: automatic
  min_pending_latency: automatic
  max_pending_latency: automatic
  target_cpu_utilization: 0.75
  max_instances: 1"""
