#!/bin/bash

set -x

artifactName=$1
htmlCookingPath="artifacts/temp"
jetbrainsJsUrl="https://resources.jetbrains.com/storage/writerside/v5.14.0/app.js"
jetbrainsCookedJsName="app.js"

# Unzip
unzip artifacts/$artifactName -d $htmlCookingPath

rm -rf artifacts/$artifactName


# Loop through all HTML files in the specified html Directory
for htmlFile in "$htmlCookingPath"/*.html; do
    # Check if the file exists and is a regular file
    if [[ -f "$htmlFile" ]]; then
        # Use sed to replace the external JavaScript URL with the local path
        sed -i "s|$jetbrainsJsUrl|$jetbrainsCookedJsName|g" "$htmlFile"
        echo "Replaced in: $htmlFile"
    fi
done


# Copy the edited version of app.js to the artifacts directory
cp .github/scripts/app.js $htmlCookingPath

# Zip
(cd $htmlCookingPath && zip -r ../$artifactName ./*)