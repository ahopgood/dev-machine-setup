# dev-machine-setup
Repo for storing information on my dev machine setup for work

Software Manged by this project:
* chrome
* Java 8
* Java 11
* Java 17
* IntelliJ
* Jenv
* watch 
* jq
* aws-cli 
* maven 
* meld
* dropbox
* keepass XC
* 1password 
* Go?

## Salt
I shall use [salt stack](https://saltproject.io/) to provision packages for each work environment; MacOS, Linux etc, and per company where necessary.  
Design notes:
* Should try to make common modules for everything
* Distinguish between OS type by grains:
  * `os:MacOS`
  * `os_family:MacOS`
* For company specific pieces we should use the minion namespace e.g. `@google`

### MacOS
* [Official project installation](https://docs.saltproject.io/en/3001/topics/installation/osx.html)
* [MacOS Mavericks tutorial](https://docs.saltproject.io/en/latest/topics/tutorials/walkthrough_macosx.html)
  * [Preseeding](https://docs.saltproject.io/en/latest/topics/tutorials/walkthrough_macosx.html#preseed-minion-keys) of minion keys looks interesting
* [pkg salt state](https://docs.saltproject.io/en/latest/ref/states/all/salt.states.pkg.html#module-salt.states.pkg)
  * Probably should be able to use this to install packages from brew
* [macpackage](https://docs.saltproject.io/en/latest/ref/states/all/salt.states.macpackage.html) salt module for installing programs via mac installer files (.dmg, .pkg or .app).
* [Mac Brew Package](https://docs.saltproject.io/en/latest/ref/modules/all/salt.modules.mac_brew_pkg.html) salt module
* [Issue about installing Homebrew taps](https://github.com/saltstack/salt/issues/26414)

#### Prerequisites
* Python 2
* [Homebrew](https://brew.sh/)
* [Rosetta2](https://support.apple.com/en-gb/HT211861) - for x86_64 translation to ARM instructions