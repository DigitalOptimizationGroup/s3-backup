#!/bin/bash

cd backup
docker build -t dogestry.in/digitaloptgroup/s3-backup .
cd ..
cd restore
docker build -t dogestry.in/digitaloptgroup/s3-restore .
cd ..
