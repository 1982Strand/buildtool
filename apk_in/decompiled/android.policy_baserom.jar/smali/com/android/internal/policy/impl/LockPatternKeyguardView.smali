.class public Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/KeyguardViewBase;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$GoToUnlockScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.android.phone.EmergencyDialer.LIST"

.field private static final DEBUG:Z = true

.field static final DEBUG_CONFIGURATION:Z = false

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final EXTERNAL_STORAGE_FORMAT_DONE:I = 0x6

.field private static final EXTERNAL_STORAGE_SD_PATH:Ljava/lang/String; = "/mnt/extSdCard"

.field private static final EXTERNAL_STORAGE_STATUS_BAD_REMOVAL:I = 0x1

.field private static final EXTERNAL_STORAGE_STATUS_MEDIA_CHECKING:I = 0x2

.field private static final EXTERNAL_STORAGE_STATUS_MEDIA_REMOVED:I = 0x3

.field private static final EXTERNAL_STORAGE_STATUS_MEDIA_SHARED:I = 0x4

.field private static final EXTERNAL_STORAGE_STATUS_MOUNTED:I = 0x0

.field private static final EXTERNAL_STORAGE_STATUS_UNKNOWN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LockPatternKeyguardView"

.field private static final TRANSPORT_USERACTIVITY_TIMEOUT:I = 0x2710

.field private static mFormatExtStorageThread:Ljava/lang/Thread;

.field public static mSwipeLockShowingBeforeTimeout:Z

.field private static sIsFirstAppearanceAfterBoot:Z


# instance fields
.field private final BIOMETRIC_AREA_EMERGENCY_DIALER_TIMEOUT:I

.field private mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

.field private final mBiometricUnlockStartupLock:Ljava/lang/Object;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mEnableFallback:Z

.field private mEnableSparePassword:Z

.field private mExternalSdCardPath:Ljava/lang/String;

.field private mForgotPattern:Z

.field private mHasDialog:Z

.field mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mIsTalkbackDrvModeOn:Z

.field private mIsVerifyUnlockOnly:Z

.field private mIsVoiceUnlockOn:Z

.field private mIsWaterRipple:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreen:Landroid/view/View;

.field private mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mPluggedIn:Z

.field private mRecreateRunnable:Ljava/lang/Runnable;

.field private mRequiresSim:Z

.field private mResetProgressDialog:Landroid/app/ProgressDialog;

.field private mResetWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSavedState:Landroid/os/Parcelable;

.field private volatile mScreenOn:Z

.field private mShowLockBeforeUnlock:Z

.field private mShowUnlockWithCircle:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSuppressBiometricUnlock:Z

.field private mTransportControlView:Lcom/android/internal/widget/TransportControlView;

.field private mUnlockScreen:Landroid/view/View;

.field private mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

.field private mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

.field private mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

.field private final mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

