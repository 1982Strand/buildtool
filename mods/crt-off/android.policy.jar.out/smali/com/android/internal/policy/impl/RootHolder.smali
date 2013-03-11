.class public Lcom/android/internal/policy/impl/RootHolder;
.super Ljava/lang/Object;
.source "RootHolder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RootHolder"


# instance fields
.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field private mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

.field private mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

.field private mThread:Lmiui/app/screenelement/RenderThread;

.field private mViewList:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/internal/policy/impl/AwesomeLockScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mViewList:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public cleanUp(Lcom/android/internal/policy/impl/AwesomeLockScreen;)V
    .locals 3
    .parameter "ls"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->cleanUpView()V

    .line 77
    const-string v0, "RootHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/Variables;->reset()V

    .line 80
    const-string v0, "RootHolder"

    const-string v1, "cleanUp finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->rebindView()V

    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->init()V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    .line 45
    iput-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/LifecycleResourceManager;->clear()V

    .line 48
    iput-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->setStop()V

    .line 52
    iput-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/app/screenelement/RenderThread;

    .line 54
    :cond_1
    return-void
.end method

.method public createView(Landroid/content/Context;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;
    .locals 3
    .parameter "context"

    .prologue
    .line 69
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;-><init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;Lmiui/app/screenelement/RenderThread;)V

    .line 70
    .local v0, view:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;
    const-string v1, "RootHolder"

    const-string v2, "createView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-object v0
.end method

.method public getContext()Lmiui/app/screenelement/ScreenContext;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method public getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    return-object v0
.end method

.method public getThread()Lmiui/app/screenelement/RenderThread;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/app/screenelement/RenderThread;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/policy/impl/AwesomeLockScreen;)V
    .locals 6
    .parameter "context"
    .parameter "ls"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lmiui/app/screenelement/LifecycleResourceManager;

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;

    invoke-direct {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/app/screenelement/ResourceLoader;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0x36ee80

    invoke-direct/range {v0 .. v5}, Lmiui/app/screenelement/LifecycleResourceManager;-><init>(Lmiui/app/screenelement/ResourceLoader;JJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    .line 30
    new-instance v0, Lmiui/app/screenelement/ScreenContext;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    new-instance v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;

    invoke-direct {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 31
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->load()Z

    .line 34
    new-instance v0, Lmiui/app/screenelement/RenderThread;

    invoke-direct {v0}, Lmiui/app/screenelement/RenderThread;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/app/screenelement/RenderThread;

    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->start()V

    .line 36
    const-string v0, "RootHolder"

    const-string v1, "create root"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "RootHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method
