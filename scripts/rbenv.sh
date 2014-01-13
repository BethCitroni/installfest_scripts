# This script downloads ruby 2.1 and sets it as the global default ruby
clear

# Download and install
brew install rbenv ruby-build rbenv-gem-rehash

# Install Ruby
rbenv install 2.1.0
# Set global Ruby
rbenv global 2.1.0

# Reload
source ~/.bash_profile
