#!/bin/sh
folder='/Users/abadri/workspace/'
options=''

if [ "$1" != "" ]; then
    folder=$1
fi

if ["$2" !== ""]; then
    ## --delete
    options=$2
fi

echo "Starting folder watch $folder"

fswatch -o $folder | xargs -n1 -I{} /Users/abadri/rsyncscript/syncvw.sh $folder $options

#rsync -r -a -v -e "ssh -l abadri" --exclude-from=/Users/abadri/rsyncscript/rsyncexclude $folder abadri-ld2.linkedin.biz:/home/abadri/workspace --delete

#rsync -r -a -v -e "ssh -l abadri" --exclude-from=/Users/abadri/rsyncscript/rsyncexclude ~/workspace/ abadri-ld2.linkedin.biz:/home/abadri/workspace