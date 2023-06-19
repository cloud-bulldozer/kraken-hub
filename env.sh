#!/bin/bash

# Vars and respective defaults
export CERBERUS_ENABLED=${CERBERUS_ENABLED:=False}
export CERBERUS_URL=${CERBERUS_URL:=http://0.0.0.0:8080}
export KRKN_KUBE_CONFIG=${KRKN_KUBE_CONFIG:=/root/.kube/config}
export WAIT_DURATION=${WAIT_DURATION:=60}
export ITERATIONS=${ITERATIONS:=1}
export DAEMON_MODE=${DAEMON_MODE:=False}
export RETRY_WAIT=${RETRY_WAIT:=120}
export PUBLISH_KRAKEN_STATUS=${PUBLISH_KRAKEN_STATUS:=False}
export SIGNAL_ADDRESS=${SIGNAL_ADDRESS:=0.0.0.0}
export PORT=${PORT:=8081}
export SIGNAL_STATE=${SIGNAL_STATE:=RUN}
export DEPLOY_DASHBOARDS=${DEPLOY_DASHBOARDS:=False}
export CAPTURE_METRICS=${CAPTURE_METRICS:=False}
export ENABLE_ALERTS=${ENABLE_ALERTS:=False}
export ALERTS_PATH=${ALERTS_PATH:=config/alerts}
export ES_SERVER=${ES_SERVER:=http://0.0.0.0:9200}
export CHECK_CRITICAL_ALERTS=${CHECK_CRITICAL_ALERTS:=False}
export KUBE_BURNER_URL=${KUBE_BURNER_URL:=https://github.com/cloud-bulldozer/kube-burner/releases/download/v1.7.0/kube-burner-1.7.0-Linux-x86_64.tar.gz}

# Unset KUBECONFIG to make sure mounted kubeconfig is used
unset KUBECONFIG
