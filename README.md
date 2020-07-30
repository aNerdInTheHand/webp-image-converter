# 🖼️ webp-image-converter

Convert JPEG and PNG images to WebP format.

## ♦️ WebP format

>[WebP](https://developers.google.com/speed/webp) is a modern image format that provides superior lossless and lossy compression for images on the web. Using WebP, webmasters and web developers can create smaller, richer images that make the web faster.

## 🧰 Using this tool

### 📋 Prerequisites

[Docker](https://docs.docker.com)

### 🏃 Running

1. Clone this repository.
1. Copy or move any images you want to convert to WebP format into the `build/images` directory. They will not be deleted by the tool.
1. In a terminal window at the root of the repository, run `sh run.sh` - optionally, pass a parameter between `1-100` after this command, i.e. `sh run.sh 50` to specify the image lossy quality setting. The higher this number, the better quality the image. The lower the number, the smaller the file size. If no quality number is passed it will default to 80.

## ⚠️ Disclaimer!

I have tested this with my own images but use at your own risk. Photos are precious! ✌️
