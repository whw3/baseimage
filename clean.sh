#!/bin/bash
rm -rf `grep -v "TIMEZONE" .gitignore`
docker rmi $(docker images -f dangling=true -q) 2>/dev/null
exit 0
