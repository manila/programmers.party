#!/bin/bash

URL="https://raw.githubusercontent.com/manila/programmers.party/main/programmers.party.7"
MANN="programmers.party.7"
MANS="man7"
MANB="$( manpath | cut -d: -f1 )"
MAND="$MANB/$MANS"

curl -o "/tmp/$MANN" $URL
gzip "/tmp/$MANN"

if [[ ! -e "$MAND" ]]; then
        mkdir -p "$MAND"
fi

cp "/tmp/${MANN}.gz" $MAND
mandb