.class Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;
.super Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;
.source "MiuiSimPINUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$CheckSimPin;
    }
.end annotation


# instance fields
.field protected mSimUnlockProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    .line 22
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->setRightBottomKeyText(I)V

    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const v1, 0x60c0225

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 26
    return-void
.end method

.method private checkPin()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 59
    const v0, 0x60c0224

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->displayErrorMsg(I)V

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 97
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 66
    new-instance v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->start()V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x60d0041

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60c0222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public needsInput()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method protected onRightBottomKeyPressed()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->checkPin()V

    .line 102
    return-void
.end method

.method protected showImmOnResume()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method
