#!/bin/bash

set -e

#############################################################################
#                                                                           #
# Project 'Pterodactyl Français'                                            #
#                                                                           #
# Copyright (C) 2018 - 2021, Vilhelm Prytz, <vilhelm@prytznet.se>           #
# Copyright (C) 2021 - 2022, Jhonathan Hiul, <saispasje24@gmail.com>        #
#                                                                           #
#                                                                           #
#############################################################################

SCRIPT_VERSION="v0.9.0"
GITHUB_BASE_URL="https://raw.githubusercontent.com/vilhelmprytz/pterodactyl-installer"

LOG_PATH="/var/log/pterodactyl-installer.log"

# exit with error status code if user is not root
if [[ $EUID -ne 0 ]]; then
  echo "* This script must be executed with root privileges (sudo)." 1>&2
  exit 1
fi

# check for curl
if ! [ -x "$(command -v curl)" ]; then
  echo "* curl is required in order for this script to work."
  echo "* install using apt (Debian and derivatives) or yum/dnf (CentOS)"
  exit 1
fi

output() {
  echo -e "* ${1}"
}

error() {
  COLOR_RED='\033[0;31m'
  COLOR_NC='\033[0m'

  echo ""
  echo -e "* ${COLOR_RED}ERROR${COLOR_NC}: $1"
  echo ""
}

execute() {
  echo -e "\n\n* pterodactyl-installer $(date) \n\n" >> $LOG_PATH

  bash <(curl -s "$1") | tee -a $LOG_PATH
  [[ -n $2 ]] && execute "$2"
}

done=false

output "Pterodactyl installation script @ $SCRIPT_VERSION"
output
output "Copyright (C) 2018 - 2021, Vilhelm Prytz, <vilhelm@prytznet.se>"
output "https://github.com/vilhelmprytz/pterodactyl-installer"
output
output "Sponsoring/Donations: https://github.com/vilhelmprytz/pterodactyl-installer?sponsor=1"
output "This script is not associated with the official Pterodactyl Project."

output

PANEL_LATEST="$GITHUB_BASE_URL/$SCRIPT_VERSION/install-panel.sh"

WINGS_LATEST="$GITHUB_BASE_URL/$SCRIPT_VERSION/install-wings.sh"

PANEL_LEGACY="$GITHUB_BASE_URL/$SCRIPT_VERSION/legacy/panel_0.7.sh"

WINGS_LEGACY="$GITHUB_BASE_URL/$SCRIPT_VERSION/legacy/daemon_0.6.sh"

PANEL_CANARY="$GITHUB_BASE_URL/master/install-panel.sh"

WINGS_CANARY="$GITHUB_BASE_URL/master/install-wings.sh"

while [ "$done" == false ]; do
  options=(
    "Install the panel"
    "Install Wings"
    "Install both [0] and [1] on the same machine (wings script runs after panel)\n"

    "Install 0.7 version of panel (unsupported, no longer maintained!)"
    "Install 0.6 version of daemon (works with panel 0.7, no longer maintained!)"
    "Install both [3] and [4] on the same machine (daemon script runs after panel)\n"

    "Install panel with canary version of the script (the versions that lives in master, may be broken!)"
    "Install Wings with canary version of the script (the versions that lives in master, may be broken!)"
    "Install both [6] and [7] on the same machine (wings script runs after panel)"
  )

  actions=(
    "$PANEL_LATEST"
    "$WINGS_LATEST"
    "$PANEL_LATEST;$WINGS_LATEST"

    "$PANEL_LEGACY"
    "$WINGS_LEGACY"
    "$PANEL_LEGACY;$WINGS_LEGACY"

    "$PANEL_CANARY"
    "$WINGS_CANARY"
    "$PANEL_CANARY;$WINGS_CANARY"
  )

  output "What would you like to do?"

  for i in "${!options[@]}"; do
    output "[$i] ${options[$i]}"
  done

  echo -n "* Input 0-$((${#actions[@]} - 1)): "
  read -r action

  [ -z "$action" ] && error "Input is required" && continue

  valid_input=("$(for ((i = 0; i <= ${#actions[@]} - 1; i += 1)); do echo "${i}"; done)")
  [[ ! " ${valid_input[*]} " =~ ${action} ]] && error "Invalid option"
  [[ " ${valid_input[*]} " =~ ${action} ]] && done=true && IFS=";" read -r i1 i2 <<< "${actions[$action]}" && execute "$i1" "$i2"
done
