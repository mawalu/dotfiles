#!/bin/sh
if [[ -a ~/.is-laptop ]]; then
  cat common laptop > config
else
  cat common desktop > config
fi

