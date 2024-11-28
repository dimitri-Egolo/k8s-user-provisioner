#!/bin/sh

echo "The app is starting ..."

opentelemetry-instrument \
    --traces_exporter console,otlp \
    --metrics_exporter console \
    --service_name k8s-user-provisioner-dimitri \
    --exporter_otlp_endpoint http://otelcol-opentelemetry-collector.zerofiltre-bootcamp.svc.cluster.local:4317 \
    python run.py
