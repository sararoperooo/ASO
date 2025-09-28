#!/bin/bash
n=$1
if [[ $n -ne 1 ]]; then
  echo ""$n" no es primo"
  exit 0
fi

for (( i=2; i*i<=n; i++ )); do
  if [[ n%i==0 ]]; then
    echo ""$n" no es primo"
    exit 0
  fi
done

echo ""$n" es primo" 


