#!/bin/sh
brew install rtx

rtx install tuist@3.38.0
rtx use tuist@3.38.0

echo "tuist generate..."
tuist clean --path ..
tuist fetch --path ..
tuist generate --path ..

