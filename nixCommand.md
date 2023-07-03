### You should be patient because nix is slow. (Idk why but on my mba 2015 is slow.)
##### Credit from [Nix Reference Manual][] and [MacOS Nix Setup (an alternative to Homebrew)][].
### If you don't use [nix-darwin][], you will have to install packages just like other normal package managers. 
1. Installing a package.
```bash
nix-env -iA nixpkgs.package_name
```

`-i` means install. 

2. Query a package that you can install.
```bash
nix-env -qa package_name 
```

3. Query packages that you **have installed**.
```bash
nix-env -q --installed
```

4. Uninstall the package.
```bash
nix-env --uninstall package_name
```

5. Clean the garbage.
```bash
nix-collect-garbage -d
```

6. Upgrade all the packages
```bash
nix-channel --update
nix-env -u 
```

```bash
nix-env -u --dry-run
(dry run; not doing anything)
```
You can use the command above to find out what packages would be upgraded by `nix-env -u`.

```bash
nix-env -qc
```
This command can let you compare installed versions to what’s available.

7. [Upgrading Nix][] 
```bash
sudo -i sh -c 'nix-channel --update && nix-env -iA nixpkgs.nix && launchctl remove org.nixos.nix-daemon && launchctl load /Library/LaunchDaemons/org.nixos.nix-daemon.plist'
```
8. [Fix Nix on macOS after system update][]
After a macOS update, check `/etc/zshrc`. It should have the codes following: 

```nix
# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
  fi
# End Nix

```
If it were gone, add that back to the bottom of your `/etc/zshrc`. Then it should work. Use `sudo --edit /etc/zshrc` to edit the file.(Mac doesn't have `sudoedit`.)

--- 

### With [nix-darwin][] installed: 

1. When it comes to installing a package, just edit [darwin-configuration.nix][] in `~/.nixpkgs` by default. You can also use the directory you want to use.
2. After editing [darwin-configuration.nix][], run `darwin-rebuild switch`(password needed) to install or uninstall packages.
3. When it comes to updating packages, run :
```bash
nix-channel --update
darwin-rebuild switch
```
4. Show all packages installed by **nix**: 
```
nix-store --query --requisites /run/current-system | cut -d- -f2- | sort | uniq | fzf
```
5. Clean the garbage.
```bash
nix-collect-garbage -d
```
6. Search the package:
```bash
 nix-env -qaA nixpkgs.package_name
```

[Upgrading Nix]: https://nixos.org/manual/nix/stable/installation/upgrading.html
[Nix Reference Manual]: https://nixos.org/manual/nix/stable/installation/upgrading.html
[Fix Nix on macOS after system update]: https://gist.github.com/meeech/0b97a86f235d10bc4e2a1116eec38e7e#check-you-have-nix
[nix-darwin]: https://github.com/LnL7/nix-darwin
[MacOS Nix Setup (an alternative to Homebrew)]: https://wickedchicken.github.io/post/macos-nix-setup/
[darwin-configuration.nix]: https://github.com/tkuwill/Nix-On-MacOS/blob/6a4e241ae6ef933ef120fe7fa4267e6200fefeb3/.nixpkgs/darwin-configuration.nix
