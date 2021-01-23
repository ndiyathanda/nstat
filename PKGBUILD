# Maintainer: Michal Zbiegien 
pkgname=nstat
pkgver=0.01
pkgrel=1
pkgdesc="Easy linux resource monitor"
url="https://github.com/ndiyathanda/nstat"
license=('GPL')
depends=("sysstat")
makedepends=("make")
conflicts=()
arch=('x86_64')
replaces=()
source=("git+https://github.com/ndiyathanda/nstat")
md5sums=('SKIP')
build() {
  cd "$srcdir/$pkgname"
  make
}
package() {
  cd "$srcdir/$pkgname"
  install -Dm 755 -o root nstat $pkgdir"/usr/bin/nstat"
  install -Dm 644 -o root nstat.sh $pkgdir"/usr/share/nstat/nstat.sh"
}
