##################################################################
#
# jetty
#
###################################################################
JETTY_VERSION = 9.0.5.v20130815
JETTY_SITE = http://mirror.cc.columbia.edu/pub/software/eclipse/jetty/stable-9/dist
JETTY_SOURCE = jetty-distribution-$(JETTY_VERSION).tar.gz

define JETTY_INSTALL_STAGING_CMDS
	mkdir -p $(STAGING_DIR)/opt/jetty
	cp -R $(@D)/* $(STAGING_DIR)/opt/jetty
endef

define JETTY_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/opt/jetty
	cp -R $(@D)/* $(TARGET_DIR)/opt/jetty
endef

$(eval $(generic-package))