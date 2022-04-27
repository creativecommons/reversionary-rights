#!/bin/bash

# Pull the latest changes, build them here, then deploy inside /var/www/
# This hardcodes a lot of assumptions.

RRDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

pushd "${RRDIR}" >/dev/null
pushd jekyll >/dev/null
bundle exec jekyll build
popd >/dev/null
popd >/dev/null
