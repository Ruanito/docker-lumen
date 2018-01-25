#!/bin/bash

printf "\n\n"
echo "#############################"
echo "Build basic project"
composer create-project --prefer-dist laravel/lumen app
chown -R apache:apache app
echo "#############################"