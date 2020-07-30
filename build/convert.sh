#!/usr/bin/env sh

pwd

ls -la

# cwebp -q 80 images/Beach.jpeg -o images/image.webp
rm images/README.md

for file in images/*; do
  echo $file
  cwebp -q "${quality}" "$file" -o "${file%.*}.webp";
  mv images/*.webp output/
done
