.class final Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarInputEventReceiver"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    .line 545
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 546
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 10
    .parameter "inputEvent"

    .prologue
    .line 550
    instance-of v5, p1, Landroid/view/MotionEvent;

    if-nez v5, :cond_0

    .line 551
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 591
    :goto_0
    return-void

    :cond_0
    move-object v3, p1

    .line 555
    check-cast v3, Landroid/view/MotionEvent;

    .line 556
    .local v3, motionEvent:Landroid/view/MotionEvent;
    const/4 v2, 0x0

    .line 558
    .local v2, handled:Z
    :try_start_0
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-eqz v5, :cond_2

    .line 589
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    .line 561
    :cond_2
    const/4 v2, 0x1

    .line 562
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v6, v5, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 563
    :try_start_2
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 587
    :cond_3
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    .line 565
    :pswitch_0
    :try_start_3
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->mDownX:F

    .line 566
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->mDownY:F

    goto :goto_1

    .line 587
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 589
    :catchall_1
    move-exception v5

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v5

    .line 573
    :pswitch_1
    :try_start_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v7, 0x611

    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v9, v9, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 577
    .local v4, statusBarExpandHeight:F
    iget v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->mDownY:F

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_3

    .line 579
    iget v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->mDownX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 580
    .local v0, distanceX:F
    iget v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->mDownY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 581
    .local v1, distanceY:F
    const/high16 v5, 0x4000

    mul-float/2addr v5, v0

    cmpl-float v5, v5, v1

    if-gtz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v5, v5, v1

    if-gtz v5, :cond_3

    .line 583
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v7, 0x1

    #calls: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V
    invoke-static {v5, v7}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V

    .line 584
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;->mDownY:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
