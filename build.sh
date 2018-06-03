#!/usr/bin/env bash

DIST_DIR=dist
export GYP_MSVS_VERSION=2015

\rm -rf ${DIST_DIR}
./vendors/7z/7z.exe x vendors/electron-*.zip -o${DIST_DIR}
./tasks/winax/build.sh --update-first
