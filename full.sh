#!/bin/bash

clear
echo "================================="
echo "        RAAD FULL SCRIPT"
echo "================================="
echo ""

echo "Hello, Raad!"
echo "This script will show system information and options."
echo ""

echo "---- SYSTEM INFO ----"
echo "User: $USER"
echo "Home directory: $HOME"
echo "OS: $(uname -a)"
echo "Current directory: $(pwd)"
echo ""

echo "---- DATE & TIME ----"
date
echo ""

echo "---- LIST FILES ----"
ls -la
echo ""

echo "---- MENU ----"
echo "1) Show disk usage"
echo "2) Show top processes"
echo "3) Show environment variables"
echo "4) Exit"
echo ""

read -p "Choose option [1-4]: " choice
case $choice in
    1) df -h ;;
    2) ps aux --sort=-%cpu | head -n 15 ;;
    3) printenv | head -n 30 ;;
    4) echo "Exiting..." ; exit 0 ;;
    *) echo "Invalid option!" ;;
esac

echo ""
echo "Script finished!"
