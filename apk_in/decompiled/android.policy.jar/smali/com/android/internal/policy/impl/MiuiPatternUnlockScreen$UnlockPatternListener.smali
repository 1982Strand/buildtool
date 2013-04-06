.class Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;
.super Ljava/lang/Object;
.source "MiuiPatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$400(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/MiuiLockPatternView;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, reportFailedAttempt:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    const/16 v4, 0x1b58

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/MiuiLockPatternView;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$508(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)I

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$608(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)I

    const/4 v2, 0x1

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$600(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$400(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .local v0, deadline:J
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$700(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;J)V

    .end local v0           #deadline:J
    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x60c021e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->displayErrorMsg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/MiuiLockPatternView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$300(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/MiuiLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/MiuiLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$300(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
