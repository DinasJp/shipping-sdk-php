#!/bin/sh

docker run --rm \
  --user "$(id -u):$(id -g)" \
  -v "$PWD:/local" \
  openapitools/openapi-generator-cli generate \
  -i https://shipping.dinas.jp/docs?api-docs.json \
  -g php \
  -o /local/ \
  --git-user-id DinasJp \
  --git-repo-id shipping-sdk-php \
  -p invokerPackage=Dinas\\ShippingSdk,packageName=ShippingSdk,library=psr-18,licenseName=MIT
