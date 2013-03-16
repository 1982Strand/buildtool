.class Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$2;
.super Ljava/lang/Object;
.source "MiuiLockPatternKeyguardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->createTorchCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_ENABLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->removeTorchCoverView()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)V

    .line 285
    return-void
.end method
