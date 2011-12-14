#/bin/bash
directory=$1
params="--style=ansi --indent=spaces=4 --break-blocks=all --delete-empty-lines --pad-oper --pad-header --indent-col1-comments --indent-classes --indent-switches --indent-cases --indent-col1-comments --delete-empty-lines --align-pointer=type --align-reference=type --lineend=linux"

declare -a extensions=( '.h'  '.cpp' '.C' '.cxx' '.cpp' '.c') 
styler=astyle

if [  $directory != ""  -a -d $directory ]; then 
    for i in "${extensions[@]}"
    do
        find $directory -name "*"$i | xargs $styler $params
    done
    find $directory -name "*.orig" | xargs rm -rf
elif [ $directory != "" -a -f $directory ]; then
    $styler $directory $params
    rm -rf *.orig
else
    echo "Unknown file/directory"
fi


