#!/bin/bash
set -e

if [ -z "$1" ]; then
  echo "❌ Debes indicar una carpeta a montar como argumento."
  echo "👉 Uso: $0 /ruta/a/tu/carpeta"
  exit 1
fi

HOST_DIR=$(realpath "$1")
if [ ! -d "$HOST_DIR" ]; then
  echo "❌ La carpeta '$HOST_DIR' no existe."
  exit 1
fi

xhost +local:docker

docker build -t qt5-env .

docker run -it --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v "$HOST_DIR":/home/devuser/dev \
  qt5-env