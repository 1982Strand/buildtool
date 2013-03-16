.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7$1;
.super Ljava/lang/Object;
.source "MiuiAccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 610
    return-void
.end method
