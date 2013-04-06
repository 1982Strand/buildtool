.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$1;
.super Ljava/lang/Object;
.source "MiuiAccountUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->setAirplaneMode(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const v1, 0xea60

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->updateLockDevice()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    return-void
.end method
