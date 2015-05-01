#!./bin/zsh
alias python-webserver="python -m SimpleHTTPServer 8888"

# navigation

function j() {
  git="$HOME/dev/git"
  case "$1" in
    g|git )
      cd $git
    ;;
    g-snp )
      cd "$git/sbt-native-packager"
    ;;
    g-a )
      cd "$git/activator"
    ;;
    dl )
      cd "$HOME/Downloads"
    ;;
  esac 
}
