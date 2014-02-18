#!/bin/bash

# usage:
# ./update.sh HOST_NAME [COMMIT_SHA]
#
# if the SHA arg existed, the script will change the symbolic link to rollback and exit; otherwise update the Rashomon
#

USER="deploy"
HOST=$1
SHA=$2
TIMEOUT=120   # ssh connection timeout, recommand 60s
TARGET="/home/deploy/projects/Rashomon/releases"
LINK="/home/deploy/projects/Rashomon/dist"
#DIR=`git log | head -n 1 | tail -c 41`
DIR=`date +%Y%m%d%H%M%s`

# rollback to specific distribution according to the commit SHA
if [ "$SHA" ]; then
    echo "rolling back to version $SHA..."
    ssh $USER@$HOST "[ -d $TARGET/$SHA ] && ln -sfT $TARGET/$SHA $LINK || echo 'target directory not exist!'"
    exit 0
fi

# update a new version
ssh $USER@$HOST "mkdir -p $TARGET/$DIR"
for i in `seq 10`
do
  rsync dist/* $USER@$HOST:$TARGET/$DIR --rsh=ssh --recursive --delete --delete-excluded -v -h --progress -i --timeout=$TIMEOUT
  if [ "$?" -eq "0" ]; then
      echo "rsync: success"
      echo "updating <dist> soft link to $DIR"
      ssh $USER@$HOST "ln -sfT $TARGET/$DIR $LINK && echo 'update success!'"
      break
  else
      if [ $i -lt 10 ]; then
          echo "fail to rsync, retrying..."
      else
          echo "rsync failed. Please check the permission & network"
          exit 1
      fi
  fi
done
