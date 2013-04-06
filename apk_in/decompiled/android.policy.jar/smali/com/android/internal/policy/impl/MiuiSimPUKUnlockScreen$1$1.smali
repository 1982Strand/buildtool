.class Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "MiuiSimPUKUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->onSimLockChangedResponse(Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

.field final synthetic val$result:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->val$result:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->val$result:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->unlockSuccess:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPukCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    check-cast v0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->setSkipSimStateChange(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    check-cast v0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->setSkipSimStateChange(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->mPuk:Ljava/lang/String;

    #setter for: Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPukCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->access$102(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    const v1, 0x60c0227

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->displayWarnMsg(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->hideErrorMsg()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const v1, 0x60c0225

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->val$result:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    iget v0, v0, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->attemptsRemaining:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60c0228

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->val$result:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    iget v4, v4, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->attemptsRemaining:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->displayErrorMsg(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->turnOnErrorState()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    const v1, 0x60c022a

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->displayErrorMsg(I)V

    goto :goto_1
.end method
