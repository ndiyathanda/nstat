# Easy system monitor for Linux

## INSTALLATION
```bash
git clone https://github.com/ndiyathanda/nstat.git
cd nstat
make
sudo install -Dm 755 -o root nstat /usr/bin/nstat
sudo install -Dm 644 -o root nstat.sh /usr/share/nstat/nstat.sh
```
## Using AUR
Download pkgbuild then go to the folder with this file.
```bash
makepkg -i
```

## USAGE
```bash
nstat
```

