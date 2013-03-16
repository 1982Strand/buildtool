.class Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;
.super Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;
.source "MiuiSimPUKUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;
    }
.end annotation


# static fields
.field private static final DEFAULT_PIN_CODE:Ljava/lang/String; = "1234"


# instance fields
.field private mPukCode:Ljava/lang/String;

.field protected mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubscription:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v7, 0x0

    .line 32
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    .line 17
    iput-object v7, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSubscription:I

    .line 19
    iput-object v7, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPukCode:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->setRightBottomKeyText(I)V

    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const v1, 0x60c0220

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->displayCarrierMsg()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 0
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"
    .parameter "subscription"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 26
    iput p6, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSubscription:I

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSubscription:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPukCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPukCode:Ljava/lang/String;

    return-object p1
.end method

.method private checkPuk()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 69
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPukCode:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 70
    const v2, 0x60c0223

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->displayErrorMsg(I)V

    .line 71
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 132
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPukCode:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 78
    :cond_1
    const v2, 0x60c0224

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->displayErrorMsg(I)V

    .line 79
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 86
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPukCode:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 87
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, pukcode:Ljava/lang/String;
    const-string v0, "1234"

    .line 93
    .local v0, pincode:Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->start()V

    goto :goto_0

    .line 90
    .end local v0           #pincode:Ljava/lang/String;
    .end local v1           #pukcode:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPukCode:Ljava/lang/String;

    .line 91
    .restart local v1       #pukcode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #pincode:Ljava/lang/String;
    goto :goto_1
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x60d0041

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60c0222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public needsInput()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected onRightBottomKeyPressed()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->checkPuk()V

    .line 137
    return-void
.end method

.method protected showImmOnResume()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method
