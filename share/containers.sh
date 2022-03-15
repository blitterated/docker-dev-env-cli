container_exists() {
  [[ ! -f "$CID_FILE" ]]
  return $?
}

ensure_container_exists() {
  if container_exists; then
    echo "No existing ${IMAGE_NAME} container."
    exit 1
  fi
}

container_running() {
  [[ $( docker ps | grep ${CID:0:12} | wc -l ) -gt 0 ]]
  return $?
}

ensure_container_running() {
  if ! container_running; then
    echo "No ${IMAGE_NAME} container running."
    exit 1
  fi
}

