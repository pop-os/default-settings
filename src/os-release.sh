#!/bin/bash

source /etc/os-release

cat <<EOF
NAME="Pop!_OS"
VERSION="${VERSION}"
ID=${ID}
ID_LIKE=${ID_LIKE}
PRETTY_NAME="Pop!_OS ${VERSION}"
VERSION_ID="${VERSION_ID}"
HOME_URL="https://system76.com/pop"
SUPPORT_URL="http://support.system76.com/"
BUG_REPORT_URL="https://github.com/pop-os/pop/issues"
PRIVACY_POLICY_URL="https://system76.com/privacy"
VERSION_CODENAME=${VERSION_CODENAME}
UBUNTU_CODENAME=${UBUNTU_CODENAME}
EOF
