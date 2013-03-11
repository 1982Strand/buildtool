.class public Lmiui/app/screenelement/RendererCore;
.super Ljava/lang/Object;
.source "RendererCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/RendererCore$OnReleaseListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCore"


# instance fields
.field private mCleaned:Z

.field private mListener:Lmiui/app/screenelement/SingleRootListener;

.field private mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

.field private mOnReleaseListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/screenelement/RendererCore$OnReleaseListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z

.field private mRendererController:Lmiui/app/screenelement/RendererController;

.field private mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mThread:Lmiui/app/screenelement/RenderThread;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lmiui/app/screenelement/MultipleRenderable;

    invoke-direct {v0}, Lmiui/app/screenelement/MultipleRenderable;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererCore;->mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

    .line 30
    invoke-direct {p0, p1}, Lmiui/app/screenelement/RendererCore;->attach(Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RenderThread;)V
    .locals 1
    .parameter "root"
    .parameter "t"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lmiui/app/screenelement/MultipleRenderable;

    invoke-direct {v0}, Lmiui/app/screenelement/MultipleRenderable;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererCore;->mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

    .line 34
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/RendererCore;->attach(Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RenderThread;)V

    .line 35
    return-void
.end method

.method private attach(Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/app/screenelement/RenderThread;->globalThread(Z)Lmiui/app/screenelement/RenderThread;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/RendererCore;->attach(Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RenderThread;)V

    .line 120
    return-void
.end method

.method private attach(Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RenderThread;)V
    .locals 3
    .parameter "root"
    .parameter "t"

    .prologue
    .line 123
    iput-object p2, p0, Lmiui/app/screenelement/RendererCore;->mThread:Lmiui/app/screenelement/RenderThread;

    .line 124
    iput-object p1, p0, Lmiui/app/screenelement/RendererCore;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 125
    new-instance v0, Lmiui/app/screenelement/SingleRootListener;

    iget-object v1, p0, Lmiui/app/screenelement/RendererCore;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v2, p0, Lmiui/app/screenelement/RendererCore;->mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/SingleRootListener;-><init>(Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RendererController$IRenderable;)V

    iput-object v0, p0, Lmiui/app/screenelement/RendererCore;->mListener:Lmiui/app/screenelement/SingleRootListener;

    .line 126
    new-instance v0, Lmiui/app/screenelement/RendererController;

    iget-object v1, p0, Lmiui/app/screenelement/RendererCore;->mListener:Lmiui/app/screenelement/SingleRootListener;

    invoke-direct {v0, v1}, Lmiui/app/screenelement/RendererController;-><init>(Lmiui/app/screenelement/RendererController$Listener;)V

    iput-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    .line 127
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->selfPause()V

    .line 128
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v1, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->setRenderController(Lmiui/app/screenelement/RendererController;)V

    .line 129
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mThread:Lmiui/app/screenelement/RenderThread;

    iget-object v1, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->addRendererController(Lmiui/app/screenelement/RendererController;)V

    .line 130
    return-void
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;)Lmiui/app/screenelement/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/app/screenelement/RenderThread;->globalThread(Z)Lmiui/app/screenelement/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/app/screenelement/RendererCore;->fromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/app/screenelement/RenderThread;)Lmiui/app/screenelement/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/app/screenelement/RenderThread;)Lmiui/app/screenelement/RendererCore;
    .locals 9
    .parameter "context"
    .parameter "path"
    .parameter "t"

    .prologue
    const/4 v8, 0x0

    .line 42
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 43
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v8

    .line 57
    :goto_0
    return-object v2

    .line 48
    :cond_3
    new-instance v2, Lmiui/app/screenelement/util/ZipResourceLoader;

    invoke-direct {v2, p1}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/app/screenelement/ResourceLoader;

    move-result-object v1

    .line 49
    .local v1, loader:Lmiui/app/screenelement/ResourceLoader;
    new-instance v0, Lmiui/app/screenelement/LifecycleResourceManager;

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0x36ee80

    invoke-direct/range {v0 .. v5}, Lmiui/app/screenelement/LifecycleResourceManager;-><init>(Lmiui/app/screenelement/ResourceLoader;JJ)V

    .line 51
    .local v0, rm:Lmiui/app/screenelement/LifecycleResourceManager;
    new-instance v6, Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v6, p0, v0}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V

    .line 52
    .local v6, mElementContext:Lmiui/app/screenelement/ScreenContext;
    new-instance v7, Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v7, v6}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 53
    .local v7, root:Lmiui/app/screenelement/ScreenElementRoot;
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lmiui/app/screenelement/ScreenElementRoot;->setDefaultFramerate(F)V

    .line 54
    invoke-virtual {v7}, Lmiui/app/screenelement/ScreenElementRoot;->load()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v8

    .line 55
    goto :goto_0

    .line 57
    :cond_4
    new-instance v2, Lmiui/app/screenelement/RendererCore;

    invoke-direct {v2, v7, p2}, Lmiui/app/screenelement/RendererCore;-><init>(Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RenderThread;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addRenderable(Lmiui/app/screenelement/RendererController$IRenderable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/MultipleRenderable;->add(Lmiui/app/screenelement/RendererController$IRenderable;)V

    .line 69
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/RendererCore;->mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

    invoke-virtual {v2}, Lmiui/app/screenelement/MultipleRenderable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->selfResume()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererCore;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererCore;->mCleaned:Z

    .line 134
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/ScreenElementRoot;->setRenderController(Lmiui/app/screenelement/RendererController;)V

    .line 137
    iput-object v3, p0, Lmiui/app/screenelement/RendererCore;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 139
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mThread:Lmiui/app/screenelement/RenderThread;

    iget-object v1, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->removeRendererController(Lmiui/app/screenelement/RendererController;)V

    .line 141
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->finish()V

    .line 142
    iput-object v3, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    .line 143
    iput-object v3, p0, Lmiui/app/screenelement/RendererCore;->mThread:Lmiui/app/screenelement/RenderThread;

    .line 145
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lmiui/app/screenelement/RendererCore;->cleanUp()V

    .line 150
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 151
    return-void
.end method

.method public getRoot()Lmiui/app/screenelement/ScreenElementRoot;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    return-object v0
.end method

.method public declared-synchronized pauseRenderable(Lmiui/app/screenelement/RendererController$IRenderable;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lmiui/app/screenelement/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_1
    iget-object v1, p0, Lmiui/app/screenelement/RendererCore;->mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/MultipleRenderable;->pause(Lmiui/app/screenelement/RendererController$IRenderable;)I

    move-result v0

    .line 93
    .local v0, active:I
    if-nez v0, :cond_0

    .line 94
    const-string v1, "RendererCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "self pause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->selfPause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    .end local v0           #active:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeRenderable(Lmiui/app/screenelement/RendererController$IRenderable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/MultipleRenderable;->remove(Lmiui/app/screenelement/RendererController$IRenderable;)V

    .line 79
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/RendererCore;->mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

    invoke-virtual {v2}, Lmiui/app/screenelement/MultipleRenderable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

    invoke-virtual {v0}, Lmiui/app/screenelement/MultipleRenderable;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->selfPause()V

    .line 82
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererCore;->mReleased:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererCore$OnReleaseListener;

    invoke-interface {v0, p0}, Lmiui/app/screenelement/RendererCore$OnReleaseListener;->OnRendererCoreReleased(Lmiui/app/screenelement/RendererCore;)V

    .line 84
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererCore;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 113
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererCore;->mCleaned:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public declared-synchronized resumeRenderable(Lmiui/app/screenelement/RendererController$IRenderable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mMultipleRenderable:Lmiui/app/screenelement/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/MultipleRenderable;->resume(Lmiui/app/screenelement/RendererController$IRenderable;)I

    .line 104
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "self resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lmiui/app/screenelement/RendererCore;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->selfResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnReleaseListener(Lmiui/app/screenelement/RendererCore$OnReleaseListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/app/screenelement/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    .line 62
    return-void
.end method
