#!/bin/bash
if [ -z "$1" ]; then 
    echo "please specify directory"
    exit 1
fi
target_dir="$1"
if [ ! -d "$target_dir" ]; then
    echo "target is not directory"
    exit 1
fi
cd "$target_dir" || exit 1
shopt -s nullglob 
for file in *; do 
    [ -f "$file" ] || continue
    ext="${file##*.}"
    if [ "$file" = "$ext" ]; then
        ext="others"
    fi
    mkdir -p "$ext"
    mv -- "$file" "$ext/"    
done











