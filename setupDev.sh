#!/bin/bash

sudo bash /home/wj/purgeDocker.sh
cd /home/wj/www/shapeit.pro/Shapeit-pro-backend-docker
git pull
git lfs pull
cd /home/wj/www/shapeit.pro/Shapeit-pro-backend-docker/backend

docker compose up -d

cd /home/wj/www/shapeit.pro/app.shapeit.pro
git pull

mullvad disconnect
code .
npm run dev
