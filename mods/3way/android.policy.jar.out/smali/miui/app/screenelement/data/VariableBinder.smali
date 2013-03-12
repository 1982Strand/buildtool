.class public abstract Lmiui/app/screenelement/data/VariableBinder;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/VariableBinder$Variable;
    }
.end annotation


# instance fields
.field protected mRoot:Lmiui/app/screenelement/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmiui/app/screenelement/data/VariableBinder;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 37
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method protected getContext()Lmiui/app/screenelement/ScreenContext;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/app/screenelement/data/VariableBinder;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
