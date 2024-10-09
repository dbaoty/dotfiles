#!/usr/bin/env bash

CLEANUP_DIRS=(
    "undo"
    "$HOME/.cache/nvim"
    "$HOME/.local/share/nvim"
    "$HOME/.local/store/nvim"
    "lazy-lock.json"
)

for i in "${CLEANUP_DIRS[@]}"
do
    rm -rf $i
done
