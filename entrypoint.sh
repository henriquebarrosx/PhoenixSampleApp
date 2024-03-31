#!/bin/bash

# Read about: https://medium.com/@techrally/phoenix-setting-up-env-variables-6557eb1370ee
source .env

/app/bin/migrate

source .env

/app/bin/server