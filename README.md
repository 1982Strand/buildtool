MIUI Build Tool for the Galaxy S3

Created by Dan Strand 2012

Only for personal use

NOTE: To patch aapt, use following commands when building from source, after applying aapt_miui_patch.diff to /android_source/frameworks/base/tools/aapt/AaptAssets.ccp

. build/envsetup.sh

lunch sdk-eng

make aapt (for Linux)

make PRODUCT-sdk-win_sdk
