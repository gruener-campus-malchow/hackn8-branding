#!/usr/bin/bash

h8_version="$1"

if [ -d dist ]; then
    rm dist/*
else
    mkdir dist
fi

for file in src/*.svg; do
    target_path=$(echo "$file" | sed s/src/dist/ | sed s/\.svg//)
    echo "building $target_path..."
    cat "$file" | sed s/XX/$h8_version/g | inkscape -p -o "$target_path"
done

convert dist/favicon.png dist/favicon.ico

pdf_output_path='dist/anmeldeformular.pdf'
echo "building $pdf_output_path..."
typst compile anmeldeformular/main.typ "$pdf_output_path"
