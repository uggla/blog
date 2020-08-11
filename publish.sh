#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

zola check
zola build
scp -P 2200 -r public/* uggla@uggla.fr:blog
