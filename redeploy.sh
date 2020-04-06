#!/bin/sh

deployment=$DEPLOYMENT
date=$(date +%s)
echo "Redeploying deployment=$deployment with setting redeploy=$date"
kubectl patch deployment $deployment -p "{\"spec\": {\"template\": {\"metadata\": { \"labels\": {  \"redeploy\": \"${date}\"}}}}}"
