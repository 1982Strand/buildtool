.class public Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;,
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;,
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;,
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;
    }
.end annotation


# static fields
.field private static final BTN_MOUSE:I = 0x110

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field private static sBackLongPressWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

.field mBackLongPressed:Z

.field private mBackPressed:Z

.field private mBinder:Landroid/os/Binder;

.field mCameraKeyWakeScreen:Z

.field private mDisableProximitor:Z

.field private mDownX:I

.field private mDownY:I

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHasCameraFlash:Z

.field private mHomeDownWhileScreenOn:Z

.field private mIsStatusBarVisibleInFullscreen:Z

.field private mIsTouchDown:Z

.field private mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

.field private mMagnifierInputChannel:Landroid/view/InputChannel;

.field private mMagnifierInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mMenuPressed:Z

.field private mMiuiBootMsgDialog:Landroid/app/Dialog;

.field private mMsgText:Landroid/widget/TextView;

.field mPowerLongPressOriginal:Ljava/lang/Runnable;

.field private mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

.field mScreenButtonsDisabled:Z

.field private mScreenOffReason:I

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutTriggered:Z

.field private mShowMagnifier:Z

.field mShowMagnifierReceiver:Landroid/content/BroadcastReceiver;

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarInputChannel:Landroid/view/InputChannel;

.field private mStatusBarInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mTorchEnabled:Z

.field mTrackballWakeScreen:Z

.field private mVolumeDownPressed:Z

.field mVolumeKeyWakeScreen:Z

.field private mVolumeUpPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 688
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    .line 690
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 691
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 692
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 693
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 694
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.miui.fmradio"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getPowerLongPress()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    .line 511
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    .line 513
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 597
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 661
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifierReceiver:Landroid/content/BroadcastReceiver;

    .line 675
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 676
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 687
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    .line 794
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownX:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownX:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownY:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsTouchDown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifier:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifier:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMsgText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMsgText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static getStatusBarManagerService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 3

    .prologue
    .line 945
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 947
    .local v0, service:Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v0, :cond_0

    .line 948
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IStatusBarService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    return-object v0
.end method

.method static getWindownManagerService()Landroid/view/IWindowManager;
    .locals 3

    .prologue
    .line 954
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 956
    .local v0, service:Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    .line 957
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IPowerManager interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    return-object v0
.end method

.method private isEnableKeyguardTorch()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHasCameraFlash:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseScreenOnProximitySensor()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return v0

    .line 184
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDisableProximitor:Z

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->release()Z

    move-result v0

    goto :goto_0
.end method

