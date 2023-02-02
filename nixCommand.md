### You should be patient because nix is slow. (Idk why but on my mba 2015 is slow.)
##### Credit from [Nix Reference Manual][].
1. Installing a package.
```bash
nix-env -i package_name
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




[Upgrading Nix]: https://nixos.org/manual/nix/stable/installation/upgrading.html
[Nix Reference Manual]: https://nixos.org/manual/nix/stable/installation/upgrading.html
