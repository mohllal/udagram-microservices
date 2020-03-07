#!/usr/bin/env bash

mkdir -p ~/.aws

cat > ~/.aws/config << EOL
[default]
region = ${AWS_REGION}
output = json
EOL