.method private setMaxBacklightBrightness()V
    .locals 2

    .prologue
    .line 472
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 474
    .local v0, power:Landroid/os/IPowerManager;
    const/16 v1, 0xff

    :try_start_0
    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setStatusBarInFullscreen(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 520
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    .line 522
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz p1, :cond_1

    const/high16 v1, 0x2000

    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string v5, "android"

    invoke-interface {v3, v1, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 531
    if-eqz p1, :cond_2

    .line 532
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 538
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 522
    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_2
.end method

.method private setTorch(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 680
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 683
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 684
    return-void
.end method


# virtual methods
.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 974
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 975
    const/4 v0, 0x0

    .line 977
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 965
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 966
    const/4 v0, 0x0

    .line 968
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public finishAnimationLw()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 480
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 481
    .local v1, statusBar:Landroid/view/WindowManagerPolicy$WindowState;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v2, :cond_0

    .line 482
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 484
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishAnimationLw()I

    move-result v0

    .line 485
    .local v0, result:I
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 487
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-nez v2, :cond_1

    .line 489
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 490
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    if-nez v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "StatusBarView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    .line 492
    new-instance v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 507
    :cond_1
    :goto_0
    return v0

    .line 497
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_3

    .line 498
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 499
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    .line 501
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Landroid/view/InputEventReceiver;

    if-eqz v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v2}, Landroid/view/InputEventReceiver;->dispose()V

    .line 503
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Landroid/view/InputEventReceiver;

    goto :goto_0
.end method

.method getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;
    .locals 3

    .prologue
    .line 652
    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    if-nez v1, :cond_0

    .line 654
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    add-int/lit16 v0, v1, 0x3e8

    .line 655
    .local v0, maxLayer:I
    new-instance v1, Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    .line 657
    .end local v0           #maxLayer:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    monitor-exit p0

    return-object v1

    .line 658
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 942
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V
    .locals 6
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"
    .parameter "powerManager"

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V

    .line 104
    new-instance v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/os/Handler;)V

    .line 105
    .local v2, settingsObserver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    .line 107
    new-instance v3, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setPowerLongPress(Ljava/lang/Runnable;)V

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 130
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.camera.flash"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 131
    new-instance v3, Lmiui/util/HapticFeedbackUtil;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 134
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v4, "Magnifier"

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifierInputChannel:Landroid/view/InputChannel;

    .line 135
    new-instance v3, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifierInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifierInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SHOW_MAGNIFIER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifierReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 15
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 191
    .local v6, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    .line 192
    .local v8, repeatCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_1

    const/4 v3, 0x1

    .line 194
    .local v3, down:Z
    :goto_0
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 195
    :cond_0
    const-wide/16 v11, -0x1

    .line 317
    :goto_1
    return-wide v11

    .line 192
    .end local v3           #down:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 202
    .restart local v3       #down:Z
    :cond_2
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v11, :cond_3

    .line 203
    sparse-switch v6, :sswitch_data_0

    .line 212
    :cond_3
    const/4 v11, 0x3

    if-ne v6, v11, :cond_9

    .line 213
    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->isEnableKeyguardTorch()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 214
    if-nez v8, :cond_5

    .line 215
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 216
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOnFully:Z

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomeDownWhileScreenOn:Z

    .line 226
    :cond_4
    :goto_2
    const-wide/16 v11, -0x1

    goto :goto_1

    .line 208
    :sswitch_0
    const-wide/16 v11, -0x1

    goto :goto_1

    .line 218
    :cond_5
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    if-eqz v11, :cond_6

    .line 219
    rem-int/lit8 v11, v8, 0xa

    const/4 v12, 0x6

    if-ne v11, v12, :cond_4

    .line 220
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    goto :goto_2

    .line 223
    :cond_6
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomeDownWhileScreenOn:Z

    if-eqz v11, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 224
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setTorch(Z)V

    goto :goto_2

    .line 228
    :cond_7
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    if-eqz v11, :cond_8

    .line 229
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setTorch(Z)V

    .line 317
    :cond_8
    :goto_3
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v11

    goto :goto_1

    .line 232
    :cond_9
    const/16 v11, 0x52

    if-ne v6, v11, :cond_b

    .line 233
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-nez v11, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v11

    if-nez v11, :cond_8

    .line 235
    :cond_a
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enable_assist_menu_key_long_press"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 238
    .local v1, assistFlag:I
    if-eqz v1, :cond_8

    .line 239
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 241
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "android.intent.action.ASSIST"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 246
    .end local v5           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v11

    goto :goto_3

    .line 251
    .end local v1           #assistFlag:I
    :cond_b
    const/4 v11, 0x4

    if-ne v6, v11, :cond_8

    .line 252
    if-eqz v3, :cond_12

    .line 253
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 254
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enable_snapshot_screenlock"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 258
    .local v9, snapshotFlag:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v11

    if-eqz v11, :cond_10

    if-eqz v9, :cond_10

    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v11

    if-nez v11, :cond_10

    .line 259
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 261
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 262
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    const/high16 v11, 0x800

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    const-string v11, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v11, "captureAfterLaunch"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const-string v11, "android.intent.extras.CAMERA_FACING"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    const/4 v11, 0x0

    invoke-virtual {v7, v5, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_c

    .line 271
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(Z)V

    .line 272
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 275
    :cond_c
    const-wide/16 v11, -0x1

    goto/16 :goto_1

    .line 277
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    .end local v9           #snapshotFlag:I
    :cond_d
    if-nez v8, :cond_10

    .line 278
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPressed:Z

    .line 281
    if-eqz p1, :cond_11

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 282
    .local v2, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_4
    if-eqz v2, :cond_10

    sget-object v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    iget-object v12, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x1

    if-lt v11, v12, :cond_e

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x63

    if-le v11, v12, :cond_f

    :cond_e
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x3e8

    if-lt v11, v12, :cond_10

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7cf

    if-gt v11, v12, :cond_10

    .line 291
    :cond_f
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "back_key_long_press_timeout"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    .line 294
    .local v10, timeout:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->setTarget(Landroid/view/WindowManagerPolicy$WindowState;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    :goto_5
    if-lez v10, :cond_10

    .line 306
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    int-to-long v13, v10

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    .end local v2           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v10           #timeout:I
    :cond_10
    :goto_6
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPressed:Z

    if-eqz v11, :cond_8

    const-wide/16 v11, -0x1

    goto/16 :goto_1

    .line 281
    :cond_11
    const/4 v2, 0x0

    goto :goto_4

    .line 295
    .restart local v2       #attrs:Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v4

    .line 297
    .local v4, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    .line 298
    .restart local v10       #timeout:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "back_key_long_press_timeout"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 311
    .end local v2           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v10           #timeout:I
    :cond_12
    iget-object v11, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 14
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 323
    .local v5, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_5

    const/4 v1, 0x1

    .line 324
    .local v1, down:Z
    :goto_0
    const/high16 v10, 0x100

    and-int v10, v10, p2

    if-eqz v10, :cond_6

    const/4 v3, 0x1

    .line 326
    .local v3, isInjected:Z
    :goto_1
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v10, :cond_0

    .line 327
    sparse-switch v5, :sswitch_data_0

    .line 348
    :cond_0
    const/16 v10, 0x52

    if-ne v5, v10, :cond_8

    .line 349
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    .line 361
    :cond_1
    :goto_2
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackPressed:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    if-nez v10, :cond_2

    .line 362
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 365
    :cond_2
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackPressed:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    if-eqz v10, :cond_3

    .line 366
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->releaseScreenOnProximitySensor()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 369
    :cond_3
    if-eqz p3, :cond_b

    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v6

    .line 372
    .local v6, keyguardActive:Z
    :goto_3
    if-nez p3, :cond_4

    if-eqz v3, :cond_c

    .line 374
    :cond_4
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    if-eqz v10, :cond_11

    if-eqz v6, :cond_11

    const/16 v10, 0x1b

    if-ne v5, v10, :cond_11

    if-nez v1, :cond_11

    .line 375
    const/4 v10, 0x4

    .line 468
    .end local v6           #keyguardActive:Z
    :goto_4
    return v10

    .line 323
    .end local v1           #down:Z
    .end local v3           #isInjected:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 324
    .restart local v1       #down:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 329
    .restart local v3       #isInjected:Z
    :sswitch_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    .line 333
    :sswitch_1
    const/4 v10, 0x0

    goto :goto_4

    .line 336
    :sswitch_2
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    if-eqz v10, :cond_0

    .line 337
    if-nez v1, :cond_7

    .line 338
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    .line 339
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->callInterceptPowerKeyUp(Z)V

    .line 340
    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 351
    :cond_8
    const/4 v10, 0x4

    if-ne v5, v10, :cond_9

    .line 352
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackPressed:Z

    goto :goto_2

    .line 354
    :cond_9
    const/16 v10, 0x18

    if-ne v5, v10, :cond_a

    .line 355
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    goto :goto_2

    .line 357
    :cond_a
    const/16 v10, 0x19

    if-ne v5, v10, :cond_1

    .line 358
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    goto :goto_2

    .line 369
    :cond_b
    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v6

    goto :goto_3

    .line 378
    .restart local v6       #keyguardActive:Z
    :cond_c
    const/4 v4, 0x1

    .line 379
    .local v4, isWakeKey:Z
    const/4 v0, 0x0

    .line 382
    .local v0, allowToWake:Z
    sparse-switch v5, :sswitch_data_1

    .line 403
    const/4 v4, 0x0

    .line 406
    :cond_d
    :goto_5
    if-eqz v4, :cond_11

    .line 407
    if-eqz v0, :cond_10

    .line 408
    if-eqz v1, :cond_e

    .line 410
    const/4 v10, 0x0

    goto :goto_4

    .line 384
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 385
    goto :goto_5

    .line 388
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 389
    goto :goto_5

    .line 393
    :sswitch_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 397
    iget v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOffReason:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_d

    .line 398
    const/4 v0, 0x0

    goto :goto_5

    .line 412
    :cond_e
    if-eqz v6, :cond_f

    .line 413
    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v11, 0x1a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 414
    const/4 v10, 0x0

    goto :goto_4

    .line 418
    :cond_f
    const/4 v10, 0x2

    goto :goto_4

    .line 421
    :cond_10
    and-int/lit8 p2, p2, -0x4

    .line 425
    .end local v0           #allowToWake:Z
    .end local v4           #isWakeKey:Z
    :cond_11
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-nez v10, :cond_12

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    if-eqz v10, :cond_12

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    if-eqz v10, :cond_12

    .line 426
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 427
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setMaxBacklightBrightness()V

    .line 430
    :cond_12
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    if-eqz v10, :cond_13

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    if-eqz v10, :cond_13

    .line 431
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 432
    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 433
    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 436
    :cond_13
    if-eqz v1, :cond_18

    .line 438
    const/16 v10, 0x1a

    if-ne v5, v10, :cond_19

    const/4 v8, 0x1

    .line 439
    .local v8, stopNotification:Z
    :goto_6
    if-nez v8, :cond_15

    .line 440
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getWindownManagerService()Landroid/view/IWindowManager;

    move-result-object v9

    .line 441
    .local v9, wm:Landroid/view/IWindowManager;
    if-eqz v9, :cond_15

    invoke-interface {v9}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 442
    const/16 v10, 0x19

    if-eq v5, v10, :cond_14

    const/16 v10, 0x18

    if-eq v5, v10, :cond_14

    const/16 v10, 0xa4

    if-ne v5, v10, :cond_15

    .line 445
    :cond_14
    const/4 v8, 0x1

    .line 450
    .end local v9           #wm:Landroid/view/IWindowManager;
    :cond_15
    if-eqz v8, :cond_16

    .line 451
    invoke-static {}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getStatusBarManagerService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    .line 452
    .local v7, statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v7, :cond_16

    .line 453
    invoke-interface {v7}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V

    .line 457
    .end local v7           #statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_16
    const/16 v10, 0x1a

    if-eq v5, v10, :cond_17

    const/16 v10, 0x19

    if-eq v5, v10, :cond_17

    const/16 v10, 0xa4

    if-ne v5, v10, :cond_18

    .line 460
    :cond_17
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.KEYCODE_MUTE"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v2, i:Landroid/content/Intent;
    const/high16 v10, 0x4000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 462
    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v2           #i:Landroid/content/Intent;
    .end local v8           #stopNotification:Z
    :cond_18
    :goto_7
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v10

    goto/16 :goto_4

    .line 438
    :cond_19
    const/4 v8, 0x0

    goto :goto_6

    .line 464
    .restart local v8       #stopNotification:Z
    :catch_0
    move-exception v10

    goto :goto_7

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x1a -> :sswitch_2
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch

    .line 382
    :sswitch_data_1
    .sparse-switch
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1b -> :sswitch_4
        0x110 -> :sswitch_3
    .end sparse-switch
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 1
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v0

    .line 791
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.app.ExtraStatusBarManager.UNLOADED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 148
    return-void
.end method

.method public screenTurnedOff(I)V
    .locals 1
    .parameter "why"

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    .line 177
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOffReason:I

    .line 178
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->releaseScreenOnProximitySensor()Z

    .line 179
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    .line 180
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 3
    .parameter "screenOnListener"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 159
    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDisableProximitor:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->aquire()V

    .line 172
    :cond_1
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 929
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V

    .line 153
    new-instance v0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    .line 154
    return-void
.end method
