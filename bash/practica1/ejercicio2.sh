#!/bin/bash

listado="listaetc.txt"
ls -l /etc > "$listaetc.txt"
cat "$listaetc.txt"
