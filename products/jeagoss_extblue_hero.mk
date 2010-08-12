# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_hero.mk)

# Extremely Blue build time theming vendor setup
# Add Extremely Blue Overrides
PRODUCT_NAME := jeagoss_extblue_hero
PRODUCT_PACKAGE_OVERLAYS := vendor/jeagoss_extblue/overlay/common

PRODUCT_COPY_FILES +=  \
    vendor/jeagoss_extblue/proprietary/ThemeDefaults.apk:system/app/ThemeDefaults.apk
PRODUCT_COPY_FILES +=  \
    vendor/jeagoss_extblue/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh
