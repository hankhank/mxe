# This file is part of MXE.
# See index.html for further information.

PKG             := ueye
$(PKG)_IGNORE   :=
$(PKG)_VERSION  := 4.40.1_32_WHQL
$(PKG)_CHECKSUM := 64a104f24a383a5b1d307c02aac67dbc656c1599
$(PKG)_SUBDIR   := $(PKG)-$($(PKG)_VERSION)
$(PKG)_FILE     := $(PKG)-$($(PKG)_VERSION).zip
$(PKG)_URL      := 
$(PKG)_DEPS     := 

define $(PKG)_BUILD
    cd $(1) && $(INSTALL) include/* $(PREFIX)/$(TARGET)/include && \
	$(INSTALL) lib/* $(PREFIX)/$(TARGET)/lib
endef
