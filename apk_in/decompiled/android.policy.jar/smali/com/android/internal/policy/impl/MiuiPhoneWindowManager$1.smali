.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const-string v1, "miui.intent.extra.IS_ENABLE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$002(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z

    return-void
.end method
