directory=$1
size=$2
echo "searching for files in  directories"
if [ ! -d "$directory" ]; then
    echo "directory doesnot exist"
    exit 1
fi
find "$directory" -type f -size +"$size" -print0 |xargs -0 du -h

