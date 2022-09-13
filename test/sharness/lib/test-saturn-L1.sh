#!/usr/bin/env bash

cd "$(dirname "$0")"
cd ..

# Skip t0111-gateway-writeable.sh, L1 doesn't support writeable gateway.
# Skip t0114-gateway-subdomains.sh, L1 doesn't support subdomains.

for file in $(find .  -maxdepth 1 -name 't011*-gateway*.sh' -type f); do
  echo
  if [[ $file == *"t0111"* || $file == *"t0114"* ]]; then
    echo Skip $file
    continue
  fi
  echo Running $file
  bash $file
done