.field private mWindowFocused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->sIsFirstAppearanceAfterBoot:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .locals 9
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewBase;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlockStartupLock:Ljava/lang/Object;

    const/16 v6, 0x3e8

    iput v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->BIOMETRIC_AREA_EMERGENCY_DIALER_TIMEOUT:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasDialog:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTalkbackDrvModeOn:Z

    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    new-instance v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsWaterRipple:Z

    new-instance v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    new-instance v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    new-instance v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mExternalSdCardPath:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMountService:Landroid/os/storage/IMountService;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageListener:Landroid/os/storage/StorageEventListener;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    const-string v6, "keyguard.no_require_sim"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    sget-boolean v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->sIsFirstAppearanceAfterBoot:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->sIsFirstAppearanceAfterBoot:Z

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPluggedIn:Z

    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerGoToUnlockScreenCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$GoToUnlockScreenCallback;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setFocusableInTouchMode(Z)V

    const/high16 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setDescendantFocusability(I)V

    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "reset keyguard"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_face_with_voice"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    const-string v6, "LockPatternKeyguardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsVoiceUnlockOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, accesibilityService:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v6, "(?i).*talkback.*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTalkbackDrvModeOn:Z

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTalkbackDrvModeOn:Z

    if-eqz v6, :cond_6

    const-string v6, "LockPatternKeyguardView"

    const-string v7, "tb on"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTalkbackDrvModeOn:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "driving_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, drivingMode:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "driving_mode_unlock_screen_contents"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, unlockDrivingMode:I
    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTalkbackDrvModeOn:Z

    const-string v6, "LockPatternKeyguardView"

    const-string v7, "drv mode on"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #accesibilityService:Ljava/lang/String;
    .end local v1           #drivingMode:I
    .end local v5           #unlockDrivingMode:I
    :cond_1
    :goto_2
    const-string v6, "LockPatternKeyguardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsTalkbackDrvModeOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTalkbackDrvModeOn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isDeviceDisabledForMaxFailedAttemptSet()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeEnableFallback(Landroid/content/Context;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v6

    sget-object v7, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v6, v7, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v6

    sget-object v7, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v6, v7, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v2

    .local v2, failedAttempts:I
    const-string v6, "LockPatternKeyguardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportFailedPatternAttempt: #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (enableFallback="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v3

    .local v3, failedAttemptsBeforeWipe:I
    if-lez v3, :cond_8

    sub-int v4, v3, v2

    .local v4, remainingBeforeWipe:I
    :goto_3
    if-gtz v4, :cond_4

    const-string v6, "LockPatternKeyguardView"

    const-string v7, "Too many unlock attempts; device will be wiped!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V

    .end local v2           #failedAttempts:I
    .end local v3           #failedAttemptsBeforeWipe:I
    .end local v4           #remainingBeforeWipe:I
    :cond_4
    return-void

    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .restart local v0       #accesibilityService:Ljava/lang/String;
    :cond_6
    const-string v6, "LockPatternKeyguardView"

    const-string v7, "tb off"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .restart local v1       #drivingMode:I
    .restart local v5       #unlockDrivingMode:I
    :cond_7
    const-string v6, "LockPatternKeyguardView"

    const-string v7, "drv mode off"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v0           #accesibilityService:Ljava/lang/String;
    .end local v1           #drivingMode:I
    .end local v5           #unlockDrivingMode:I
    .restart local v2       #failedAttempts:I
    .restart local v3       #failedAttemptsBeforeWipe:I
    :cond_8
    const v4, 0x7fffffff

    goto :goto_3
.end method

.method private VoIPIsInUse()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, bVoIP_InUse:Z
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .local v2, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v2           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_0
    :goto_0
    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bVoIP_InUse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "VoIPIsInUse() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->VoIPIsInUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtWipeDialog(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showRecovery()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPluggedIn:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->performWipeout()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mExternalSdCardPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/Thread;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3002(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->formatExtStorage()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    return v0
.end method

