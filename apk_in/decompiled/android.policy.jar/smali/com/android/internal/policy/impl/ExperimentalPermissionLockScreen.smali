.class public Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;
.super Landroid/widget/FrameLayout;
.source "ExperimentalPermissionLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x1d4c0


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mExperimentalValidate:Landroid/widget/Button;

.field private mExperimentalValidateFail:Landroid/widget/TextView;

.field private mExperimentalValidateReceiver:Landroid/content/BroadcastReceiver;

.field private mExperimentalValidateRunnable:Ljava/lang/Runnable;

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPassword:Landroid/widget/EditText;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUserName:Landroid/widget/EditText;

.field private mValidateDescript:I

.field private mValidateDialog:Landroid/app/ProgressDialog;

.field private mValidateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v5, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$1;-><init>(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$2;-><init>(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;-><init>(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidateRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p3, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/high16 v0, 0x602

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->setBackgroundResource(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x603000b

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x60b004d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidateFail:Landroid/widget/TextView;

    const v0, 0x60b004c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidate:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x60b0001

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUserName:Landroid/widget/EditText;

    const v0, 0x60b0069

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .local v6, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .local v7, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->validate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUserName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDescript:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDescript:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidateFail:Landroid/widget/TextView;

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x60c0139

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private validate()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, password:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.android.updater"

    const-string v5, "com.android.updater.UpdaterBackgroundService"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "command"

    const-string v5, "check_update"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "check_type"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "username"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "password"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "miui.intent.action.EXPERIMENTAL_VALIDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const v1, 0x1d4c0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    return-void
.end method
