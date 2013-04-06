.class Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl$1;
.super Ljava/lang/Object;
.source "MiuiLockPatternKeyguardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->goToUnlockScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getLockScreen()Landroid/view/View;

    move-result-object v0

    .local v0, lockScreen:Landroid/view/View;
    instance-of v1, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->onPause()V

    check-cast v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    .end local v0           #lockScreen:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->onResume()V

    :cond_0
    return-void
.end method
