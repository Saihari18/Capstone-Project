#!/bin/bash
# maintenance_suite.sh — Main Menu for Maintenance Tools

while true; do
  clear
  echo "================================="
  echo " 🧰  SYSTEM MAINTENANCE SUITE"
  echo "================================="
  echo "1️⃣  Run Backup"
  echo "2️⃣  Run System Update"
  echo "3️⃣  Run Log Monitor"
  echo "4️⃣  Exit"
  echo "---------------------------------"
  read -p "Choose an option (1–4): " choice

  case $choice in
    1)
      echo "🔁 Running Backup Script..."
      bash backup.sh
      ;;
    2)
      echo "🔄 Running System Update Script..."
      bash system_update.sh
      ;;
    3)
      echo "🔍 Running Log Monitor Script..."
      bash log_monitor.sh
      ;;
    4)
      echo "👋 Exiting... Have a great day!"
      exit 0
      ;;
    *)
      echo "❌ Invalid choice. Please enter 1–4."
      ;;
  esac

  echo ""
  read -p "Press Enter to continue..."
done