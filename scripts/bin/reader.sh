#!/bin/sh
curl "$1" | unfluff | jq -r .text | less
