# systrayicon
Adapting the systrayicon source code to build a package for use in MiniOS Flux (a Slax clone from the MiniOS team).

# building
```sh
git clone https://github.com/minios-linux/systrayicon.git
mv xlunch-slax systrayicon-1.0
cd systrayicon-1.0
dh_make --createorig -s -y
dpkg-buildpackage -rfakeroot -uc -us
```
