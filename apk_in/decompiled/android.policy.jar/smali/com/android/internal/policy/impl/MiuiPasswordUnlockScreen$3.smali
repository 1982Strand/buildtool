.class Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$3;
.super Ljava/lang/Object;
.source "MiuiPasswordUnlockScreen.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


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
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 4
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mEnableHaptics:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->performHapticFeedback(II)Z

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->onLeftBottomKeyPressed()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->onRightBottomKeyPressed()V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x4

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public onPress(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    return-void
.end method
