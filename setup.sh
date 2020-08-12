#!/bin/bash

# Zakomentarisati ili obrisati jednu verziju

# Verzija sa folderima
if [ -e Seminarski/$1/ ]; then
  echo "Folder Seminarski/$1/ već postoji!"
else
  mkdir Seminarski/$1/
  echo >> Seminarski/$1/README.md

  if [ Seminarski/.gitkeep ]; then 
    rm Seminarski/.gitkeep
  fi

  echo "* [$1](./Seminarski/$1/README.md)" >> README.md
fi

# Verzija bez foldera
if [ -e Seminarski/$1.md ]; then
  echo "Folder Seminarski/$1.md već postoji!"
else
  echo >> Seminarski/$1.md

  if [ Seminarski/.gitkeep ]; then 
    rm Seminarski/.gitkeep
  fi

  echo "* [$1](./Seminarski/$1.md)" >> README.md
fi