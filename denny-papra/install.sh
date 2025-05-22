#!/bin/bash

mkdir -p "${APP_DATA_DIR}/data/db"
mkdir -p "${APP_DATA_DIR}/data/documents"

chown -R 1000:1000 "${APP_DATA_DIR}/data"
