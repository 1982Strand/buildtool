.class public Lmiui/app/screenelement/gadget/GadgetLoader;
.super Ljava/lang/Object;
.source "GadgetLoader.java"


# static fields
.field private static final GADGET_CONTAINER_NAME:Ljava/lang/String; = "gadget_container"

.field private static final LOG_TAG:Ljava/lang/String; = "GadgetLoader"


# instance fields
.field private mRoot:Lmiui/app/screenelement/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmiui/app/screenelement/gadget/GadgetLoader;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 22
    return-void
.end method

.method private getBaseDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, ""

    return-object v0
.end method

.method private loadGadget(Lmiui/app/screenelement/util/ConfigFile$Gadget;)Lmiui/app/screenelement/gadget/GadgetScreenElement;
    .locals 7
    .parameter "g"

    .prologue
    .line 43
    const-string v4, "GadgetLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start loading gadget package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lmiui/app/screenelement/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lmiui/app/screenelement/gadget/GadgetLoader;->getBaseDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lmiui/app/screenelement/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    const-string v4, "GadgetLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gadget package does not exist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lmiui/app/screenelement/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v2, 0x0

    .line 56
    :goto_0
    return-object v2

    .line 49
    :cond_0
    iget-object v4, p0, Lmiui/app/screenelement/gadget/GadgetLoader;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    .line 50
    .local v0, c:Lmiui/app/screenelement/ScreenContext;
    new-instance v1, Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    new-instance v5, Lmiui/app/screenelement/util/ZipResourceLoader;

    invoke-direct {v5, v3}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/app/screenelement/ResourceLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceLoader;)V

    .line 52
    .local v1, context:Lmiui/app/screenelement/ScreenContext;
    invoke-virtual {v1, v0}, Lmiui/app/screenelement/ScreenContext;->setParentContext(Lmiui/app/screenelement/ScreenContext;)V

    .line 53
    new-instance v2, Lmiui/app/screenelement/gadget/GadgetScreenElement;

    invoke-direct {v2, v1}, Lmiui/app/screenelement/gadget/GadgetScreenElement;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 54
    .local v2, gadget:Lmiui/app/screenelement/gadget/GadgetScreenElement;
    invoke-virtual {v2}, Lmiui/app/screenelement/gadget/GadgetScreenElement;->load()Z

    .line 55
    iget v4, p1, Lmiui/app/screenelement/util/ConfigFile$Gadget;->x:I

    iget v5, p1, Lmiui/app/screenelement/util/ConfigFile$Gadget;->y:I

    invoke-virtual {v2, v4, v5}, Lmiui/app/screenelement/gadget/GadgetScreenElement;->setPosition(II)V

    goto :goto_0
.end method


# virtual methods
.method public load(Ljava/util/Collection;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lmiui/app/screenelement/util/ConfigFile$Gadget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, gadgets:Ljava/util/Collection;,"Ljava/util/Collection<Lmiui/app/screenelement/util/ConfigFile$Gadget;>;"
    iget-object v5, p0, Lmiui/app/screenelement/gadget/GadgetLoader;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v6, "gadget_container"

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v4

    .line 26
    .local v4, se:Lmiui/app/screenelement/elements/ScreenElement;
    const/4 v1, 0x0

    .line 27
    .local v1, gadgetContainer:Lmiui/app/screenelement/elements/ElementGroup;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 28
    check-cast v1, Lmiui/app/screenelement/elements/ElementGroup;

    .line 30
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/util/ConfigFile$Gadget;

    .line 31
    .local v0, g:Lmiui/app/screenelement/util/ConfigFile$Gadget;
    invoke-direct {p0, v0}, Lmiui/app/screenelement/gadget/GadgetLoader;->loadGadget(Lmiui/app/screenelement/util/ConfigFile$Gadget;)Lmiui/app/screenelement/gadget/GadgetScreenElement;

    move-result-object v2

    .line 32
    .local v2, gs:Lmiui/app/screenelement/gadget/GadgetScreenElement;
    if-eqz v2, :cond_1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {v1, v2}, Lmiui/app/screenelement/elements/ElementGroup;->addElement(Lmiui/app/screenelement/elements/ScreenElement;)V

    goto :goto_0

    .line 36
    :cond_2
    iget-object v5, p0, Lmiui/app/screenelement/gadget/GadgetLoader;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v5, v2}, Lmiui/app/screenelement/ScreenElementRoot;->addElement(Lmiui/app/screenelement/elements/ScreenElement;)V

    goto :goto_0

    .line 40
    .end local v0           #g:Lmiui/app/screenelement/util/ConfigFile$Gadget;
    .end local v2           #gs:Lmiui/app/screenelement/gadget/GadgetScreenElement;
    :cond_3
    return-void
.end method
