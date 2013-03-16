.class Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "MiuiSimPINUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->onSimLockChangedResponse(Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

.field final synthetic val$result:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->val$result:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->val$result:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->unlockSuccess:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 93
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->turnOnErrorState()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->val$result:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    iget v0, v0, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->attemptsRemaining:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60c0229

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->val$result:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    iget v5, v5, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->attemptsRemaining:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->displayErrorMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    const v1, 0x60c022b

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->displayErrorMsg(I)V

    goto :goto_1
.end method
