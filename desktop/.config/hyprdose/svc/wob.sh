#!/usr/bin/env bash

rm -f ~/.wobsock
touch ~/.wobsock
tail -f ~/.wobsock | wob
