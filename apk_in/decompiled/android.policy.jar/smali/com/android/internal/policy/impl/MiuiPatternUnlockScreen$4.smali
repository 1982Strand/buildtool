.class Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;
.super Landroid/os/CountDownTimer;
.source "MiuiPatternUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/MiuiLockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->hideOverlayDialog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$800(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->hideErrorMsg()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$602(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;I)I

    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x60c020e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->displayErrorMsg(Ljava/lang/String;)V

    return-void
.end method
