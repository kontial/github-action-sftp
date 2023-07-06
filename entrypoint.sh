#!/bin/sh
lftp -c 'set sftp:auto-confirm yes; set sftp:connect-program "ssh -a -x -oHostKeyAlgorithms=+ssh-rsa"; open -p '"$INPUT_PORT"' -u '"$INPUT_USER,$INPUT_PASSWORD"' sftp://'"$INPUT_SERVER"'; mirror -R -p -v '"$INPUT_LOCAL $INPUT_REMOTE"'; quit;'
