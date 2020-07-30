#!/usr/bin/env sh

for file in images/*; do
  echo $file
  cwebp -q "${quality}" "$file" -o "${file%.*}.webp";
  cp images/*.webp output/
done
