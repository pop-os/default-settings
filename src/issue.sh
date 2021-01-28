#!/bin/bash

source "$(dirname "$0")/release.sh"

cat <<EOF
${PRETTY_NAME} \n \l

EOF
