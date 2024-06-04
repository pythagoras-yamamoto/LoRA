#!/bin/bash

DATA_DIR="/app/data"

if [ ! -d "$DATA_DIR" ]; then
    mkdir -p "$DATA_DIR"
fi

if [ ! -d "$DATA_DIR/aclImdb" ]; then
    wget -P "$DATA_DIR" http://ai.stanford.edu/~amaas/data/sentiment/aclImdb_v1.tar.gz
    tar -xvzf "$DATA_DIR/aclImdb_v1.tar.gz" -C "$DATA_DIR"
fi
