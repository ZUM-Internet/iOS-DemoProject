#!/bin/sh
echo "mise install..."
curl https://mise.jdx.dev/install.sh | sh
echo "eval \"\$(/Users/local/.local/bin/mise activate zsh)\"" >> "/Users/local/.zshrc"
mise doctor

echo "tuist install..."
mise install tuist@3.38.0
mise use tuist@3.38.0

echo "tuist generate..."
tuist clean --path ..
tuist fetch --path ..
tuist generate --path ..
