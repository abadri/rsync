rsync -r -a -v -e "ssh -l abadri" --exclude-from=/Users/abadri/rsyncscript/rsyncexclude $1 abadri-ld2.xyz.com:/home/abadri/workspace $2
