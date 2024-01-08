#!/bin/sh
brew install mise

mise install tuist@3.38.0
mise use tuist@3.38.0
mise plugins
mise ls tuist

echo "tuist generate..."
tuist clean --path ..
tuist fetch --path ..
tuist generate --path ..

