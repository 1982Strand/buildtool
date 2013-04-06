.class Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$2;
.super Landroid/content/BroadcastReceiver;
.source "ExperimentalPermissionLockScreen.java"


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
    iput-object p1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$2;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$2;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    const-string v1, "experimental_validate_descript"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mValidateDescript:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$402(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$2;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$2;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    #getter for: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mExperimentalValidateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$500(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
