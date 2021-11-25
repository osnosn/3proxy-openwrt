3proxy running on Openwrt/LEDE
===

* 3proxy-0.9-devel-20180704   
  clone from https://github.com/muziling/3proxy-openwrt.git   
  The successfully compiled ipk package is installed in openwrt. There is only one executable "/usr/bin/3proxy".  
* 3proxy-0.8.13   
  copied from https://github.com/wenzhuoz/3proxy-openwrt   
  and fix it.  
  The successfully compiled ipk package is installed in openwrt. There is only one executable "/usr/bin/3proxy".  
* 3proxy-0.9.3   
  copied from https://github.com/lunatickochiya/3proxy-openwrt   
  The successfully compiled ipk package is installed in openwrt. There is only one executable "/usr/bin/3proxy".  
* 3proxy-0.9.4   
  The successfully compiled ipk package is installed in openwrt. There is only one executable "/usr/bin/3proxy".  

编译/Compile
---

```bash
# Using the SDK to cross compile packages
cd openwrt
git clone https://github.com/osnosn/3proxy-openwrt.git package/3proxy 
# OR
#git clone https://github.com/osnosn/3proxy-openwrt.git feeds/packages/net/3proxy
cd  package/3proxy
#git checkout v0.9-devel
#git checkout v0.8.13
#git checkout v0.9.3
git checkout v0.9.4
cd  ../../
rm -rf tmp/

./scripts/feeds update -a
./scripts/feeds install -a

make menuconfig
# find it in "Network" -> "Web Servers/Proxies" -> "3proxy"
make package/3proxy/compile V=s
# found ipk in bin/packages/...../base/
#   OR in bin/packages/...../packages/
```
