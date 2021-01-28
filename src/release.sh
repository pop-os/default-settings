#!/bin/bash

source /etc/os-release
NAME="Pop!_OS"
case "${VERSION_ID}" in
    18.04|20.04|22.04)
        VERSION="${VERSION_ID} LTS"
        ;;
    *)
        VERSION="${VERSION_ID}"
        ;;
esac
ID="pop"
ID_LIKE="ubuntu debian"
PRETTY_NAME="${NAME} ${VERSION}"
HOME_URL="https://pop.system76.com"
SUPPORT_URL="https://support.system76.com"
BUG_REPORT_URL="https://github.com/pop-os/pop/issues"
PRIVACY_POLICY_URL="https://system76.com/privacy"
