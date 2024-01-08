#!/bin/sh

brew install tuist
echo "tuist generate..."
tuist clean --path ..
tuist fetch --path ..
tuist generate --path ..

