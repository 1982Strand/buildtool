.class public Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;


# direct methods
.method protected constructor <init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V
    .locals 0
    .parameter "binder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILmiui/app/screenelement/data/Variables;)V
    .locals 2
    .parameter "name"
    .parameter "type"
    .parameter "column"
    .parameter "row"
    .parameter "var"

    .prologue
    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;

    invoke-direct {v0, p1, p2, p5}, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .local v0, v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    iput-object p3, v0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    iput p4, v0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mRow:I

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->addVariable(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V

    return-void
.end method

.method public setArgs([Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "args"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public setColumns([Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "columns"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    return-object p0
.end method

.method public setCountName(Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "countName"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->createCountVar()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "order"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "where"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    new-instance v1, Lmiui/app/screenelement/util/TextFormatter;

    invoke-direct {v1, p1}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mWhereFormatter:Lmiui/app/screenelement/util/TextFormatter;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "whereFormat"
    .parameter "whereParas"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    new-instance v1, Lmiui/app/screenelement/util/TextFormatter;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mWhereFormatter:Lmiui/app/screenelement/util/TextFormatter;

    return-object p0
.end method
