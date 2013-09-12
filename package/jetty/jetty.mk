##################################################################
#
# jetty
#
###################################################################
JETTY_VERSION = 9.0.5.v20130815
JETTY_SITE = http://mirror.cc.columbia.edu/pub/software/eclipse/jetty/stable-9/dist
JETTY_SOURCE = jetty-distribution-$(JETTY_VERSION).tar.gz

define JETTY_INSTALL_STAGING_CMDS
	$(INSTALL) -m 755 -d $(STAGING_DIR)/opt/jetty
	cp -R $(@D)/* $(STAGING_DIR)/opt/jetty
	$(INSTALL) -m 755 $(@D)/bin/jetty.sh $(STAGING_DIR)/etc/init.d/S90jetty
	$(INSTALL) -m 755 -d $(STAGING_DIR)/etc/default
	$(INSTALL) -m 644 package/jetty/jetty.default $(STAGING_DIR)/etc/default/jetty
endef

define JETTY_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -d $(TARGET_DIR)/opt/jetty
	cp -R $(@D)/* $(TARGET_DIR)/opt/jetty
	$(INSTALL) -m 755 $(@D)/bin/jetty.sh $(TARGET_DIR)/etc/init.d/S90jetty
	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/default
	$(INSTALL) -m 644 package/jetty/jetty.default $(TARGET_DIR)/etc/default/jetty
endef

define JETTY_USERS
	jetty -1 jetty -1 * /opt/jetty - -
endef

$(eval $(generic-package))