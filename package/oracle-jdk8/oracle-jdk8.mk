################################################################################
#
# oracle-jdk8
#
################################################################################
# arm: http://www.java.net/download/jdk8/archive/b106/binaries/jdk-8-ea-b106-linux-arm-vfp-hflt-04_sep_2013.tar.gz
# x64: http://www.java.net/download/jdk8/archive/b106/binaries/jdk-8-ea-bin-b106-linux-x64-05_sep_2013.tar.gz
# i586: http://www.java.net/download/jdk8/archive/b106/binaries/jdk-8-ea-bin-b106-linux-i586-05_sep_2013.tar.gz

ORACLE_JDK8_VERSION = b106
ORACLE_JDK8_RELEASE_DATE = 04_sep_2013
ORACLE_JDK8_SITE = http://www.java.net/download/jdk8/archive/$(ORACLE_JDK8_VERSION)/binaries
ORACLE_JDK8_SOURCE = jdk-8-ea-$(ORACLE_JDK8_VERSION)-linux-arm-vfp-hflt-$(ORACLE_JDK8_RELEASE_DATE).tar.gz

ORACLE_JDK8_LICENSE = Oracle Binary Code License Agreement

BR2_WGET="wget --passive-ftp -nd --no-cookies --header \"Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com\""

define ORACLE_JDK8_INSTALL_STAGING_CMDS
	mkdir -p $(STAGING_DIR)/usr/java/jdk1.8.0
	cp -R $(@D)/* $(STAGING_DIR)/usr/java/jdk1.8.0
	ln -s /usr/java/jdk1.8.0 $(STAGING_DIR)/usr/java/default
endef

define ORACLE_JDK8_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/java/jdk1.8.0
	cp -R $(@D)/* $(TARGET_DIR)/usr/java/jdk1.8.0
	ln -s /usr/java/jdk1.8.0 $(TARGET_DIR)/usr/java/default
endef

$(eval $(generic-package))
