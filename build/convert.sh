#!/usr/bin/env sh

for file in images/*; do
  echo $file
  cwebp -q "${quality}" "$file" -o "${file%.*}.webp";
  mv images/*.webp output/
done
