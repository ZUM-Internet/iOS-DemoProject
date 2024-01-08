#!/bin/sh
brew install mise

mise install tuist@3.38.0
mise use tuist@3.38.0
mise plugins
mise ls tuist

$CI_PROJECT_FILE_PATH
echo $CI_PROJECT_FILE_PATH
echo $PATH

$CI_ARCHIVE_PATH
echo $CI_ARCHIVE_PATH

echo "configuration: ${CONFIGURATION}"

echo "tuist generate..."

tuist clean --path ..
tuist fetch --path ..
tuist generate --path ..

