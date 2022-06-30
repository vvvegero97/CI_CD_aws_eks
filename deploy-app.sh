#!/bin/bash
echo "This is deploy script. Kubeconfig: "
cat ~/.kube/config
echo "Chart bucket: \${CHART_S3}"
echo "Contents of bucket: "
aws s3 ls \${CHART_S3}
helm repo list