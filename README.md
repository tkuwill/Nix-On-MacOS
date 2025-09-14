# Nix-On-MacOS
dotfiles on macOS & a memo of the commands used for nix on macOS

---

- [darwin-configuration.nix][] is the file equivalent to **configuration.nix** on NixOS. If you want to use that feature on macOS, see [nix-darwin][].
- Use [Home-manager][] to config [zsh][], [bat][], [tmux][] and [newsboat][] and install packages.
- Also, you can take a look at [MacOS Nix Setup (an alternative to Homebrew)][].
- You can see the command in [nixCommand.md][].
- Here is [the skills of using vim and zsh][].
- Here is the manual for me to set up a brand new mac in the future.
- I also put my `tmux.conf`, `.zshrc` and `.vimrc` here.
- `reattach-to-user-namespace` should be installed in order to communicate with system clipboard when in `tmux`. 
- Use [Google日本語入力][] for inputting Japanese on my macOS.
- Use [Rime鼠鬚管][] for inputting Chinese. I mainly use [地球拼音][], but have [朙月拼音][] as a fallback.
---
## iiNA special config
Because `yt-dlp` is installed at `/run/current-system/sw/bin/yt-dlp` by `nix-darwin`, you would have to make a `soft-link` in `/usr/local/bin` to let **iiNA** use it.
```bash
cd /usr/local/bin

ln -s /run/current-system/sw/bin/yt-dlp /usr/bin/youtube-dl
```
## Needed softwares

- ~~[Amethyst][]: A tiling window manager for macOS.~~
- [Alfred][]: A spotlight's substitute.
- [Apple Configurator][]: An app for configuring iOS devices on macOS.
- [AppCleaner][]: A small app which allows you to thoroughly uninstall unwanted apps.
- ~~[Amphetamine][]: Powerful keep-awake utility.~~
- [BetterZip][]: For preview archived files in Finder (Free version just work)
- [BetterTouchTool][]: An app that allows you to customize various input devices on your Mac.
- [Firefox][]: A fallback browser.
- [Gestimer][]: A timer on the menubar.
- ~~[Hidden Bar][]: Hide the icons on the menubar.~~
- [iina][]: Video player.
- [Itsycal][]: Itsycal is a tiny menu bar calendar which has a lot of features.
- ~~[KeepingYouAwake][]: A small keep-awake utility.~~
- [Keka][]: the macOS file archiver.
- [Line][]: A chatting app.
- [Maccy][]: A powerful clipboard manager.
- [Macs Fan Control][]: Control the fan in mac.
- ~~[MenuBar Stats][]: the monitor of mac.~~
- [Microsoft Office][]: Just Office.
- [NTFS for Mac][]: as its name.
- [OnlySwitch][]: ⚙️ All-in-One menu bar app, hide 💻MacBook Pro's notch, dark mode, AirPods, Shortcuts
- ~~[Spaceman][]: An application for macOS that allows you to view your Spaces / Virtual Desktops in the menu bar.~~
- ~~[SpaceId][]: macOS space indicator.~~
- [Yoink][]: Improved Drag and Drop.
- ~~[AdGuard for Safari][]: XD.~~
- ~~[Vimari][]: A Safari extension that provides vim style keyboard based navigation.~~

## Want to buy or Download when getting a new Mac in the future.

- [Bartender][]: Take control of your menu bar.
- ~~[MacUpdater][]: An application that can scan your Mac and display which of the apps that you have installed are not up-to-date.~~ MacUpdater will stop develop at 2026/1/1.

## Note at 2025/5/1

IDK why nix-darwin is dead on my MacBook Air. So I removed it. Now I will just update nix by command below.
```
sudo nix-env --install --file '<nixpkgs>' --attr nix cacert -I nixpkgs=channel:nixpkgs-unstable
sudo launchctl remove org.nixos.nix-daemon
sudo launchctl load /Library/LaunchDaemons/org.nixos.nix-daemon.plist
```

You can also update `Nix` by 
```
sudo -i nix upgrade-nix
```

Then check the version of `Nix` by 

```
nix --version
```

And only install packages by `home-manager`.


[Alfred]: https://www.alfredapp.com
[Vimari]: https://github.com/televator-apps/vimari
[AdGuard for Safari]: https://adguard.com/zh_tw/adguard-safari/overview.html
[Firefox]: https://www.mozilla.org/zh-TW/firefox/new/
[Microsoft Office]: https://www.microsoft.com/zh-tw/
[Maccy]: https://github.com/p0deje/Maccy
[Line]: https://line.me/zh-hant/
[Gestimer]: https://maddin.io/gestimer/
[BetterZip]: https://macitbetter.com
[Bartender]: https://www.macbartender.com
[KeepingYouAwake]: https://keepingyouawake.app
[SpaceId]: https://github.com/dshnkao/SpaceId
[Apple Configurator]: https://apps.apple.com/us/app/apple-configurator/id1037126344?mt=12
[the skills of using vim and zsh]: https://github.com/tkuwill/Nix-On-MacOS/blob/master/skills.md
[MacUpdater]: https://www.corecode.io/index.html
[Yoink]: https://apps.apple.com/tw/app/yoink-improved-drag-and-drop/id457622435?mt=12
[NTFS for Mac]: https://www.paragon-software.com/zh/home/ntfs-%20mac%20/
[Macs Fan Control]: https://crystalidea.com/macs-fan-control
[MenuBar Stats]: https://www.seense.com/menubarstats/
[Keka]: https://www.keka.io/en/
[iina]: https://iina.io/
[Hidden Bar]: https://apps.apple.com/tw/app/hidden-bar/id1452453066?mt=12
[BetterTouchTool]: https://folivora.ai/
[AppCleaner]: https://freemacsoft.net/appcleaner/
[Amphetamine]: https://apps.apple.com/us/app/amphetamine/id937984704?mt=12
[Itsycal]: https://www.mowglii.com/itsycal/
[Spaceman]: https://github.com/Jaysce/Spaceman
[Amethyst]: https://github.com/ianyh/Amethyst
[nixCommand.md]: https://github.com/tkuwill/Nix-On-MacOS/blob/master/nixCommand.md
[darwin-configuration.nix]: https://github.com/tkuwill/Nix-On-MacOS/blob/6a4e241ae6ef933ef120fe7fa4267e6200fefeb3/.nixpkgs/darwin-configuration.nix
[nix-darwin]: https://github.com/LnL7/nix-darwin
[MacOS Nix Setup (an alternative to Homebrew)]: https://wickedchicken.github.io/post/macos-nix-setup/
[Google日本語入力]: https://www.google.co.jp/ime/
[Rime鼠鬚管]: https://rime.im/download/
[地球拼音]: https://gist.github.com/lotem/2309739#file-default-custom-yaml-L12
[朙月拼音]: https://gist.github.com/lotem/2309739#file-default-custom-yaml-L11
[Home-manager]: https://nix-community.github.io/home-manager/index.html
[zsh]: https://github.com/tkuwill/Nix-On-MacOS/blob/master/.config/home-manager/zsh.nix
[bat]: https://github.com/tkuwill/Nix-On-MacOS/blob/master/.config/home-manager/bat.nix
[tmux]: https://github.com/tkuwill/Nix-On-MacOS/blob/master/.config/home-manager/tmux.nix
[newsboat]: https://github.com/tkuwill/Nix-On-MacOS/blob/master/.config/home-manager/newsboat.nix
[OnlySwitch]: https://github.com/jacklandrin/OnlySwitch 
