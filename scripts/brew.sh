`which -s brew`
if [[ $? != 0 ]]; then
    echo ''
    echo '##### Installing Homebrew...'
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
else
    echo ''
    echo '##### Running Homebrew Updates...'
    brew update
    brew doctor
fi

# install additional helpful formulas
export formulas='
  hub
  imagemagick
  graphviz
  phantomjs
  qt
'
for formula in $formulas
do
  echo 'Installing '$formula'...'
  brew install $formula
done
