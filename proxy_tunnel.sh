#!/bin/bash
REMOTE="$1"
echo "Opening tunnel to $REMOTE..."
ssh -R $REMOTE:8089:*:8080 $REMOTE
