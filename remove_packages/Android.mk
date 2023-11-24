LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := NfcNci AudioFX CalculatorGooglePrebuilt CalendarGooglePrebuilt Drive GoogleFeedback GooglePrintRecommendationService GoogleTTS Maps Photos PrebuiltDeskClockGoogle PrebuiltGmail TagGoogle talkback Velvet AndroidAuto YouTube
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
