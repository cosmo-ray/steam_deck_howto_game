# Steam Deck Stuff



### Baldur's Gate mod:
- download weidu https://github.com/WeiDUorg/weidu and extract it
- export path to weidu directory (export PATH=$PATH:<WEIDU_PATH>)
- (if SOD DLC installed)download that, https://github.com/ScottBrooks/modmerge/releases, extract it in weido directory 
- move whole BG directoty content out of it, use `chattr +F BG_DIR`, and, move all content back in the directory
- (if SOD DLC installed) use modmerge before installing mod
- you can now use weidu to install other mods :)

### fallout 2 restauration patch

*from this site https://falloutmods.fandom.com/wiki/F2RP_Technical_Info#WINE*

- Install Fallout 2 (in steam)
- Install Restauration Patch (using desktop mode)
- WINEDLLOVERRIDES="ddraw.dll=n" %command% (fix the bug about city stuff)

