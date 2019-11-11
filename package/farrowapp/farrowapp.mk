################################################################################
#
# farrowapp
#
################################################################################

FARROWAPP_VERSION = 1.0
FARROWAPP_SOURCE = farrowapp-$(FARROWAPP_VERSION).tar.gz
FARROWAPP_SITE = file:///work
#FARROWAPP_INSTALL_STAGING = NO
#FARROWAPP_INSTALL_TARGET = YES
#FARROWAPP_CONF_OPTS = -DBUILD_DEMOS=ON
FARROWAPP_DEPENDENCIES = opencv3
$(eval $(cmake-package))
