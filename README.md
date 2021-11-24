3proxy running on Openwrt/LEDE
===

3proxy-0.8.10   
clone from https://github.com/muziling/3proxy-openwrt.git  

编译/Compile
---

```bash
cd openwrt
git clone https://github.com/muziling/3proxy-openwrt.git feeds/packages/net/3proxy
rm -rf tmp/

./scripts/feeds update -a
./scripts/feeds install -a

make menuconfig
make package/3proxy/compile
```
