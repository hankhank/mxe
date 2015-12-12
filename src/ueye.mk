# This file is part of MXE.
# See index.html for further information.

PKG             := ueye
$(PKG)_IGNORE   :=
$(PKG)_VERSION  := 4.40.1_32_WHQL
$(PKG)_CHECKSUM := 288a9e6dc37345a2d4794baee342f10c0617f160
$(PKG)_SUBDIR   := $(PKG)-$($(PKG)_VERSION)
$(PKG)_FILE     := $(PKG)-$($(PKG)_VERSION).zip
$(PKG)_URL      := 
$(PKG)_DEPS     := gcc libusb1

define $(PKG)_BUILD
    cd $(1) && $(INSTALL) include/* $(PREFIX)/$(TARGET)/include && \
	$(INSTALL) lib/* $(PREFIX)/$(TARGET)/lib && \
	$(INSTALL) bin/* $(PREFIX)/$(TARGET)/bin
endef
