#!/bin/sh

echo $PLUGIN_SIGNING_KEYS | gpg --import -q

git clone -q $DRONE_REPO_LINK .
git verify-commit $DRONE_COMMIT

if test $? -ne 0;then
  echo 'Commit is not signed with a trusted key'
  exit 1
fi

git checkout -q $DRONE_COMMIT
