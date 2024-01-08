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

echo "tuist generate..."

tuist clean --path IOSDemoWorkspace/IOSDemoProject
tuist fetch --path IOSDemoWorkspace/IOSDemoProject
tuist generate --path IOSDemoWorkspace/IOSDemoProject

