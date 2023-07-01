# Nix-On-MacOS
dotfiles on macOS & a memo of the commands used for nix on macOS

---

- [darwin-configuration.nix][] is the file equivalent to **configuration.nix** on NixOS. If you want to use that feature on macOS, see [nix-darwin][].
- Also, you can take a look at [MacOS Nix Setup (an alternative to Homebrew)][].
- You can see the command in [nixCommand.md][].
- Here is the manual for me to set up a brand new mac in the future.
- I also put my `tmux.conf`, `.zshrc` and `.vimrc` here.
- `reattach-to-user-namespace` should be installed in order to communicate with system clipboard when in `tmux`. 
- Use [Google日本語入力][] for inputting Japanese on my macOS.
- Use [Rime鼠鬚管][] for inputting Chinese. I mainly use [地球拼音][], but have [朙月拼音][] as a fallback.
---

## Needed softwares

- [Amethyst][]: A tiling window manager for macOS.
- [Spaceman][]: An application for macOS that allows you to view your Spaces / Virtual Desktops in the menu bar.
- [Itsycal][]: Itsycal is a tiny menu bar calendar which has a lot of features.
- [Amphetamine][]: Powerful keep-awake utility.
- [AppCleaner][]: A small app which allows you to thoroughly uninstall unwanted apps.
- [BetterTouchTool][]: An app that allows you to customize various input devices on your Mac.
- [Hidden Bar][]: Hide the icons on the menubar.
- [iina][]: Video player.
- [Keka][]: the macOS file archiver.
- [MenuBar Stats][]: the monitor of mac.
- [Macs Fan Control][]: Control the fan in mac.
- [NTFS for Mac][]: as its name.
- [Yoink][]: Improved Drag and Drop.

## Want to buy

- [MacUpdater][]: An application that can scan your Mac and display which of the apps that you have installed are not up-to-date.

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

