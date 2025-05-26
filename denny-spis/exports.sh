#!/bin/bash

UMBREL_ROOT="${UMBREL_ROOT:-/mnt/data/umbrel}"
APP_DATA_DIR="${UMBREL_ROOT}/data"
SPIS_DATA_DIR="${APP_DATA_DIR}/data/spis_data"
SPIS_MEDIA_DIR="${UMBREL_ROOT}/data/storage"
DESIRED_OWNER="1000:1000"

mkdir -p "${SPIS_DATA_DIR}" "${SPIS_MEDIA_DIR}"

correct_owner() {
  local dir="$1"
  if [[ -d "$dir" ]]; then
    local owner
    owner=$(stat -c "%u:%g" "$dir")
    if [[ "$owner" != "$DESIRED_OWNER" ]]; then
      chown -R "$DESIRED_OWNER" "$dir"
    fi
  fi
}

correct_owner "${SPIS_DATA_DIR}"
correct_owner "${SPIS_MEDIA_DIR}"
