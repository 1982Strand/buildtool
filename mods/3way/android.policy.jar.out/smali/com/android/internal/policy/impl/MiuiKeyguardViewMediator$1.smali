.class Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->callShowLocked()V

    .line 30
    return-void
.end method
