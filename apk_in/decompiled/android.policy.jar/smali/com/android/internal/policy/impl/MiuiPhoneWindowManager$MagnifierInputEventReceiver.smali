.class final Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifierInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 6
    .parameter "inputEvent"

    .prologue
    const/4 v3, 0x0

    instance-of v2, p1, Landroid/view/MotionEvent;

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .local v1, motionEvent:Landroid/view/MotionEvent;
    const/4 v0, 0x0

    .local v0, handled:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownX:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$302(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;I)I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownY:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$402(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;I)I

    :try_start_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v3, v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    :pswitch_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsTouchDown:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$502(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifier:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$400(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showMagnifier(II)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v2

    :pswitch_1
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsTouchDown:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$502(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifier:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$602(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->hide()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
