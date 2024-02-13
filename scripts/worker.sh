#!/bin/bash
# 1. create artifact
# 2. let arelle test the taxonomy
# 3. preserve arifact (= taxonomy-package) for publication

mkdir -p build
# maybe install zip?

for dir in ./*
do
  dir=${dir%*/}
  if [ "${dir}" == "./build" ]; then continue; fi
  if [ "${dir}" == "./scripts" ]; then continue; fi
  echo "${dir}"
  zip  -r build/"${dir}".zip "${dir}"/*
done
