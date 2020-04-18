#!/bin/bash

# source: https://codeblog.dotsandbrackets.com/gitlab-ci-esp32-arduino/

apt-get update

apt-get -y install gcc-avr binutils-avr avr-libc

cd ~

# Install arduino-cli
apt-get install curl -y
curl -L -o arduino-cli.tar.bz2 https://downloads.arduino.cc/arduino-cli/arduino-cli-latest-linux64.tar.bz2
tar xjf arduino-cli.tar.bz2
rm arduino-cli.tar.bz2
mv `ls -1` /usr/bin/arduino-cli

# Install python, pip and pyserial
apt-get install python -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install pyserial

# Install esp32 core | Changed to avr
# printf "board_manager:\n  additional_urls:\n    - https://dl.espressif.com/dl/package_esp32_index.json\n" > .arduino-cli.yaml
arduino-cli core update-index --config-file .arduino-cli.yaml
arduino-cli core install arduino:avr --config-file .arduino-cli.yaml

# Install 'native' packages
arduino-cli lib install AccelStepper
arduino-cli lib install Adafruit_SleepyDog_Library
# arduino-cli lib install BME280 // To support working with jm_wire using a forked with edit
# arduino-cli lib install LiquidCrystal_PCF8574 // To support working with jm_wire using a forked with edit
arduino-cli lib install TimerOne
cd -

# Install 'third-party' packages: find proper location and 'git clone'
apt-get install git -y
cd `arduino-cli config dump | grep sketchbook | sed 's/.*\ //'`/libraries
git clone https://github.com/karx/BME280.git
git clone https://github.com/karx/LiquidCrystal_PCF8574.git
git clone https://github.com/jmparatte/jm_Wire.git

cd -
