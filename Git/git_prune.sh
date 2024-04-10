#!/usr/bin/env bash

COMMAND="git gc --aggressive --prune"

find "." -type d -name ".git" -exec bash -c "cd \"\${0}/..\" && ${COMMAND}" {} \;

