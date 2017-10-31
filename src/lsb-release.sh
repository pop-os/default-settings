#!/bin/bash

cat <<EOF
DISTRIB_ID=$(lsb_release -si)
DISTRIB_RELEASE=$(lsb_release -sr)
DISTRIB_CODENAME=$(lsb_release -sc)
DISTRIB_DESCRIPTION="Pop!_OS $(lsb_release -sr)"
EOF
