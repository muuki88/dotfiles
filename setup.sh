#!/bin/bash

echo ">> install essentials"
sudo apt-get install -y zsh git clipit unity-tweak-tool meld libdvd-pkg gimp sound-juicer ubuntu-restricted-extras
chsh

echo ">> install packaging tools for native-packager development"
sudo apt-get install -y rpm dpkg-sig

# This is going to be the setup script


echo
read -p $'\e[33mInstall and configure oh-my-zsh? \e[2m(\e[0mY\e[2m/n)\e[0m \e[39m' -r REPLY

if [[ ! $REPLY =~ ^[Nn]$ ]]
then
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  mkdir -p ~/.zsh/completions
  curl https://github.com/github/hub/blob/master/etc/hub.zsh_completion >  ~/.zsh/completions/_hub

  # https://github.com/zsh-users/zsh-autosuggestions
  git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
  # plugins(zsh-autosuggestions)
fi


# Adding additional repository

echo ">> numix icon theme repo"
sudo add-apt-repository ppa:numix/ppa

echo ">> webupdat8 java repo"
sudo add-apt-repository ppa:webupd8team/java

echo ">> webupdat8 terminix repo"
sudo add-apt-repository ppa:webupd8team/terminix

echo ">> truecrypt repo"
sudo add-apt-repository ppa:stefansundin/truecrypt

echo ">> nodejs 7"
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

echo ">> yarn repo"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

echo ">> docker repo"
curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -
sudo add-apt-repository "deb https://apt.dockerproject.org/repo/ ubuntu-$(lsb_release -cs) main"

echo ">> atom repo"
sudo add-apt-repository ppa:webupd8team/atom

echo ">> tiliado repo (Nuvolapayer)"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 40554B8FA5FE6F6A
sudo touch /etc/apt/sources.list.d/tiliado-nuvolaplayer.list
sudo echo "deb https://tiliado.eu/nuvolaplayer/repository/deb/ $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/tiliado-nuvolaplayer.list > /dev/null

echo ">> sbt repo"
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823

echo ">> keypass xc repo"
sudo add-apt-repository ppa:phoerious/keepassxc

echo "-------------------------------"
echo "All repos added. Update apt-get"
echo "-------------------------------"
sudo apt-get update

echo ">> install tilix"
sudo apt-get install tilix
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

echo ">> install java"
sudo apt-get install -y oracle-java8-installer

echo ">> install sbt"
sudo apt-get install -y sbt

echo ">> install numix"
sudo apt-get install -y numix-gtk-theme numix-icon-theme-circle "numix-wallpaper-*"

echo ">> install truecrypt"
sudo apt-get install -y truecrypt

echo ">> install nodejs"
sudo apt-get install -y nodejs

echo ">> install yarn"
sudo apt-get install -y yarn

echo ">> install docker"
sudo apt-get -y install -y docker-engine

echo ">> install atom"
sudo apt-get -y install atom

echo ">> install nuvola player"
# TODO replace with flatpak
# sudo apt-get -y install nuvolaplayer3 nuvolaplayer3-soundcloud nuvolaplayer3-youtube nuvolaplayer3-plex nuvolaplayer3-google-play-music



# sudo apt-add-repository ppa:diodon-team/stable
# echo "install diodon (clipit alternative"
# sudo apt-get install diodon unity-scope-diodon


# ruby gems for utility tools
sudo apt-get install ruby ruby-dev
sudo gem install rake
sudo gem install github_changelog_generator
sudo gem install bundle


