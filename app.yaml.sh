#!/bin/bash
echo """---
runtime: python39
env: standard
instance_class: F1
inbound_services:
  - warmup
entrypoint: gunicorn -b :${PORT:-8080} -w 1 main:app

env_variables:
  GS_BUCKET_NAME: \"$GS_BUCKET_NAME\"
  DJANGO_SETTINGS_MODULE: \"$DJANGO_SETTINGS_MODULE\"
  GOOGLE_PROJECT_ID: \"$GOOGLE_PROJECT_ID\"
  GOOGLE_COMPUTE_ZONE: \"$GOOGLE_COMPUTE_ZONE\"
  SECRET_KEY: \"$DJANGO_SECRET_KEY\"

automatic_scaling:
  min_idle_instances: automatic
  max_idle_instances: automatic
  min_pending_latency: automatic
  max_pending_latency: automatic
  target_cpu_utilization: 0.75
  max_instances: 1"""
