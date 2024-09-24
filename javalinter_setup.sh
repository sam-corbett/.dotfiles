#!/usr/bin/env bash
# Created by: Sam Corbett
# Created on: Sept 2024
# Adds Java Linter for a GitHub repository

# Get checkstyle
wget https://github.com/checkstyle/checkstyle/releases/download/checkstyle-10.13.0/checkstyle-10.13.0-all.jar
mkdir ~/scripts
cp ./checkstyle-10.13.0-all.jar ~/scripts/checkstyle.jar

# Get Mr Coxall's Checks
wget https://raw.githubusercontent.com/Mr-Coxall/dot_files/main/mr-coxall_checks.xml
cp ./mr-coxall_checks.xml ~/scripts/
rm checkstyle-10.3.3-all.jar

# Remove his xml file
rm mr-coxall_checks.xml