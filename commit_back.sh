#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <commit_date> <commit_message>"
    exit 1
fi

now=$(date +"%m%d%H%M%Y.%S")

commit_msg="$1"
commit_date="$2"

month="${commit_date:2:2}"
day="${commit_date:0:2}"
hour="${commit_date:9:2}"
minute="${commit_date:11:2}"
year="${commit_date:4:4}"
second="${commit_date:13:2}"

# sudo date "${commit_date:2:2}${commit_date:0:2}${commit_date:9:2}${commit_date:11:2}${commit_date:4:4}.${commit_date:13:2}"

req_date="${month}${day}${hour}${minute}${year}.${second}"
sudo date "$req_date"

git commit -m "$commit_msg"
sudo date "$now"
