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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lmiui/app/screenelement/FramerateTokenList;

    invoke-direct {v0}, Lmiui/app/screenelement/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    .line 57
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    .line 64
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/RendererController;->setListener(Lmiui/app/screenelement/RendererController$Listener;)V

    .line 65
    new-instance v0, Lmiui/app/screenelement/FramerateTokenList;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/FramerateTokenList;-><init>(Lmiui/app/screenelement/FramerateTokenList$FramerateChangeListener;)V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    .line 66
    return-void
.end method

.method private getListener()Lmiui/app/screenelement/RendererController$Listener;
    .locals 1

    .prologue
    .line 282
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
    .line 85
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/FramerateTokenList;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender()V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .line 169
    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    .line 171
    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->doRender()V

    .line 173
    :cond_0
    return-void
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    .line 232
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->signal()V

    .line 233
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 4

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lmiui/app/screenelement/RendererController;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 103
    .local v1, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v1, :cond_1

    .line 105
    :try_start_2
    invoke-interface {v1}, Lmiui/app/screenelement/RendererController$Listener;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    :cond_1
    :goto_1
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lmiui/app/screenelement/RendererController;->mInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 99
    .end local v1           #l:Lmiui/app/screenelement/RendererController$Listener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 106
    .restart local v1       #l:Lmiui/app/screenelement/RendererController$Listener;
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
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
    .line 77
    iget v0, p0, Lmiui/app/screenelement/RendererController;->mCurFramerate:F

    return v0
.end method

.method public getFrameTime()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    return v0
.end method

.method public getFramerate()F
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    invoke-virtual {v0}, Lmiui/app/screenelement/FramerateTokenList;->getFramerate()F

    move-result v0

    return v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lmiui/app/screenelement/RendererController;->mLastUpdateSystemTime:J

    return-wide v0
.end method

.method public declared-synchronized getMessage()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 267
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
    .line 292
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mInited:Z

    return v0
.end method

.method public declared-synchronized hasMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 263
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
    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lmiui/app/screenelement/RendererController;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 119
    .local v1, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v1, :cond_1

    .line 121
    :try_start_2
    invoke-interface {v1}, Lmiui/app/screenelement/RendererController$Listener;->init()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :cond_1
    :goto_1
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lmiui/app/screenelement/RendererController;->mInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 115
    .end local v1           #l:Lmiui/app/screenelement/RendererController$Listener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 122
    .restart local v1       #l:Lmiui/app/screenelement/RendererController$Listener;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
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
    .line 227
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public onFrameRateChage(FF)V
    .locals 1
    .parameter "old"
    .parameter "cur"

    .prologue
    .line 287
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 288
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->signal()V

    .line 289
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 256
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .line 257
    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, p1}, Lmiui/app/screenelement/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V

    .line 260
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 132
    iget-object v2, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    .line 134
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v1, :cond_0

    .line 135
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .line 136
    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->pause()V

    .line 140
    .end local v0           #l:Lmiui/app/screenelement/RendererController$Listener;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    .line 143
    return-void

    .line 140
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
    .line 176
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    return v0
.end method

.method public declared-synchronized postMessage(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 274
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 276
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 278
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    .line 94
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->signal()V

    .line 96
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v2, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    .line 148
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v1, :cond_0

    .line 149
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .line 150
    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->resume()V

    .line 154
    .end local v0           #l:Lmiui/app/screenelement/RendererController$Listener;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iput-boolean v3, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    .line 157
    return-void

    .line 154
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
    .line 188
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-eqz v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 191
    :try_start_0
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-eqz v1, :cond_1

    .line 192
    monitor-exit v2

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 193
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    .line 194
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    if-nez v1, :cond_2

    .line 195
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .line 196
    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_2

    .line 197
    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->pause()V

    .line 200
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

    .line 204
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 207
    :try_start_0
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v1, :cond_2

    .line 208
    monitor-exit v2

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 209
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    .line 210
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    if-nez v1, :cond_3

    .line 211
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .line 212
    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_3

    .line 213
    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->resume()V

    .line 216
    .end local v0           #l:Lmiui/app/screenelement/RendererController$Listener;
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v1}, Lmiui/app/screenelement/RenderThread;->signal()V

    .line 222
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v1, v3}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    goto :goto_0
.end method

.method public setCurFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 81
    iput p1, p0, Lmiui/app/screenelement/RendererController;->mCurFramerate:F

    .line 82
    return-void
.end method

.method public setFrameTime(I)V
    .locals 0
    .parameter "frameTime"

    .prologue
    .line 240
    iput p1, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    .line 241
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 184
    iput-wide p1, p0, Lmiui/app/screenelement/RendererController;->mLastUpdateSystemTime:J

    .line 185
    return-void
.end method

.method public setListener(Lmiui/app/screenelement/RendererController$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 69
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Ljava/lang/ref/WeakReference;

    .line 70
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRenderThread(Lmiui/app/screenelement/RenderThread;)V
    .locals 0
    .parameter "renderThread"

    .prologue
    .line 236
    iput-object p1, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    .line 237
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    return v0
.end method

.method public tick(J)V
    .locals 2
    .parameter "currentTime"

    .prologue
    .line 248
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    .line 249
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .line 250
    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1, p2}, Lmiui/app/screenelement/RendererController$Listener;->tick(J)V

    .line 253
    :cond_0
    return-void
.end method

.method public updateFramerate(J)J
    .locals 3
    .parameter "time"

    .prologue
    .line 160
    invoke-direct {p0}, Lmiui/app/screenelement/RendererController;->getListener()Lmiui/app/screenelement/RendererController$Listener;

    move-result-object v0

    .line 161
    .local v0, l:Lmiui/app/screenelement/RendererController$Listener;
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1, p2}, Lmiui/app/screenelement/RendererController$Listener;->updateFramerate(J)J

    move-result-wide v1

    .line 164
    :goto_0
    return-wide v1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0
.end method
