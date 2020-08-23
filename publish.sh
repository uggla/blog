#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

zola check
zola build
rsync -avx \
  --progress \
  --delete \
  -e 'ssh -p 2200' \
  public/ uggla@uggla.fr:blog/
