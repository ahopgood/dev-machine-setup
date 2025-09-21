# Cubic
* When Cubic reaches the virtual console screen, stop.
* Copy our `autoinstall.yaml` to the `custom-disk` directory 
* Resume the wizard from the virtual console screen

## Loading into Virtualbox
* When creating a virtual machine **don't** specify our .iso image.
* Instead create a generic machine:
  * OS: `Linux`
  * OS Distribution: `Ubuntu`
  * OS Version: `Ubuntu (64-bit)`
* Unselect `Proceed with Unattended Installation`
* Finish
* Then add our iso:
  * `Settings`
  * `Storage`
  * `Controller: IDE` > `Empty` > `Choose a disk file`
  * `Live CD/DVD` - IS THIS NEEDED?

### Troubleshooting
If we don't manually load our iso with the steps above we will see the following error:
```
Failed to set the global VirtualBox extra data for key GUI/RecentFolderCD to value {/home/alexander/Cubic}.
Callee RC: NS_ERROR_ABORT (0x80004004)
```