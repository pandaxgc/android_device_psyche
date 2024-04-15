LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    Camera2 \
    Drive \
    GoogleCamera \
    Music \
    PrebuiltGmail \
    Gmail \
    Snap \
    Snap2 \
    SnapdragonCamera \
    YouTube \
    YouTubeMusicPrebuilt \
    DevCamera \
    GooglePrintRecommendationService \
    Chrome \
    Chrome-Stub \
    Gallery2 \
    Gallery \
    Music \
    Browser2 \
    Recorder \
    Jelly \
    Jellyfish \
    Etar \
    Glimpse \
    MusicPlayerGO \
    arcore \
    Eleven \
    Maps \
    WellbeingPrebuilt \
    SafetyHubPrebuilt \
    PrebuiltGmail \
    PlayAutoInstallConfig \
    Flash \
    LatinIME \
    Aperture
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
