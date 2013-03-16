.class Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$1;
.super Ljava/lang/Object;
.source "MiuiPasswordUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
