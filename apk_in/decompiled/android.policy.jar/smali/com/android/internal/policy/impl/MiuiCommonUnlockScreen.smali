.class abstract Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "MiuiCommonUnlockScreen.java"


# instance fields
.field protected mEnableFallback:Z

.field private mInfo:Landroid/widget/TextView;

.field private mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

.field private mNormalUnlockLayout:Landroid/widget/LinearLayout;

.field protected mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "updateMonitor"

    .prologue
    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mNormalUnlockLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mNormalUnlockLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mNormalUnlockLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x6030056

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mNormalUnlockLayout:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mNormalUnlockLayout:Landroid/widget/LinearLayout;

    const v1, 0x60b00b7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mNormalUnlockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->addView(Landroid/view/View;)V

    const v0, 0x603005a

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "context"
    .parameter "updateMonitor"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;ZIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->setInfoText(ZIZ)V

    return-void
.end method

.method private setInfoText(ZIZ)V
    .locals 9
    .parameter "showBatteryInfo"
    .parameter "batteryLevel"
    .parameter "plugged"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfo:Landroid/widget/TextView;

    const v4, 0x60c021b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x60c021a

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x14

    if-ge p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfo:Landroid/widget/TextView;

    const v4, 0x60c0232

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "lock_screen_owner_info_enabled"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    .local v1, ownerInfoEnabled:Z
    :goto_1
    const-string v4, "lock_screen_owner_info"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, ownerInfo:Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v0           #ownerInfo:Ljava/lang/String;
    .end local v1           #ownerInfoEnabled:Z
    :cond_4
    move v1, v3

    goto :goto_1

    .restart local v0       #ownerInfo:Ljava/lang/String;
    .restart local v1       #ownerInfoEnabled:Z
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfo:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected addUnlockView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mNormalUnlockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    .local v2, showBatteryInfo:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v1

    .local v1, pluggedIn:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .local v0, batteryLevel:I
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->setInfoText(ZIZ)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 0
    .parameter "state"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mEnableFallback:Z

    return-void
.end method

.method protected setUnlockScreenInputAreaBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mNormalUnlockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method
