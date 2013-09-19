##################################################################
#
# obd2
#
###################################################################
OBD2_VERSION = 0.0.1
OBD2_SITE = https://jawsbuild.base2d.com/artifactory/libs-release-local/com/base2s/crank/obd2-in-car-service/$(OBD2_VERSION)
OBD2_SOURCE = obd2-in-car-service-$(OBD2_VERSION).war

OBD2_REDISTRIBUTE = NO

BR2_WGET="wget --passive-ftp -nd --no-check-certificate --user=jenkins --password=\{DESede\}/WTPUvjfuys="

define OBD2_EXTRACT_CMDS
	unzip $(DL_DIR)/$(OBD2_SOURCE) -d $(BUILD_DIR)
endef

$(eval $(generic-package))

