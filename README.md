3proxy running on Openwrt/LEDE
===

* 3proxy-0.9-devel-20180704   
  clone from https://github.com/muziling/3proxy-openwrt.git   
  The successfully compiled ipk package is installed in openwrt. There is only one executable "/usr/bin/3proxy".  
* 3proxy-0.8.13   
  copied from https://github.com/wenzhuoz/3proxy-openwrt   
  The successfully compiled ipk package is installed in openwrt. There is only one executable "/usr/bin/3proxy".  

编译/Compile
---

```bash
cd openwrt
git clone https://github.com/osnosn/3proxy-openwrt.git feeds/packages/net/3proxy
cd  feeds/packages/net/3proxy
#git checkout v0.9-devel
git checkout v0.8.13
cd  ../../../../
rm -rf tmp/

./scripts/feeds update -a
./scripts/feeds install -a

make menuconfig
# find it in "Network" -> "Web Servers/Proxies" -> "3proxy"
make package/3proxy/compile
# found ipk in bin/packages/...../packages/
```
