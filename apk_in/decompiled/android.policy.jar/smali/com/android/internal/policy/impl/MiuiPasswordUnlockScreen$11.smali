.class Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;
.super Landroid/os/CountDownTimer;
.source "MiuiPasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordLengthIsDescending:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$102(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordPreLength:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$202(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->hideOverlayDialog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->hideErrorMsg()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->turnOffErrorState()V

    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .local v1, secondsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x60c0219

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, instructions:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->displayErrorMsg(Ljava/lang/String;)V

    return-void
.end method
