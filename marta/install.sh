#!/usr/bin/env bash
# Symlinks this Marta config into Marta's folder. Restart Marta afterwards.
set -euo pipefail

src="$(cd "$(dirname "$0")" && pwd)"
dest="$HOME/Library/Application Support/org.yanex.marta"

link() {
    local target="$dest/$1"
    mkdir -p "$(dirname "$target")"
    if [[ -e "$target" && ! -L "$target" ]]; then
        mv "$target" "$target.bak"
        echo "Backed up $target to $target.bak"
    fi
    ln -sfn "$src/$1" "$target"
    echo "Linked $target"
}

link conf.marco
link Plugins/ghostty.lua
