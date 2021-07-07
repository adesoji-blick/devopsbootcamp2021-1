#!/bin/sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

# 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash && chmod 777 . ~/.nvm/nvm.sh && . ~/.nvm/nvm.sh && nvm install node'