.class public Lmiui/app/screenelement/data/WebServiceBinder$Variable;
.super Lmiui/app/screenelement/data/VariableBinder$Variable;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# instance fields
.field public mPersist:Z

.field public mXPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Variables;)V
    .locals 0
    .parameter "node"
    .parameter "var"

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Variables;)V

    return-void
.end method


# virtual methods
.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "node"

    .prologue
    const-string v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mXPath:Ljava/lang/String;

    const-string v0, "persist"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mPersist:Z

    return-void
.end method
