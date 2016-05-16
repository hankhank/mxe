# This file is part of MXE.
# See index.html for further information.

PKG             := capnproto
$(PKG)_VERSION  := 0.5.3
$(PKG)_CHECKSUM := cdb17c792493bdcd4a24bcd196eb09f70ee64c83a3eccb0bc6534ff560536afb
$(PKG)_FILE     := $(PKG)-c++-$($(PKG)_VERSION).tar.gz
$(PKG)_URL      := https://capnproto.org/$($(PKG)_FILE)
$(PKG)_DEPS     := gcc glib 

define $(PKG)_UPDATE
    $(call MXE_GET_GITHUB_TAGS, GNOME/libsoup)
endef

define $(PKG)_BUILD

    mkdir '$(1).build'

    cd '$(1).build' && \
		cmake '../$(PKG)-c++-$($(PKG)_VERSION)' \
        -DCMAKE_TOOLCHAIN_FILE='$(CMAKE_TOOLCHAIN_FILE)' \
		-DBUILD_TESTING=OFF

    $(MAKE) -C  '$(1).build' -j '$(JOBS)' capnp capnpc
    $(MAKE) -C '$(1).build' -j 1 install

endef
