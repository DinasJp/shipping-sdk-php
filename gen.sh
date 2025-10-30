#!/bin/sh

docker run --rm -v "$PWD:/local" openapitools/openapi-generator-cli \
  generate \
  -i https://shipping.dinas.jp/docs?api-docs.json \
  -g php \
  -o /local/ \
  --git-user-id DinasJp \
  --git-repo-id shipping-sdk-php \
  -p invokerPackage=Dinas\\ShippingClient,packageName=ShippingClient,library=psr-18,licenseName=MIT
