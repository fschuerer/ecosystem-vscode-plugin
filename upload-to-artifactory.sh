#!/bin/bash
ARTIFACTORY_HOST="artifactory.....com"
read -p "username ["dla"]: " input
username=${input:-"dla"}

read -sp "password: " password

curl -v -u "$username:$password" --upload-file payara-vscode-1.6.0-SNAPSHOT-tkse.vsix "https://$ARTIFACTORY_HOST/artifactory/dla-snapshots/fish/payara/ecosystem/1.6.0-SNAPSHOT/payara-vscode-1.6.0-SNAPSHOT-tkse.vsix"
