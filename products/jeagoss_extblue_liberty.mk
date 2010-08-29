# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_liberty.mk)

# Extremely Blue build time theming vendor setup
# Add Extremely Blue Overrides
PRODUCT_NAME := jeagoss_extblue_liberty

# Reorder Product Overlays to properly include theme specific stuff before
# anything else
PRODUCT_PACKAGE_OVERLAYS := vendor/jeagoss_extblue/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common

PRODUCT_COPY_FILES +=  \
    vendor/jeagoss_extblue/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh \
    vendor/jeagoss_extblue/proprietary/ThemeDefaults.apk:system/app/ThemeDefaults.apk
