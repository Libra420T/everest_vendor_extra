# Lawnchair
ifeq ($(strip $(TARGET_PREBUILT_LAWNCHAIR_LAUNCHER)),true)
PRODUCT_PACKAGES += \
    Lawnchair \
    LawnchairOverlay \
    Lawnicons

# Lawnchair Launcher
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.quickswitch_lawnchair_shipped=1
else 
# Lawnchair Launcher
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.quickswitch_lawnchair_shipped=0
endif

# Basic call recorder
ifeq ($(strip $(TARGET_PREBUILT_BCR)),true)
PRODUCT_PACKAGES += \
    Bcr
endif

# Themed Icons
$(call inherit-product, vendor/google/overlays/ThemeIcons/config.mk)
