#!/bin/bash
find / -type f -perm -0002 -print > archivos_peligrosos.txt 2>/dev/null