.method private checkUnlockModeInSignatureLock()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 5

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .local v0, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockModeForFallback()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account unlock and back key: re-create pattern unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature lock mode, but failed to unlock within fallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v1, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockModeForFallback()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No previous unlock screen, get unlock mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteInternalSd()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .local v0, del:Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteSdCardFiles(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v2, "LockPatternKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished internal SD card cleaning. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LockPatternKeyguardView"

    const-string v3, "deleteSdCardFiles exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static deleteSdCardFiles(Ljava/io/File;)Z
    .locals 12
    .parameter "file"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x2

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v6, "LockPatternKeyguardView"

    const-string v8, "file not exists()) flase"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    const-string v8, "LockPatternKeyguardView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_1

    const-string v6, "LockPatternKeyguardView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " file null false : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "sdcard"

    .local v2, mSdCard:Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, success:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v0

    if-ge v1, v8, :cond_c

    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .local v3, path:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, pathlist:[Ljava/lang/String;
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v4, v11

    const-string v9, "apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_2
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    aget-object v8, v4, v11

    const-string v9, "SamsungDic"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_3
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, v4, v11

    const-string v9, "ReadersHub"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_4
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    aget-object v8, v4, v11

    const-string v9, "Tmap3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_5
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    aget-object v8, v4, v11

    const-string v9, ".version"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    aget-object v8, v4, v11

    const-string v9, ".filesize"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    const-string v8, "LockPatternKeyguardView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FactoryReset Skipping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v1

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v5, :cond_9

    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteSdCardFiles(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v5, v6

    :goto_3
    goto :goto_2

    :cond_9
    move v5, v7

    goto :goto_3

    :cond_a
    if-eqz v5, :cond_b

    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_b

    move v5, v6

    :goto_4
    goto :goto_2

    :cond_b
    move v5, v7

    goto :goto_4

    .end local v3           #path:Ljava/lang/String;
    .end local v4           #pathlist:[Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move v7, v5

    goto/16 :goto_0
.end method

.method private formatExtStorage()I
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    const-string v7, "LockPatternKeyguardView"

    const-string v8, "formatExtStorage+++"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v3, ""

    .local v3, status:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mExternalSdCardPath:Ljava/lang/String;

    if-nez v7, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getExtStoragePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mExternalSdCardPath:Ljava/lang/String;

    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mExternalSdCardPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_3
    :goto_1
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    :try_start_1
    const-string v5, "LockPatternKeyguardView"

    const-string v7, "unmounting Volume..."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mExternalSdCardPath:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mExternalSdCardPath:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v1, v5, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    :cond_5
    const-string v5, "LockPatternKeyguardView"

    const-string v7, "unmounting Volume done!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v6

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, rex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "LockPatternKeyguardView"

    const-string v8, "Failed while getting status of externalSdCardPath"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #rex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v5, "LockPatternKeyguardView"

    const-string v6, "Failed talking with mount service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    const-string v6, "nofs"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "unmounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "unmountable"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "formatting Volume..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mExternalSdCardPath:Ljava/lang/String;

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    const-string v4, "LockPatternKeyguardView"

    const-string v5, "formatting Volume done!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v4, "LockPatternKeyguardView"

    const-string v5, "formatVolume done! Calling deleteInternalSd() and rebootWipeUserData()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteInternalSd()Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->rebootWipeUserData()V

    :goto_2
    const/4 v4, 0x6

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "LockPatternKeyguardView"

    const-string v5, "formatVolume done! Calling deleteInternalSd() and rebootWipeUserData()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteInternalSd()Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->rebootWipeUserData()V

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    const-string v5, "LockPatternKeyguardView"

    const-string v6, "formatVolume done! Calling deleteInternalSd() and rebootWipeUserData()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteInternalSd()Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->rebootWipeUserData()V

    throw v4

    :cond_8
    const-string v6, "bad_removal"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v4, "LockPatternKeyguardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_0

    :cond_9
    const-string v5, "checking"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_a
    const-string v5, "removed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_b
    const-string v5, "shared"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "LockPatternKeyguardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_c
    const-string v5, "LockPatternKeyguardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getExtStoragePath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .local v2, path:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v4

    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, v4, v0

    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    .local v5, subsystem:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v6, "LockPatternKeyguardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getExtStoragePath()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v5           #subsystem:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "with_circle"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowUnlockWithCircle:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lockscreen_wallpaper"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v0, v6

    .local v0, isLiveWallpaper:Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110048

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .local v2, isWaterRippleConfig:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lockscreen_ripple_effect"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v1, v5

    .local v1, isRippleEffect:Z
    :goto_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    :goto_3
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsWaterRipple:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .local v3, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    :goto_4
    return-object v4

    .end local v0           #isLiveWallpaper:Z
    .end local v1           #isRippleEffect:Z
    .end local v2           #isWaterRippleConfig:Z
    .end local v3           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    .restart local v0       #isLiveWallpaper:Z
    .restart local v2       #isWaterRippleConfig:Z
    :cond_3
    move v1, v6

    goto :goto_2

    .restart local v1       #isRippleEffect:Z
    :cond_4
    move v5, v6

    goto :goto_3

    .restart local v3       #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowUnlockWithCircle:Z

    if-eqz v4, :cond_7

    :cond_6
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_4
.end method

.method private getResetProgressDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v2, 0x1040360

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .local v2, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :goto_0
    return-object v0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_1

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isRecoverLockEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Recovery:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPcwLockEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pcw:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unlock mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_4
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_7
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_8
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private getUnlockModeForFallback()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown unlock mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :goto_0
    return-object v0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_1
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private initializeBiometricUnlockView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    .local v8, restartBiometricUnlock:Z
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    move-result v8

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    instance-of v0, v0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->cleanUp()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasDialog:Z

    if-eqz v0, :cond_6

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->useBiometricUnlock()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x1020345

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .local v7, biometricUnlockView:Landroid/view/View;
    if-eqz v7, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTalkbackDrvModeOn:Z

    if-eqz v0, :cond_7

    :cond_3
    new-instance v0, Lcom/android/internal/policy/impl/FaceUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/FaceUnlock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v0, v7}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->show(J)V

    .end local v7           #biometricUnlockView:Landroid/view/View;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v0, :cond_5

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeStartBiometricUnlock()V

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .restart local v7       #biometricUnlockView:Landroid/view/View;
    :cond_7
    new-instance v0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    goto :goto_1

    :cond_8
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Couldn\'t find biometric unlock view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const v0, 0x1020344

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/TransportControlView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-nez v0, :cond_0

    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Couldn\'t find transport control widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    goto :goto_0
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .local v2, lDeviceDisableForMaxFailedAttempt:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .local v3, lMaxNumFailedAttemptForDisable:I
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .local v1, lCurNumFailedAttempts:I
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v1, 0x1

    if-lt v4, v3, :cond_1

    const/4 v2, 0x1

    .end local v1           #lCurNumFailedAttempts:I
    :cond_0
    :goto_0
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .restart local v1       #lCurNumFailedAttempts:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDeviceDisabledForMaxFailedAttemptSet()Z
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v1

    .local v1, lMaxNumFailedAttemptForDisable:I
    const-string v2, "LockPatternKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "max failed attempt for device disable :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .local v1, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .local v0, secure:Z
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_0

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_1

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPcwLockEnabled()Z

    move-result v0

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    goto :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isRecoverLockEnabled()Z

    move-result v0

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;)V

    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->start()V

    return-void
.end method

.method private maybeStartBiometricUnlock()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .local v0, backupIsTimedOut:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTalkbackDrvModeOn:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->start()Z

    .end local v0           #backupIsTimedOut:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #backupIsTimedOut:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->hide()V

    goto :goto_1
.end method

.method private performWipeout()V
    .locals 6

    .prologue
    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SamsungLockScreenProperties.wipeInternalExternalSd() ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->wipeInternalExternalSd()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->wipeInternalExternalSd()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getResetProgressDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    const/4 v2, 0x0

    .local v2, shouldResetRightAway:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mExternalSdCardPath:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getExtStoragePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mExternalSdCardPath:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_1
    :goto_0
    const/4 v1, 0x5

    .local v1, ret:I
    :try_start_0
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "formatExtStorage() "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->formatExtStorage()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "formatExtStorage returns unexpected case. ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". shouldResetRightAway..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :pswitch_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteInternalSd()Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->rebootWipeUserData()V

    .end local v1           #ret:I
    .end local v2           #shouldResetRightAway:Z
    :cond_2
    :goto_2
    return-void

    .restart local v2       #shouldResetRightAway:Z
    :cond_3
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "mStorageManager is null !!. shouldResetRightAway"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    .restart local v1       #ret:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "Exception is caughted. formatExtStorage() "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x5

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ret:I
    .end local v2           #shouldResetRightAway:Z
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "Exception in wiping data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private rebootWipeUserData()V
    .locals 3

    .prologue
    :try_start_0
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "RecoverySystem.rebootWipeUserData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Exception in wiping data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recreateLockScreen()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V
    .locals 2
    .parameter "unlockMode"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private restoreWidgetState()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Restoring widget state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method private saveWidgetState()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Saving widget state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/widget/TransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    const/16 v2, 0x1e

    .local v2, timeoutInSeconds:I
    const/16 v0, 0xf

    .local v0, count:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x104040c

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    const/16 v1, 0x1e

    .local v1, timeoutInSeconds:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v3, 0x104040d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasDialog:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRecovery()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_Recovery_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .local v0, bRecovery:Z
    if-eqz v0, :cond_0

    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Success to set LOCK_RECOVERY_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    const-string v1, "LockPatternKeyguardView"

    const-string v2, "showRecovery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Failed to set LOCK_RECOVERY_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showTimeoutDialog()V
    .locals 8

    .prologue
    const/16 v2, 0x1e

    .local v2, timeoutInSeconds:I
    const v1, 0x1040407

    .local v1, messageId:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v3

    .local v3, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockModeForFallback()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v3

    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_2

    const v1, 0x104040b

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .end local v0           #message:Ljava/lang/String;
    :cond_2
    const v1, 0x1040408

    goto :goto_0
.end method

.method private showWipeDialog(I)V
    .locals 7
    .parameter "attempts"

    .prologue
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v3, 0x104040e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, wipedialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private stuckOnLockScreenBecauseSimMissing()Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    .locals 11
    .parameter "mode"
    .parameter "force"

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-eq p1, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowUnlockWithCircle:Z

    if-eqz v5, :cond_2

    :cond_0
    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-nez v5, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v2

    .local v2, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-eq p1, v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowUnlockWithCircle:Z

    if-eqz v5, :cond_6

    :cond_3
    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v2, v5, :cond_6

    if-nez p2, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v2, v5, :cond_11

    :cond_4
    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v2, v5, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->checkUnlockModeInSignatureLock()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v2

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V

    :cond_6
    :goto_0
    if-nez p2, :cond_7

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    if-nez v5, :cond_a

    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    :cond_8
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lockscreen_wallpaper"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_14

    move v1, v6

    .local v1, isLiveWallpaper:Z
    :goto_1
    if-nez v1, :cond_a

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    if-nez v5, :cond_9

    new-instance v5, Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v5, v8, v9}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    :cond_9
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v4, wallpaperLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .end local v1           #isLiveWallpaper:Z
    .end local v4           #wallpaperLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v5, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .local v0, goneScreen:Landroid/view/View;
    :goto_2
    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v5, :cond_16

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .local v3, visibleScreen:Landroid/view/View;
    :goto_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-object v5, v3

    check-cast v5, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v5

    invoke-interface {v8, v5}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setNeedsInput(Z)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v5, :cond_c

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    move-object v5, v0

    check-cast v5, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_c

    move-object v5, v3

    check-cast v5, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    :cond_c
    if-eqz v0, :cond_d

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsWaterRipple:Z

    if-eqz v5, :cond_e

    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-eq p1, v5, :cond_f

    :cond_e
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenIsReady:Z

    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->requestLayout()V

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCMCCFeature()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v6, "LAWMO_LOCK_KEY"

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_10
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0           #goneScreen:Landroid/view/View;
    .end local v3           #visibleScreen:Landroid/view/View;
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->useBiometricUnlock()Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v5, :cond_13

    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v2, v5, :cond_12

    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v2, v5, :cond_6

    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeStartBiometricUnlock()V

    goto/16 :goto_0

    :cond_13
    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v2, v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    instance-of v5, v5, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v5, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->isSignatureRecognitionFailed()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "LockPatternKeyguardView"

    const-string v8, "it seems that it failed to unlock with signature"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockModeForFallback()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V

    goto/16 :goto_0

    :cond_14
    move v1, v7

    goto/16 :goto_1

    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    goto/16 :goto_2

    .restart local v0       #goneScreen:Landroid/view/View;
    :cond_16
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    goto/16 :goto_3

    .restart local v3       #visibleScreen:Landroid/view/View;
    :cond_17
    return-void
