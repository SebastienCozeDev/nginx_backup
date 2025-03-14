#!/bin/bash

DEST_DIR="/tmp/nginx_config"

mkdir -p "$DEST_DIR"

cp -r /etc/nginx "$DEST_DIR"

ARCHIVE_NAME="nginx_config_$(date +%Y%m%d%H%M%S).tar.gz"
tar -czvf "$ARCHIVE_NAME" -C "$DEST_DIR" nginx

rm -R "$DEST_DIR"

echo "Archive créée : $(pwd)/$ARCHIVE_NAME"
