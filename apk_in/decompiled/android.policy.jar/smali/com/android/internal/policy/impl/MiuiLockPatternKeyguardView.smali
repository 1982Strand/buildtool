.class public Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.source "MiuiLockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;
    }
.end annotation


# instance fields
.field private mBackDown:Z

.field private mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

.field private final mSuppressBiometricUnlockInitState:Z

.field private mTorchCover:Landroid/widget/ImageView;

.field private mTorchStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .locals 2
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchStateReceiver:Landroid/content/BroadcastReceiver;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mSuppressBiometricUnlockInitState:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->isShowExperientalPermissionLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    const/high16 v1, 0x2

    invoke-virtual {p4, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->callGetUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->updateTorchCover(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->removeTorchCoverView()V

    return-void
.end method

.method private createTorchCover()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    const v1, 0x6020082

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$2;-><init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method private isShowExperientalPermissionLockScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_1

    const-string v1, "com.android.updater"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->isThisASystemPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "experimental_permission_allow"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThisASystemPackage(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private removeTorchCoverView()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method private updateShowLockBeforeUnlock()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_lock_before_unlock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->setShowLockBeforeUnlock(Z)V

    return-void
.end method

.method private updateTorchCover(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->createTorchCover()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->removeTorchCoverView()V

    goto :goto_0
.end method


# virtual methods
.method createExperimentalPermissionLockScreen()Landroid/view/View;
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->isShowExperientalPermissionLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getUpdateMonitor()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    goto :goto_0
.end method

.method protected bridge synthetic createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    return-object v0
.end method

.method protected createKeyguardScreenCallback()Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;

    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;-><init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method protected createLockScreen()Landroid/view/View;
    .locals 7

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->createExperimentalPermissionLockScreen()Landroid/view/View;

    move-result-object v6

    .local v6, lockView:Landroid/view/View;
    if-eqz v6, :cond_0

    .end local v6           #lockView:Landroid/view/View;
    :goto_0
    return-object v6

    .restart local v6       #lockView:Landroid/view/View;
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getUpdateMonitor()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/AwesomeLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V

    move-object v6, v0

    goto :goto_0
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 3
    .parameter "unlockMode"

    .prologue
    const/4 v0, 0x0

    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getShowLockBeforeUnlock()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->createExperimentalPermissionLockScreen()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0           #view:Landroid/view/View;
    .local v1, view:Landroid/view/View;
    :goto_0
    return-object v1

    .end local v1           #view:Landroid/view/View;
    .restart local v0       #view:Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object v1, v0

    .end local v0           #view:Landroid/view/View;
    .restart local v1       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x18

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    :cond_1
    if-eq v0, v4, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    if-ne v0, v4, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->isShowExperientalPermissionLockScreen()Z

    move-result v2

    if-nez v2, :cond_3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    const-string v2, "MiuiLockPatternKeyguardView"

    const-string v3, "Unlock Screen by pressing back + volume_up"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    goto :goto_0
.end method

.method protected getFaceLockAreaView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "view"

    .prologue
    const v0, 0x60b00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getLockScreen()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getLockScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isDisplayDesktop()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->updateShowLockBeforeUnlock()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onDetachedFromWindow()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onScreenTurnedOff()V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mSuppressBiometricUnlockInitState:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->callGetInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->setMode(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->setScreenOn(Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->removeTorchCoverView()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->createTorchCover()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->addView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->show()V

    return-void
.end method

.method protected showTimeoutDialog()V
    .locals 0

    .prologue
    return-void
.end method
