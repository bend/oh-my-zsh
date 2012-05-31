#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error





photos=$(find . -name '*.png')
for i in $photos; do
    j=$(echo | nawk '{print index("'"${i}"'", ".png")}')
    name=${i:0:j}
    echo "Converting $i to $name jpg"
    convert $i $name"jpg"
done
