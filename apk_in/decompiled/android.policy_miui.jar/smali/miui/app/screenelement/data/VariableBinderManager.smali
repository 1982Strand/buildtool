.class public Lmiui/app/screenelement/data/VariableBinderManager;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"

# interfaces
.implements Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"


# instance fields
.field private mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mVariableBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/data/VariableBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    iput-object p2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/data/VariableBinderManager;->load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    :cond_0
    return-void
.end method

.method private static createBinder(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/data/VariableBinderManager;)Lmiui/app/screenelement/data/VariableBinder;
    .locals 3
    .parameter "ele"
    .parameter "root"
    .parameter "m"

    .prologue
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .local v1, tag:Ljava/lang/String;
    :try_start_0
    const-string v2, "ContentProviderBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lmiui/app/screenelement/data/ContentProviderBinder;

    invoke-direct {v2, p0, p1, p2}, Lmiui/app/screenelement/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "WebServiceBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lmiui/app/screenelement/data/WebServiceBinder;

    invoke-direct {v2, p0, p1}, Lmiui/app/screenelement/data/WebServiceBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .end local v0           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "OrientationSensorBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lmiui/app/screenelement/data/OrientationSensorBinder;

    invoke-direct {v2, p0, p1}, Lmiui/app/screenelement/data/OrientationSensorBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    :cond_3
    const-string v2, "BroadcastBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lmiui/app/screenelement/data/BroadcastBinder;

    invoke-direct {v2, p0, p1}, Lmiui/app/screenelement/data/BroadcastBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    :try_end_1
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 2
    .parameter "node"
    .parameter "root"

    .prologue
    if-nez p1, :cond_0

    const-string v0, "VariableBinderManager"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/data/VariableBinderManager;->loadBinders(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    return-void
.end method

.method private loadBinders(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 6
    .parameter "node"
    .parameter "root"

    .prologue
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .local v2, item:Lorg/w3c/dom/Element;
    invoke-static {v2, p2, p0}, Lmiui/app/screenelement/data/VariableBinderManager;->createBinder(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/data/VariableBinderManager;)Lmiui/app/screenelement/data/VariableBinder;

    move-result-object v3

    .local v3, vb:Lmiui/app/screenelement/data/VariableBinder;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2           #item:Lorg/w3c/dom/Element;
    .end local v3           #vb:Lmiui/app/screenelement/data/VariableBinder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addContentProviderBinder(Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "uri"

    .prologue
    new-instance v0, Lmiui/app/screenelement/util/TextFormatter;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/data/VariableBinderManager;->addContentProviderBinder(Lmiui/app/screenelement/util/TextFormatter;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "uriFormat"
    .parameter "uriParas"

    .prologue
    new-instance v0, Lmiui/app/screenelement/util/TextFormatter;

    invoke-direct {v0, p1, p2}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/data/VariableBinderManager;->addContentProviderBinder(Lmiui/app/screenelement/util/TextFormatter;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Lmiui/app/screenelement/util/TextFormatter;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "uri"

    .prologue
    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder;

    iget-object v1, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lmiui/app/screenelement/data/ContentProviderBinder;-><init>(Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V

    .local v0, binder:Lmiui/app/screenelement/data/ContentProviderBinder;
    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUriFormatter:Lmiui/app/screenelement/util/TextFormatter;

    iget-object v1, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;

    invoke-direct {v1, v0}, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V

    return-object v1
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/app/screenelement/data/VariableBinder;
    .locals 3
    .parameter "name"

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinder;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinder;->finish()V

    goto :goto_0

    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinder;->init()V

    goto :goto_0

    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public onQueryCompleted(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    iget-object v4, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    instance-of v4, v0, Lmiui/app/screenelement/data/ContentProviderBinder;

    if-eqz v4, :cond_0

    move-object v1, v0

    check-cast v1, Lmiui/app/screenelement/data/ContentProviderBinder;

    .local v1, cp:Lmiui/app/screenelement/data/ContentProviderBinder;
    invoke-virtual {v1}, Lmiui/app/screenelement/data/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v2

    .local v2, dependency:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lmiui/app/screenelement/data/ContentProviderBinder;->startQuery()V

    goto :goto_0

    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    .end local v1           #cp:Lmiui/app/screenelement/data/ContentProviderBinder;
    .end local v2           #dependency:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinder;->pause()V

    goto :goto_0

    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinder;->resume()V

    goto :goto_0

    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    :cond_0
    return-void
.end method
