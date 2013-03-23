.class public Lmiui/app/screenelement/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lmiui/app/screenelement/FramerateTokenList$FramerateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/RendererController$Listener;,
        Lmiui/app/screenelement/RendererController$IRenderable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"

.field private static final MAX_MSG_COUNT:I = 0x5


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:I

.field private mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

.field private mInited:Z

.field private mLastUpdateSystemTime:J

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/screenelement/RendererController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMsgQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPendingRender:Z

.field private mRenderThread:Lmiui/app/screenelement/RenderThread;

.field private mSelfPaused:Z

.field private mShouldUpdate:Z


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/RendererController$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/app/screenelement/FramerateTokenList;

    invoke-direct {v0}, Lmiui/app/screenelement/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    const v0, 0x7fffffff

    iput v0, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    invoke-virtual {p0, p1}, Lmiui/app/screenelement/RendererController;->setListener(Lmiui/app/screenelement/RendererController$Listener;)V

    new-instance v0, Lmiui/app/screenelement/FramerateTokenList;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/FramerateTokenList;-><init>(Lmiui/app/screenelement/FramerateTokenList$FramerateChangeListener;)V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    return-void
.end method

.method private getListener()Lmiui/app/screenelement/RendererController$Listener;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController$Listener;

    goto :goto_0
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/FramerateTokenList;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->doRender()V

    :cond_0
    return-void
.end method

.method public doneRender()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->signal()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lmiui/app/screenelement/RendererController;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Lmiui/app/screenelement/RendererController$Listener;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lmiui/app/screenelement/RendererController;->mInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #l:Lmiui/app/screenelement/RendererController$Listener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1       #l:Lmiui/app/screenelement/RendererController$Listener;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getCurFramerate()F
    .locals 1

    .prologue
    iget v0, p0, Lmiui/app/screenelement/RendererController;->mCurFramerate:F

    return v0
.end method

.method public getFrameTime()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    return v0
.end method

.method public getFramerate()F
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    invoke-virtual {v0}, Lmiui/app/screenelement/FramerateTokenList;->getFramerate()F

    move-result v0

    return v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lmiui/app/screenelement/RendererController;->mLastUpdateSystemTime:J

    return-wide v0
.end method

.method public declared-synchronized getMessage()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasInited()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mInited:Z

    return v0
.end method

.method public declared-synchronized hasMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lmiui/app/screenelement/RendererController;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Lmiui/app/screenelement/RendererController$Listener;->init()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lmiui/app/screenelement/RendererController;->mInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #l:Lmiui/app/screenelement/RendererController$Listener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1       #l:Lmiui/app/screenelement/RendererController$Listener;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isSelfPaused()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public onFrameRateChage(FF)V
    .locals 1
    .parameter "old"
    .parameter "cur"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->signal()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiui/app/screenelement/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->pause()V

    .end local v0           #l:Lmiui/app/screenelement/RendererController$Listener;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pendingRender()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    return v0
.end method

.method public declared-synchronized postMessage(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->signal()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->resume()V

    .end local v0           #l:Lmiui/app/screenelement/RendererController$Listener;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public selfPause()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-eqz v1, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->pause()V

    .end local v0           #l:Lmiui/app/screenelement/RendererController$Listener;
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public selfResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v1, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->resume()V

    .end local v0           #l:Lmiui/app/screenelement/RendererController$Listener;
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v1}, Lmiui/app/screenelement/RenderThread;->signal()V

    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v1, v3}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    goto :goto_0
.end method

.method public setCurFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    iput p1, p0, Lmiui/app/screenelement/RendererController;->mCurFramerate:F

    return-void
.end method

.method public setFrameTime(I)V
    .locals 0
    .parameter "frameTime"

    .prologue
    iput p1, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    iput-wide p1, p0, Lmiui/app/screenelement/RendererController;->mLastUpdateSystemTime:J

    return-void
.end method

.method public setListener(Lmiui/app/screenelement/RendererController$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRenderThread(Lmiui/app/screenelement/RenderThread;)V
    .locals 0
    .parameter "renderThread"

    .prologue
    iput-object p1, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    return v0
.end method

.method public tick(J)V
    .locals 2
    .parameter "currentTime"

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmiui/app/screenelement/RendererController$Listener;->tick(J)V

    :cond_0
    return-void
.end method

.method public updateFramerate(J)J
    .locals 3
    .parameter "time"

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmiui/app/screenelement/RendererController$Listener;->updateFramerate(J)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0
.end method
