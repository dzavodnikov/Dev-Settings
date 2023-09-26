#!/usr/bin/env bash

case $(uname -s) in
    Linux*)
        LOCATION=~/.config/Code/User/
    ;;
    Darwin*)
        LOCATION=~/Library/Application\ Support/Code/User/
    ;;
    *)
        echo "Unknown OS ${UNAME}"
esac
