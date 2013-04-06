.class public Lcom/android/internal/policy/impl/RootHolder;
.super Ljava/lang/Object;
.source "RootHolder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RootHolder"


# instance fields
.field private mContext:Lmiui/maml/ScreenContext;

.field private mResourceMgr:Lmiui/maml/LifecycleResourceManager;

.field private mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

.field private mThread:Lmiui/maml/RenderThread;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->cleanUpView()V

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

    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0}, Lmiui/maml/data/Variables;->reset()V

    const-string v0, "RootHolder"

    const-string v1, "cleanUp finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->rebindView()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->init()V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    invoke-virtual {v0}, Lmiui/maml/LifecycleResourceManager;->clear()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->setStop()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/maml/RenderThread;

    :cond_1
    return-void
.end method

.method public createView(Landroid/content/Context;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;
    .locals 3
    .parameter "context"

    .prologue
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/maml/RenderThread;

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;-><init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;Lmiui/maml/RenderThread;)V

    .local v0, view:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;
    const-string v1, "RootHolder"

    const-string v2, "createView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mContext:Lmiui/maml/ScreenContext;

    return-object v0
.end method

.method public getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    return-object v0
.end method

.method public getThread()Lmiui/maml/RenderThread;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/maml/RenderThread;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/policy/impl/AwesomeLockScreen;)V
    .locals 6
    .parameter "context"
    .parameter "ls"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/maml/LifecycleResourceManager;

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;

    invoke-direct {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0x36ee80

    invoke-direct/range {v0 .. v5}, Lmiui/maml/LifecycleResourceManager;-><init>(Lmiui/maml/ResourceLoader;JJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    new-instance v0, Lmiui/maml/ScreenContext;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    new-instance v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;

    invoke-direct {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mContext:Lmiui/maml/ScreenContext;

    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RootHolder;->mContext:Lmiui/maml/ScreenContext;

    invoke-direct {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->load()Z

    new-instance v0, Lmiui/maml/RenderThread;

    invoke-direct {v0}, Lmiui/maml/RenderThread;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/maml/RenderThread;

    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->start()V

    const-string v0, "RootHolder"

    const-string v1, "create root"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

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

    return-void
.end method
