# Windows
## Dev Tooling
* [Dropbox 197.4.7629](https://www.dropbox.com/downloading?build=197.4.7629&plat=win&type=full&arch=x64)
  * [Offline builds](https://www.dropboxforum.com/t5/Dropbox-desktop-client-builds/bd-p/101003016/redirect_from_archived_page/true)
* [Keepass 2.56](https://sourceforge.net/projects/keepass/files/KeePass%202.x/2.56/KeePass-2.56-Setup.exe/download)
  * [Keepass OTP 1.7](https://github.com/Rookiestyle/KeePassOTP/releases/download/v1.7/KeePassOTP.plgx)
  * [Keepass - HaveIBeenPwned 1.36](https://github.com/andrew-schofield/keepass2-haveibeenpwned/releases/download/v1.3.6/HaveIBeenPwned.plgx)
* [Atom 1.60.1](https://github.com/atom/atom/releases/download/v1.61.0-beta0/AtomSetup-x64.exe)
* [Notepad++ 8.4.7](https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.4.7/npp.8.4.7.Installer.x64.exe)
* [IntelliJ Idea Ultimate 2024.1](https://download.jetbrains.com/idea/ideaIU-2024.1.exe)
* [Putty 0.81](https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-0.81-installer.msi)
* [mPutty 1.8.5](https://ttyplus.com/download/mtputty_setup.exe)
* [Monitorian 4.6.4](https://github.com/emoacht/Monitorian/releases/download/4.6.4-Installer/MonitorianInstaller464.zip)
* [Chrome](https://www.google.com/intl/en/chrome/next-steps.html?standalone=1&statcb=0&installdataindex=empty&defaultbrowser=0#)
* [Firefox](https://www.mozilla.org/en-GB/firefox/download/thanks/)
* [Virtualbox 6.0.24](https://download.virtualbox.org/virtualbox/6.0.24/VirtualBox-6.0.24-139119-Win.exe)
  * [Extensions pack](https://download.virtualbox.org/virtualbox/6.0.24/Oracle_VM_VirtualBox_Extension_Pack-6.0.24.vbox-extpack)
* [Vagrant 2.3.0](https://releases.hashicorp.com/vagrant/2.3.0/vagrant_2.3.0_windows_amd64.msi)
* [Packer 1.9.2](https://releases.hashicorp.com/packer/1.9.2/packer_1.9.2_windows_amd64.zip)
* [Eclipse Temurin Java 17.0.5](https://adoptium.net/download/)
  * [Temurin archive](https://adoptium.net/temurin/archive/?version=17)
* [Maven](https://maven.apache.org/download.cgi)
  * Unzip to program files
  * Add to PATH environmental variable and restart machine
  * [Maven wrapper maven](https://maven.apache.org/wrapper/)
    * Then run `mvn wrapper:wrapper` within your projects
* [Golang 1.20.5](https://go.dev/dl/go1.20.5.windows-amd64.msi)
  * [Go Downloads](https://go.dev/dl/)
* [7zip 17.01](https://sourceforge.net/projects/sevenzip/files/7-Zip/17.01/)
  * [General download](https://www.7-zip.org/download.html)
* [Postman 7.36.3](https://dl.pstmn.io/download/latest/win64)
* [Git 2.38.1](https://github.com/git-for-windows/git/releases/download/v2.38.1.windows.1/Git-2.38.1-64-bit.exe)
  * [Git general download](https://git-scm.com/download/win)
* [Markdown Pad 2](http://markdownpad.com/download.html)
* [Meld Merge 3.18.2](https://download.gnome.org/binaries/win32/meld/3.18/Meld-3.18.2-win32.msi)
  * [Meld general download](https://meldmerge.org/)
* [MikTex 2.4](https://miktex.org/download/ctan/systems/win32/miktex/setup/windows-x64/basic-miktex-24.1-x64.exe)
* [Pandoc](https://github.com/jgm/pandoc/releases/download/3.1.13/pandoc-3.1.13-windows-x86_64.msi)
  * [Pandoc General page](https://pandoc.org/installing.html)
* [TruCrypt](https://sourceforge.net/projects/truecrypt/files/TrueCrypt/TrueCrypt-7.2.exe/download)
* [GraphViz](https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/10.0.1/windows_10_cmake_Release_graphviz-install-10.0.1-win64.exe)
  * [General GraphViz installer page](https://graphviz.org/download/)
* [Dos2Unix](https://github.com/guidoreina/dos2unix)
  * System -> Advanced System Settings -> Environment Variables -> User Variables -> Path -> Edit -> New -> C:\Program Files\dos2unix-7.5.2-win64\bin
* [Tilt](https://docs.tilt.dev/install.html)

### IntelliJ Plugins
* [Go](https://plugins.jetbrains.com/plugin/9568-go)
* [Go Template](https://plugins.jetbrains.com/plugin/10581-go-template)
* [ginkgo](https://plugins.jetbrains.com/plugin/17554-ginkgo)
* [Makefile language](https://plugins.jetbrains.com/plugin/9333-makefile-language)
* [Lombok](https://plugins.jetbrains.com/plugin/6317-lombok)
* [PlantUML Parse](https://plugins.jetbrains.com/plugin/15524-plantuml-parser)
* [BashSupport Pro](https://plugins.jetbrains.com/plugin/13841-bashsupport-pro)
* [Puppet](https://plugins.jetbrains.com/plugin/7180-puppet)
* [Ruby](https://plugins.jetbrains.com/plugin/1293-ruby) - to support editing Vagrantfiles
* [Toml](https://plugins.jetbrains.com/plugin/8195-toml)

### IntelliJ Setup
* `Settings` > `Editor` > `File Types` > `Recognised File Types` > `YAML` > add `*.sls`
* Switch to cmd.exe (not powershell)
  * `Settings` > `Tools` > `Terminal` > `Shell path`
#### Salt Stack support
* * `Settings` -> `Editor` -> `File Types` -> Select `jJinja2 template` -> `+` to add the `*.sls` pattern
* ~~There is currently an [open ticket](https://youtrack.jetbrains.com/issue/PY-17334/Please-add-SaltStack-support-as-a-plugin) for Salt Stack support but we can roll it oursevles:~~
  * `Settings` -> `Editor` -> `File Types` -> Select `YAML` -> `+` to add the `*.sls` pattern
  * Install the [Python plugin](https://plugins.jetbrains.com/plugin/631-python)
  * `Settings` -> `Languages and Frameworks` -> `Python template language` -> `+` to add `YAML` to the template file types -> `Jinja2`
#### Tilt Support
* [Editor support](https://docs.tilt.dev/editor.html)
  * IntelliJ / Goland support is via [TextMate bundles](https://www.jetbrains.com/help/idea/textmate-bundles.html)
  * Clone [https://github.com/tilt-dev/tiltfile.tmbundle](https://github.com/tilt-dev/tiltfile.tmbundle)
  * `Settings/Preferences` > `Editor` > `TextMate Bundles` > `+` > point to the above checked out repository

## General Tools
* [Yubico Authenticator](https://www.yubico.com/products/yubico-authenticator/#h-download-yubico-authenticator)
* [Canon TS8300](https://pdisp01.c-wss.com/gdl/WWUFORedirectTarget.do?id=MDEwMDAxMDM3NjA0&cmp=ABX&lang=EN)
* [Surf Shark VPN](https://downloads.surfshark.com/windows/latest/SurfsharkSetup.exe)
* [TreeSize Free](https://www.jam-software.com/treesize_free#different-versions-for-different-requirements)
* [PDFSam](https://download7.pdfsam.org/get-app.aspx)
* [CPU-Z](https://download.cpuid.com/cpu-z/cpu-z_2.09-en.exe)
    * [CPU-Z general download](https://www.cpuid.com/softwares/cpu-z.html)

## Media stuff
* [Steam](https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe)
* [GOG Galaxy 2.0](https://webinstallers.gog-statics.com/download/GOG_Galaxy_2.0.exe)
* [Daemon Tools Lite](https://www.daemon-tools.cc/downloads#install-dtLite-offer)
* [DVD Decrypter](http://www.dvddecrypter.org.uk/SetupDVDDecrypter_3.5.4.0.exe)
* [VLC Media Player 3.0.20](https://get.videolan.org/vlc/3.0.20/win64/vlc-3.0.20-win64.exe)
* [Deluge](https://ftp.osuosl.org/pub/deluge/windows/deluge-2.1.1-win64-setup.exe)
    * [YaRSS2](https://dev.deluge-torrent.org/wiki/Plugins/YaRSS2)
    * [AutoRemovePlus](http://forum.deluge-torrent.org/viewtopic.php?f=9&t=47243)
* [DS4 Windows](https://ds4-windows.com/download/ryochan7-ds4windows/)
* [DsHidMini](https://github.com/nefarius/DsHidMini/releases/download/v2.2.282.0/dshidmini_v2.2.282.0.zip)
  * Once unzipped install the following `.inf` files
  * `x64/dshidmini/dshidmini.inf`
  * `x64/dshidmini/igfilter.inf`
  * Create a shortcut of `DSHMC.exe` on your desktop
* [Exact Audio Copy 1.6](https://www.exactaudiocopy.de/eac-1.6.exe)
  * Flac output: 
    * EAC > Compression Options > External Compression:
      * Tick "Use external compression"
      * Parameter passing scheme: `User Defined Encoder`
      * Use file extention: `.flac`
      * Program: `C:\Program Files (x86)\Exact Audio Copy\Flac\flac.exe`
      * Bit rate: `1024 kBit/s`
      * Command line parameters
      ```
      -8 -V -T "ARTIST=%artist%" -T "TITLE=%title%" -T "ALBUM=%albumtitle%" -T "DATE=%year%" -T "TRACKNUMBER=%tracknr%" -T "GENRE=%genre%" -T "PERFORMER=%albuminterpret%" -T "COMPOSER=%composer%" %haslyrics%--tag-from-file=LYRICS="%lyricsfile%"%haslyrics% -T "ALBUMARTIST=%albumartist%" -T "DISCNUMBER=%cdnumber%" -T "TOTALDISCS=%totalcds%" -T "TOTALTRACKS=%numtracks%" -T "COMMENT=%comment%" %source% -o %dest%
      ```
  * Add album and artist to generated files:
    * EAC > EAC options > Filename > `%artist%\%albumtitle%\%tracknr2% %title%`
* [SABnzbd](https://github.com/sabnzbd/sabnzbd/releases/download/4.2.3/SABnzbd-4.2.3-win-setup.exe)
* [MP3Tag](https://www.mp3tag.de/en/dodownload64.html)
* [Handbrake 1.2.2](https://handbrake.fr/rotation.php?file=HandBrake-1.2.2-x86_64-Win_GUI.exe&old=true)
    * [Handbrake general download](https://handbrake.fr/downloads.php)
* [Calibre Desktop 6.21.0](https://download.calibre-ebook.com/6.21.0/)
    * [General download](https://calibre-ebook.com/download_windows)
    * [obok plugin](https://github.com/apprenticeharper/DeDRM_tools/releases/download/v7.2.1/DeDRM_tools_7.2.1.zip) DRM tools

## Configuration
### Network drive
* My Computer
* Add a network location
* Look up Samba share in Keepass for the server location
* Browse -> raidmirror0
* Enter credentials
### Disabling Search in Start Menu
[Disable windows search](https://www.bennetrichter.de/en/tutorials/windows-10-disable-web-search)
* `Windows Key + R`
* `regedit`
* `HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows`
* Create a new key called `Explorer`
* Create a new `DWORD (32-bit)` value with name `DisableSearchBoxSuggestions` and value `1`
* Save and relogin or reboot

### Setting up PuTTY keys
* alexander - Vagrant
  * Obtain from `Dropbox\Secure Container\20170926_vagrant_private_key\20170926_vagrant_private_key` and load into Truecrypt
  * Save to `C:\Users\Alexander\.vagrant.d\20170926_vagrant_private_key`
* alexander - PuTTY
  * Obtain from `Dropbox\Secure Container\20170926_vagrant_private_key\20160626_vagrant_private_key.ppk"` and load into Truecrypt
    * Save to `C:\Users\Alexander\.vagrant.d\20160626_vagrant_private_key.ppk"`
* vagrant
  * Obtain from `Dropbox\Secure Container\insecure private\insecure_private_key` and load into Truecrypt
  * Save to `C:\Users\Alexander\.vagrant.d\insecure_private_key`
* Sessions via cmd running with Admin rights:
  * Export PuTTY sessions with keys
  ```
  regedit /e "%USERPROFILE%\Desktop\putty-sessions.reg" HKEY_CURRENT_USER\Software\SimonTatham\PuTTY\Sessions
  ```
  * Export PuTTY sessions without keys
  ```
  regedit /e "%USERPROFILE%\Desktop\putty.reg" HKEY_CURRENT_USER\Software\SimonTatham
  ```
  * Import by double-clicking the registry entry or running (obtained from Truecrypt):
  ```
  regedit /i putty-sessions.reg
  regedit /i putty.reg
  ```
### /etc/hosts
See [/etc/hosts](/etc/hosts) in this project

### Local DNS
Update your router to use your dnsmasq server IP `192.168.2.5`
Alternate option
* `Network and Internet Settings`
* `Change adapter options`
* Right-click `properties`
* Unselect `Internet Protocol Version 6`
* Select `Internet Protocol Version 4` and then `Properties` to point to your DNS server

### Static DHCP IP
* Add the MAC address from this machine to the router's DHCP router

### Dev Infrastructure
* Vagrant-Puppet project
  * Use the copy script in dropbox to move debian installers into the project folder
* Infrastructure
  * Copy secrets into salt/srv/salt/pillar/**/secrets.sls
  * Copy installer packages for salt into salt/bin/bash/packages
  * Copy installers used by salt module salt/srv/salt/file/base/offline

## Windows 11 Customisations
* Restore original right-click context menu
  * [https://www.elevenforum.com/t/disable-show-more-options-context-menu-in-windows-11.1589/](https://www.elevenforum.com/t/disable-show-more-options-context-menu-in-windows-11.1589/)
  * Disable for current user
  * `reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve`
  * Logout/Login or restart the machine
* Stop start up services
  * Task Manager > Start up apps > One Drive > Right Click > Disable
  * Task Manager > Start up apps > Microsoft Edge > Right Click > Disable
* Remove hard coded navigation panel in Windows File Explorer
  * Remove Gallery 
  * Remove One Drive
* Remove search in start menu - same as Windows 10
* Power profiles
  * Interesting take on power plans vs power modes in [Windows 11](https://github.com/microsoft/PowerToys/issues/24858) 
  * ~~[PowerSwitcher](https://github.com/petrroll/PowerSwitcher/)~~
    * Open issue [stating it is no longer supported](https://github.com/petrroll/PowerSwitcher/issues/23)
    * Issue where it [only shows one profile](https://github.com/petrroll/PowerSwitcher/issues/35)
* Lockscreen - remove annoying clickable windows
  * Left click start menu
  * Select settings
  * Select personalisation
  * Select Lock Screen
  * Lock Screen Status - None
* Removing recent items from various menus
  * Disable "Recent Items" in Explorer
    * Open Explorer
    * Select the tree dot menu
    * Select Options
    * Unselect  `General > Privacy > Show recently used files`
    * Unselect  `General > Privacy > Show frequently used folder`
* Disable recent items in the Start Menu's "Recommended" section
  * Click the windows icon on the taskbar
  * Right Click -> Settings
  * Turn off -> `Show recently opened items in Start, Jump lists, and File Explorer`
### Windows 11 Troubleshooting
* `This application has been blocked for your protection`
  *  Unknown fix at this time