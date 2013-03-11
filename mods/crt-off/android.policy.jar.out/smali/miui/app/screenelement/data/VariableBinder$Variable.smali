.class public Lmiui/app/screenelement/data/VariableBinder$Variable;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field public mName:Ljava/lang/String;

.field public mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field public mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lmiui/app/screenelement/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lmiui/app/screenelement/data/VariableBinder$Variable;->mType:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p3}, Lmiui/app/screenelement/data/VariableBinder$Variable;->createVar(Lmiui/app/screenelement/data/Variables;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Variables;)V
    .locals 2
    .parameter "node"
    .parameter "var"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    const-string v0, "Variable"

    const-string v1, "Variable node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    .line 67
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/VariableBinder$Variable;->mType:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p2}, Lmiui/app/screenelement/data/VariableBinder$Variable;->createVar(Lmiui/app/screenelement/data/Variables;)V

    .line 69
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/data/VariableBinder$Variable;->onLoad(Lorg/w3c/dom/Element;)V

    .line 70
    return-void
.end method

.method private createVar(Lmiui/app/screenelement/data/Variables;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 80
    const-string v0, "string"

    iget-object v1, p0, Lmiui/app/screenelement/data/VariableBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/app/screenelement/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/VariableBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/VariableBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    goto :goto_0
.end method


# virtual methods
.method public isString()Z
    .locals 2

    .prologue
    .line 73
    const-string v0, "string"

    iget-object v1, p0, Lmiui/app/screenelement/data/VariableBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 77
    return-void
.end method
