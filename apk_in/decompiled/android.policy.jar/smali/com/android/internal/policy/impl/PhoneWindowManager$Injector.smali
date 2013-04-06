.class Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkStatusBarVisibility(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter "pwm"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAboveStatusBarFullScreenWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->notifyStatusBarShowingOrHiding(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    :cond_0
    return-void
.end method

.method static clearAboveStatusBarFullScreenWindow(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter "pwm"

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAboveStatusBarFullScreenWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method static getMiuiViewLayer(II)I
    .locals 3
    .parameter "type"
    .parameter "defaultLayer"

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :pswitch_0
    const/16 p1, 0x1b

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xbb6
        :pswitch_0
    .end packed-switch
.end method

.method static getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .parameter "focus"
    .parameter "ws"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method static notifyStatusBarShowingOrHiding(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 5
    .parameter "pwm"
    .parameter "showing"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarDisableToken:Landroid/os/IBinder;

    const-string v4, "system"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :goto_1
    return-void

    .restart local v1       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    const/high16 v2, 0x400

    goto :goto_0

    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method static performReleaseHapticFeedback(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .locals 4
    .parameter "manager"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, down:Z
    :goto_0
    if-nez v0, :cond_0

    and-int/lit16 v2, p2, 0x100

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_0
    return-void

    .end local v0           #down:Z
    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static sendPowerUpBroadcast(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 3
    .parameter "manager"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static setAboveStatusBarFullScreenWindow(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .parameter "pwm"
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAboveStatusBarFullScreenWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v2, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v2, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAboveStatusBarFullScreenWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    return-void
.end method

.method static statusBarShowingOrHideing(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 3
    .parameter "pwm"
    .parameter "show"

    .prologue
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .local v0, ret:Z
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->notifyStatusBarShowingOrHiding(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    return v0

    .end local v0           #ret:Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    .restart local v0       #ret:Z
    goto :goto_0
.end method
