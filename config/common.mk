# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# init.d support
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/thinkingbridge/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/etc/init.local.rc:root/init.thinkingbridge.rc

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/thinkingbridge/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# T-Mobile theme engine
include vendor/thinkingbridge/config/themes_common.mk

# Required TB packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME \
    SpareParts \
    Superuser \
    su

# Optional TB packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic

# Custom TB packages
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# Extra tools in TB
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/common

# Rom version
TB_VERSION := build3
TB_VERSION := build3

PRODUCT_PROPERTY_OVERRIDES += \
  ro.tb.version=$(TB_VERSION) \
  ro.modversion=$(TB_VERSION)
