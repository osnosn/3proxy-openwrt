3proxy running on Openwrt/LEDE
===

The successfully compiled ipk package is installed in openwrt.    
There is only one executable "/usr/bin/3proxy".   
编译后的ipk，安装到openwrt内，只有一个 "/usr/bin/3proxy" 的执行文件。   
需要自己写配置文件，启动脚本。  
* 3proxy-0.9-devel-20180704 (v0.9-devel)   
  clone from https://github.com/muziling/3proxy-openwrt.git   
* 3proxy-0.8.13 (v0.8.13)   
  copied from https://github.com/wenzhuoz/3proxy-openwrt   
  and fix it.  
* 3proxy-0.9.3 (v0.9.3)   
  copied from https://github.com/lunatickochiya/3proxy-openwrt   
* 3proxy-0.9.4 (v0.9.4)   
* 3proxy-0.9.4 (v0.9.4-20220831)   
* 3proxy-0.9.4 (v0.9.4-20231011)   

编译/Compile
---

```bash
# Using the SDK to cross compile packages
cd openwrt
git clone --depth 1 https://github.com/osnosn/3proxy-openwrt.git package/3proxy 
#git clone -b v0.9.4-20220831 --depth 1 https://github.com/osnosn/3proxy-openwrt.git package/3proxy 
rm -rf tmp/
./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig
# find it in "Network" -> "Web Servers/Proxies" -> "3proxy"
make package/3proxy/compile V=s
# found ipk in bin/packages/.....
```
OR
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
#git checkout v0.9.4
git checkout v0.9.4-20220831
cd  ../../
rm -rf tmp/
./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig
# find it in "Network" -> "Web Servers/Proxies" -> "3proxy"
make package/3proxy/compile V=s
# found ipk in bin/packages/.....
```
