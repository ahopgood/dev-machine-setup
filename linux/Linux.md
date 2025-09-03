# Linux
### Dev Tooling
Chrome?

Mise
```
sudo apt update -y && sudo apt install -y gpg sudo wget curl
sudo install -dm 755 /etc/apt/keyrings
wget -qO - https://mise.jdx.dev/gpg-key.pub | gpg --dearmor | sudo tee /etc/apt/keyrings/mise-archive-keyring.gpg 1> /dev/null
echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.gpg arch=amd64] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list
sudo apt update
sudo apt install -y mise
```
* `mise use -g bats`
* `mise use -g bats-extra`
* `mise use -g dive`
* `mise use -g docker-cli`
* `mise use -g docker-compose`
* `mise use -g go`
* `mise use -g goss`
* `mise use -g grype`
* `mise use -g java@21`
* `mise use -g jq`
* `mise use -g maven`
* `mise use -g packer`
* `mise use -g pandoc`
* `mise use -g syft`
* `mise use -g tilt`
* `mise use -g yq`


* `mise use -g make` - issue

## Flatpak
* Required for some app installs like vlc and handbrake
* [Flatpak](https://flatpak.org/)
```
sudo apt install flatpak
```
* Some packages are published to flathub
* [Flathub](https://flathub.org/)
* `sudo apt install gnome-software-plugin-flatpak`
* `flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`

## Apt installations
```
sudo apt install -y dos2unix git graphviz 7zip ddcutil
```
### Monitor Control via ddcutil
* [ddcutil](https://www.ddcutil.com/)
```
sudo apt install -y ddcutil gnome-shell-extension-prefs chrome-gnome-shell
sudo gpasswd --add $USER i2c
```
* Github page [https://github.com/daitj/gnome-display-brightness-ddcutil](https://github.com/daitj/gnome-display-brightness-ddcutil)
* Goto [https://extensions.gnome.org/extension/2645/brightness-control-using-ddcutil/](https://extensions.gnome.org/extension/2645/brightness-control-using-ddcutil/) to install the extension via the web.
  * Select shell version 48
  * Select extension version 55
  * Which generates the following download link: [https://extensions.gnome.org/extension-data/display-brightness-ddcutilthemightydeity.github.com.v55.shell-extension.zip](https://extensions.gnome.org/extension-data/display-brightness-ddcutilthemightydeity.github.com.v55.shell-extension.zip)
```
gnome-extensions install ./display-brightness-ddcutilthemightydeity.github.com.v55.shell-extension.zip
```
### git configuration
```
git config --global --add user.name ahopgood
git config --global --add user.email alex.hopgood@gmail.com
```
### docker
* [Installation](https://docs.docker.com/engine/install/ubuntu/)
```
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
* [Post install steps](https://docs.docker.com/engine/install/linux-postinstall/)
* `sudo usermod -aG docker $USER` add my user to the docker group
* `newgrp docker` to activate changes
* Now we can access the `docker` command without needing `sudo`

### Virtualbox
* Setup repository and keys
```
sudo wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
```
* Install
```agsl
sudo apt-get update
sudo apt-get install virtualbox=7.0
```
* Install Extension pack
```
wget https://download.virtualbox.org/virtualbox/7.0.26/Oracle_VM_VirtualBox_Extension_Pack-7.0.26.vbox-extpack
VBoxManage extpack install --accept-license=33d7284dc4a0ece381196fda3cfe2ed0e1e8e7ed7f27b9a9ebc4ee22e24bd23c Oracle_VM_VirtualBox_Extension_Pack-7.0.26.vbox-extpack
```
Get the error `VBoxManage: error: Too many extension pack names given to "extpack uninstall"` due to trailing space, really Oracle, really!

### Hashicorp tools
```
sudo wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```
* Install packages
```
sudo apt-get update && 
  sudo apt-get install packer=1.9.2-1 &&
  sudo apt install vagrant=2.4.1-1
```

### [WINE](https://gitlab.winehq.org/wine/wine/-/wikis/Debian-Ubuntu)
```
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key -
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-$(lsb_release -cs).sources
sudo apt update
sudo apt install --install-recommends winehq-stable
```
* [winetricks]()
* Wine / Proton UI []()

## Manual installations
* [Dropbox](https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2025.05.20_amd64.deb)
```
sudo dpkg -i dropbox_2025.05.20_amd64.deb
```
* Configuration:
    * Start on login
    * Selective sync to exclude most directories
  ```
  dropbox autostart -y
  dropbox start
  dropbox exclude add Alex's\ Ebooks/
  dropbox exclude add Attest/
  dropbox exclude add Backups/
  dropbox exclude add Camera\ Uploads/
  dropbox exclude add Coursera/
  dropbox exclude add Installers/
  dropbox exclude add Misc/
  dropbox exclude add Nicks\ Graduation\ Photos/
  dropbox exclude add Order\ Confs/
  dropbox exclude add PRANCK/
  dropbox exclude add Parental\ Scans/
  dropbox exclude add Personal\ &\ Confidential/
  dropbox exclude add Photos/
  dropbox exclude add Podcasts/
  dropbox exclude add Podcasts\ -\ Starling/
  dropbox exclude add Projects/
  dropbox exclude add Public/
  dropbox exclude add Scans/
  dropbox exclude add Screenshots/
  dropbox exclude add Sent\ files/
  dropbox exclude add Whatsapp/
  dropbox exclude add Work/
  dropbox exclude add dilbert/

  ```
* [Atom](https://github.com/atom/atom/releases/download/v1.61.0-beta0/atom-amd64.deb)
    * Requires git to be installed first
```
sudo dpkg -i atom-amd64.deb
```

* [Keepass](https://sourceforge.net/projects/keepass/files/KeePass%202.x/2.59/KeePass-2.59-Setup.exe/download)
    * Requires WINE to be installed first
    * How to find my keepass vault from the WINE configuration?
        * `/home/alexander/Dropbox/`
    * Plugins:
        * [HaveIBeenPwned](https://github.com/andrew-schofield/keepass2-haveibeenpwned)
        * [KeePassOTP](https://github.com/Rookiestyle/KeePassOTP)
        * Put plugins in the following directory:
      ```
      ~/.wine/drive_c/Program\ Files/KeePass\ Password\ Safe\ 2/Plugins/
      ```
### Intellij Idea
[Jetbrains Intellij IDEA Ultimate](https://www.jetbrains.com/shop/download/II/2023200)
    * Version 2023.2.8 is the fallback license version
    * [Install guide](https://www.jetbrains.com/help/idea/installation-guide.html#standalone_linux)
  ```
  sudo tar -xzf ideaIU-*.tar.gz -C /opt
  cd /opt/idea-IU-232.10335.12/bin/
  bash ./idea.sh
  ```
    * `Settings`/cog icon > `Create Desktop Entry`
  ```
  echo "export PATH=$PATH:/opt/idea-IU-232.10335.12/bin/" > .bash_profile
  ```
    * Intellij seems to be crashing on both Java 17 and 21 when checking out a project
        * Create a new test project and add a JDK `~/.local/share/mise/installs/java/17` - no help
        * Tried changing the boot runtime to 21 - no help
        * Only seems to be an issue with my https://github.com/ahopgood/dev-machine-setup project
        * Run intellij via `bash /opt/<version>/bin/idea.sh` so you can see the errors printed to the screen:
      ```
      [0824/150644.656705:FATAL:setuid_sandbox_host.cc(158)] The SUID sandbox helper binary was found, but is not configured correctly. Rather than run without sandboxing I'm aborting now. You need to make sure that /home/alexander/.jbr/jbr_jcef-21-linux-x64-b126.4/lib/chrome-sandbox is owned by root and has mode 4755.
      ```
        * Change owner and mode
      ```
      sudo chown root:root ~/.jbr/jbr_jcef-21-linux-x64-b126.4/lib/chrome-sandbox 
      sudo chmod 4755 ~/.jbr/jbr_jcef-21-linux-x64-b126.4/lib/chrome-sandbox 
      ```
* IntelliJ plugins
  * [https://www.jetbrains.com/help/idea/managing-plugins.html#install_plugin_cmd](https://www.jetbrains.com/help/idea/managing-plugins.html#install_plugin_cmd)
  * Plugins are installed at `ls -l ~/.local/share/JetBrains/IntelliJIdea2023.2/`
  * ```
    idea.sh installPlugins org.jetbrains.plugins.go
    idea.sh installPlugins org.jetbrains.plugins.go-template
    idea.sh installPlugins pro.bashsupport
    idea.sh installPlugins com.github.intellij.ginkgo
    idea.sh installPlugins name.kropp.intellij.makefile
    idea.sh installPlugins com.github.l34130.mise
    idea.sh installPlugins PlantUML integration
    idea.sh installPlugins plantuml-parser
    idea.sh installPlugins com.intellij.lang.puppet
    idea.sh installPlugins Pythonid
    idea.sh installPlugins org.jetbrains.plugins.ruby
    idea.sh installPlugins org.intellij.plugins.hcl
    ```
    * It will look like there are issues with go, ginkgo, mise, plantuml-parser, puppet, hcl but they all install fine
  * [Go](https://plugins.jetbrains.com/plugin/9568-go)
    * `org.jetbrains.plugins.go`
  * [go template](https://plugins.jetbrains.com/plugin/10581-go-template)
    * `org.jetbrains.plugins.go-template`
  * [Bash support pro](https://plugins.jetbrains.com/plugin/13841-bashsupport-pro)
    * `pro.bashsupport`
  * [Ginkgo](https://plugins.jetbrains.com/plugin/17554-ginkgo)
    * `com.github.intellij.ginkgo`
  * [Makefile](https://plugins.jetbrains.com/plugin/9333-makefile-language)
    * `name.kropp.intellij.makefile`
  * [mise](https://plugins.jetbrains.com/plugin/24904-mise)
    * `com.github.l34130.mise`
  * [plantuml](https://plugins.jetbrains.com/plugin/7017-plantuml4idea)
    * `PlantUML integration`
  * [Plantuml parser](https://plugins.jetbrains.com/plugin/15524-plantuml-parser)
    * `plantuml-parser`
  * [puppet](https://plugins.jetbrains.com/plugin/7180-puppet)
    * `com.intellij.lang.puppet`
  * [python](https://plugins.jetbrains.com/plugin/631-python)
    * `Pythonid`
  * [ruby](https://plugins.jetbrains.com/plugin/1293-ruby)
    * `org.jetbrains.plugins.ruby`
  * [terraform and hcl](https://plugins.jetbrains.com/plugin/7808-terraform-and-hcl)
    * `org.intellij.plugins.hcl`

### OS changes
* `ctrl + alt` move between desktops
* `windows key + direction arrow` will snap panels to right, left, up, down etc
* `ctrl + c` / `ctrl + v` copy and paste
* `ctrl + shift + c` / `ctrl + shift + v` copy and paste in terminal, due to ctrl+c being the terminate command

To fix:
* I want copy and paste to work in terminal and desktop in the same way, could I use the windows key here sa the command key in macos?
* I want the windows key + arrow to jump to the end of a line

* `ctrl + end` to jump to the end of a line
* `alt + arrow` to move word by word
* `ctrl + arrow` to move word by word

## Media
#### VLC
* [VLC](https://www.videolan.org/vlc/download-ubuntu.html)
* `sudo apt-get install vlc libdvdcss2`
* Configure `sudo dpkg-reconfigure libdvd-pkg`
* Optional suggested packages:
```
libdvdcss2 lirc vlc-plugin-fluidsynth vlc-plugin-jack vlc-plugin-pipewire vlc-plugin-svg
```
#### Handbrake
* [Handbrake](https://handbrake.fr/docs/en/latest/developer/install-dependencies-ubuntu.html)
```
sudo flatpak update && flatpak install fr.handbrake.ghb
```
#### Bruno
* https://www.usebruno.com/downloads
```
sudo mkdir -p /etc/apt/keyrings
sudo apt update && sudo apt install gpg
sudo gpg --list-keys
sudo gpg --no-default-keyring --keyring /etc/apt/keyrings/bruno.gpg --keyserver keyserver.ubuntu.com --recv-keys 9FA6017ECABE0266

echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/bruno.gpg] http://debian.usebruno.com/ bruno stable" | sudo tee /etc/apt/sources.list.d/bruno.list

sudo apt update && sudo apt install bruno
```
* `gpg: can't connect to the dirmngr: No such file or directory` need to run gpg --list-keys first
##### Meld
* [Meld](https://gnome.pages.gitlab.gnome.org/meld/)
```
sudo apt install meld
```
#### PuddleTag
* [PuddleTag](https://docs.puddletag.net/download.html)
* MP3 tag editing
```
sudo apt install puddletag
```
#### sabnzbd
* [sabnzbd](https://sabnzbd.org/wiki/installation/install-unix)
```
sudo add-apt-repository ppa:jcfp/nobetas
sudo apt-get update && sudo apt-get dist-upgrade
sudo apt-get install sabnzbdplus
```
#### Truecrypt / Veracrypt
* https://launchpad.net/~stefansundin/+archive/ubuntu/truecrypt
* [Veracrypt - alternative](https://veracrypt.io/en/Downloads.html) to truecrypt
* [Last version of veracrypt to support truecrypt formats](https://veracrypt.io/en/Downloads_1.25.9.html)
```
sudo apt-get install libfuse2t64 libwxgtk3.2-1t64 libwxbase3.2-1t64 
sudo dpkg -i veracrypt-1.25.9-Ubuntu-23.04-amd64.deb 
```
#### Discord
* [Discord](https://discord.com/download)
```
sudo dpkg -i discord-0.0.108.deb
```