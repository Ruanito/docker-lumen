#!/bin/bash

printf "\n\n"
echo "#############################"
echo "Install Composer"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
echo "#############################"