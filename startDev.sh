#!/bin/bash

cd /home/wj/www/shapeit.pro/Shapeit-pro-backend-docker/backend
docker compose up -d

cd /home/wj/www/shapeit.pro/app.shapeit.pro
git pull

mullvad disconnect
npm run dev
