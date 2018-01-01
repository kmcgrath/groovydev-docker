#!/bin/bash
set -e

. "$HOME/.sdkman/bin/sdkman-init.sh"

sdk use java
sdk use groovy

script_prefix=""

if [ -e /scripts/"$1" ]; then
  script_prefix="/scripts/"
fi

exec $script_prefix"$@"
