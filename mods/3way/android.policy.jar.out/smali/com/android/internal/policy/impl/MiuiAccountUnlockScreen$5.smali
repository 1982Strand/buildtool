.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;
.super Ljava/lang/Object;
.source "MiuiAccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->postOnCheckPasswordResult(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

.field final synthetic val$showLock:Z

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->val$success:Z

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->val$showLock:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->val$success:Z

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$900(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$900(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 402
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$900(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 406
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    const-string v1, "com.xiaomi.action.DISABLE_FIND_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v2, "account"

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 417
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 420
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 426
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 411
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->val$showLock:Z

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 422
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1500(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    const v3, 0x60c001e

    #calls: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->generateCoolInstructionSpannable(I)Landroid/text/Spannable;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;I)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    goto :goto_1
.end method
