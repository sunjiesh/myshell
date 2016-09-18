#!/bin/sh

if [ $# != 3 ];
then
    echo 'usage: $0 old_email correct_name correct_email'
    exit 1
fi

git filter-branch --env-filter '
OLD_EMAIL=$1
CORRECT_NAME=$2
CORRECT_EMAIL=$3

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
