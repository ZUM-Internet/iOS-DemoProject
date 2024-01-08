#!/bin/sh
brew install mise

echo "tuist install..."
mise install tuist@3.38.0
mise use tuist@3.38.0
mise plugins
mise ls tuist


#curl -Ls https://install.tuist.io | bash

echo "tuist generate..."

tuist clean --path
tuist fetch --path
tuist generate --path

