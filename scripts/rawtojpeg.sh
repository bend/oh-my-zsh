#!/bin/bash - 
set -o nounset                              # Treat unset variables as an error





photos=$(find $1 -name '*.CR2')
for i in $photos; do
    j=$(echo | nawk '{print index("'"${i}"'", ".CR2")}')
    name=${i:0:j}
    echo "Converting $i to $name jpg"
    ufraw-batch $i
    convert $name"ppm" $name"jpg"
    rm $name"ppm"
done
