include $(TOPDIR)/rules.mk

PKG_NAME:=3proxy
PKG_VERSION:=0.9.5
PKG_RELEASE:=20250506

PKG_MAINTAINER:=Vladimir "3APA3A" Dubrovin <3proxy@3proxy.ru>, muziling <lls924@gmail.com>, osnosn <osnosn@not-mail.github.com>
PKG_LICENSE:=GPLv2
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/3proxy/3proxy.git
PKG_SOURCE_VERSION:=dc4e8d3427af1d220ae90698f49a1072748f42f3

PKG_SOURCE_SUBDIR:=$(PKG_NAME)
PKG_SOURCE:=$(PKG_VERSION).tar.gz
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_SOURCE_SUBDIR)

include $(INCLUDE_DIR)/package.mk

define Package/3proxy
	SUBMENU:=Web Servers/Proxies
	SECTION:=net
	CATEGORY:=Network
	TITLE:=3proxy for OpenWRT
	DEPENDS:=+libpthread +libopenssl
endef

define Package/3proxy/description
	3APA3A 3proxy tiny proxy server
endef

define Build/Configure
	$(CP) $(PKG_BUILD_DIR)/Makefile.Linux $(PKG_BUILD_DIR)/Makefile
endef

define Package/$(PKG_NAME)/conffiles
/etc/config/3proxy
/etc/3proxy.cfg
endef

define Package/3proxy/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bin/3proxy $(1)/usr/bin/3proxy
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,3proxy))

