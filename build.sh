#!/usr/bin/bash

h8_version="$1"

rm -r dist
mkdir dist

for file in src/*.svg; do
    target_path=$(echo "$file" | sed s/src/dist/ | sed s/\.svg//)
    echo "building $target_path..."
    cat "$file" | sed s/XX/$h8_version/g | inkscape -p -o "$target_path"
done
