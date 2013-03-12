.class public Lmiui/app/screenelement/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# static fields
.field public static final MAML_PREFERENCES:Ljava/lang/String; = "MamlPreferences"


# instance fields
.field public final mContext:Landroid/content/Context;

.field private mController:Lmiui/app/screenelement/RendererController;

.field public final mFactory:Lmiui/app/screenelement/elements/ScreenElementFactory;

.field public mHandler:Landroid/os/Handler;

.field private mParent:Lmiui/app/screenelement/ScreenContext;

.field public final mResourceManager:Lmiui/app/screenelement/ResourceManager;

.field public mVariables:Lmiui/app/screenelement/data/Variables;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceLoader;)V
    .locals 2
    .parameter "context"
    .parameter "loader"

    .prologue
    .line 34
    new-instance v0, Lmiui/app/screenelement/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/app/screenelement/ResourceManager;-><init>(Lmiui/app/screenelement/ResourceLoader;)V

    new-instance v1, Lmiui/app/screenelement/elements/ScreenElementFactory;

    invoke-direct {v1}, Lmiui/app/screenelement/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceLoader;Lmiui/app/screenelement/elements/ScreenElementFactory;)V
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "factory"

    .prologue
    .line 38
    new-instance v0, Lmiui/app/screenelement/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/app/screenelement/ResourceManager;-><init>(Lmiui/app/screenelement/ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"

    .prologue
    .line 30
    new-instance v0, Lmiui/app/screenelement/elements/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/app/screenelement/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V
    .locals 2
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1}, Lmiui/app/screenelement/data/Variables;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    .line 22
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, rawContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .end local v0           #rawContext:Landroid/content/Context;
    :goto_0
    iput-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    .line 45
    iput-object p3, p0, Lmiui/app/screenelement/ScreenContext;->mFactory:Lmiui/app/screenelement/elements/ScreenElementFactory;

    .line 46
    return-void

    .restart local v0       #rawContext:Landroid/content/Context;
    :cond_0
    move-object v0, p1

    .line 43
    goto :goto_0
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/RendererController;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/RendererController;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mParent:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mParent:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenContext;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/RendererController;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->doneRender()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mParent:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mParent:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->doneRender()V

    goto :goto_0
.end method

.method public getRenderController()Lmiui/app/screenelement/RendererController;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/RendererController;

    return-object v0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/RendererController;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->requestUpdate()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mParent:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mParent:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    goto :goto_0
.end method

.method public setExtraResource(I)V
    .locals 1
    .parameter "sw"

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceManager;->setExtraResource(I)V

    .line 60
    return-void
.end method

.method public setParentContext(Lmiui/app/screenelement/ScreenContext;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 102
    iput-object p1, p0, Lmiui/app/screenelement/ScreenContext;->mParent:Lmiui/app/screenelement/ScreenContext;

    .line 103
    return-void
.end method

.method public setRenderController(Lmiui/app/screenelement/RendererController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 86
    iput-object p1, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/RendererController;

    .line 87
    return-void
.end method

.method public setResourceDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceManager;->setResourceDensity(I)V

    .line 50
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    .line 53
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceManager;->setTargetDensity(I)V

    .line 54
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/RendererController;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->shouldUpdate()Z

    move-result v0

    .line 75
    :goto_0
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mParent:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mParent:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->shouldUpdate()Z

    move-result v0

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
