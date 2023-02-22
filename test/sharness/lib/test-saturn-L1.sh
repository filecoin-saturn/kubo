#!/usr/bin/env bash

cd "$(dirname "$0")"
cd ..

# L1s only officially implement the TRUSTLESS_GATEWAY spec.
# https://github.com/ipfs/specs/blob/main/http-gateways/TRUSTLESS_GATEWAY.md

bash t0117-gateway-block.sh || exit 1;
bash t0118-gateway-car.sh || exit 1;
