#!/bin/sh
brew install mise

echo "tuist install..."
mise install -g tuist@3.38.0
tuist_path=~/.local/share/mise/shims/tuist
mise use tuist@3.38.0
mise plugins
mise ls tuist


#curl -Ls https://install.tuist.io | bash

echo "tuist generate..."

$tuist_path clean --path ..
$tuist_path fetch --path ..
$tuist_path generate --path ..

