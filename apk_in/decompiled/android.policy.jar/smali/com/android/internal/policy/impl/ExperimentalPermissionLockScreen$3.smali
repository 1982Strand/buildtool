.class Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;
.super Ljava/lang/Object;
.source "ExperimentalPermissionLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    #getter for: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDescript:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$400(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    #getter for: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$600(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    #getter for: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$700(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    #getter for: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$700(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$702(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$3;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    #getter for: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidateFail:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$800(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
