#!/bin/sh
echo "mise install..."
curl https://mise.jdx.dev/install.sh | sh
echo "eval \"\$(/Users/local/.local/bin/mise activate zsh)\"" >> "/Users/local/.zshrc"

echo "tuist install..."
mise use tuist@3.38.0
mise install tuist

echo "tuist generate..."
tuist clean --path ..
tuist fetch --path ..
tuist generate --path ..
