#!/bin/bash

./bin/intangd $1

exec tail -f /var/log/intangd.log


