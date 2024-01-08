#!/bin/sh
echo "mise install..."
curl https://mise.jdx.dev/install.sh | sh
echo 'eval "$(~/.local/share/mise/bin/mise activate zsh)"' >> ~/.zshrc
mise doctor

echo "tuist install..."
mise install tuist@3.38.0
mise use tuist@3.38.0

echo "tuist generate..."
tuist clean --path ..
tuist fetch --path ..
tuist generate --path ..
