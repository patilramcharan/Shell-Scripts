#!/bin/bash

find /home/user/Documents
-mtime +10 -type f -delete