.end method

.method private useBiometricUnlock()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .local v1, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    move v0, v2

    .local v0, backupIsTimedOut:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v1, v4, :cond_2

    :cond_0
    :goto_1
    return v2

    .end local v0           #backupIsTimedOut:Z
    :cond_1
    move v0, v3

    goto :goto_0

    .restart local v0       #backupIsTimedOut:Z
    :cond_2
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->cleanUp()V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    :cond_4
    return-void
.end method

.method createLockScreen()Landroid/view/View;
    .locals 6

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .local v0, lockView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    return-object v0
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 11
    .parameter "unlockMode"

    .prologue
    const/4 v1, 0x0

    .local v1, unlockView:Landroid/view/View;
    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUnlockScreenFor("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): mEnableFallback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .local v0, view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockSparePasswordEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableSparePasswordFallback(Z)V

    move-object v1, v0

    .end local v0           #view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    .restart local v1       #unlockView:Landroid/view/View;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeBiometricUnlockView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object v3, v1

    :goto_1
    return-object v3

    :cond_0
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_1

    new-instance v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_2

    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_3

    :try_start_0
    new-instance v2, Lcom/android/internal/policy/impl/AccountUnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #unlockView:Landroid/view/View;
    .local v2, unlockView:Landroid/view/View;
    move-object v1, v2

    .end local v2           #unlockView:Landroid/view/View;
    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    :catch_0
    move-exception v10

    .local v10, e:Ljava/lang/IllegalStateException;
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "Couldn\'t instantiate AccountUnlockScreen (IAccountsService isn\'t available)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .end local v10           #e:Ljava/lang/IllegalStateException;
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_5

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCMCCFeature()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "LAWMO_LOCK_KEY"

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .restart local v1       #unlockView:Landroid/view/View;
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "LawmoLockScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    :cond_5
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Recovery:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_6

    new-instance v1, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_7

    new-instance v1, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pcw:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_8

    new-instance v1, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown unlock mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** dispatchDraw() time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMountService:Landroid/os/storage/IMountService;

    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public goToUnlockScreenForDetachPen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "LockPatternKeyguardView"

    const-string v2, "goToUnlockScreenForDetachPen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    sput-boolean v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public isGlanceScreenVisible()Z
    .locals 2

    .prologue
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "isGlanceScreenVisible()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x111001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->saveWidgetState()V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsWaterRipple:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenIsReady:Z

    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! mLockScreenIsReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenIsReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-string v1, "LockPatternKeyguardView"

    const-string v2, "recreating lockscreen because config changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onDetachedFromWindow()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "LockPatternKeyguardView"

    const-string v1, "screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "LockPatternKeyguardView"

    const-string v1, " ((KeyguardScreen) mLockScreen).onPause();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    const-string v0, "LockPatternKeyguardView"

    const-string v1, "((KeyguardScreen) mUnlockScreen).onPause();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->saveWidgetState()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    :cond_2
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const-string v5, "LockPatternKeyguardView"

    const-string v6, "screen on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, startBiometricUnlock:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlockStartupLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->show()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowUnlockWithCircle:Z

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeStartBiometricUnlock()V

    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, drivingMode:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_unlock_screen_contents"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, unlockDrivingMode:I
    if-ne v0, v4, :cond_3

    if-ne v3, v4, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eq v5, v4, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowUnlockWithCircle:Z

    if-eqz v5, :cond_2

    :cond_1
    move v1, v4

    .local v1, isCircleLockscreen:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getInstance(Landroid/content/Context;Z)Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    .end local v1           #isCircleLockscreen:Z
    :cond_3
    return-void

    .end local v0           #drivingMode:I
    .end local v3           #unlockDrivingMode:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    const-string v2, "LockPatternKeyguardView"

    if-eqz p1, :cond_2

    const-string v1, "focused"

    :goto_0
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, startBiometricUnlock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlockStartupLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    if-nez v1, :cond_0

    move v0, p1

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->hide()V

    :cond_1
    :goto_1
    return-void

    .end local v0           #startBiometricUnlock:Z
    :cond_2
    const-string v1, "unfocused"

    goto :goto_0

    .restart local v0       #startBiometricUnlock:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasDialog:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowUnlockWithCircle:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeStartBiometricUnlock()V

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    const-string v0, "LockPatternKeyguardView"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setGlanceViewDisable()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .local v0, startBiometricUnlock:Z
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->hide()V

    :cond_2
    return-void
.end method

.method public verifyUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pcw:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v0, v1, :cond_2

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "onWakeKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    const-string v0, "LockPatternKeyguardView"

    const-string v1, "switching screens to unlock screen because wake key was MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "poking wake lock immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_0
.end method