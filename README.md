Easy system monitor for Linux

INSTALLATION

git clone https://github.com/ndiyathanda/nstat.git
cd nstat
make
sudo install -Dm 755 -o root nstat /usr/bin/nstat
sudo install -Dm 644 -o root nstat.sh /usr/share/nstat/nstat.sh

USAGE

nstat
