.class Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$3;
.super Ljava/lang/Object;
.source "MiuiLockPatternKeyguardView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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
    .line 287
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 292
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 293
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 296
    return-void
.end method
