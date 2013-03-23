.class public Lmiui/app/screenelement/data/VariableUpdater;
.super Ljava/lang/Object;
.source "VariableUpdater.java"


# instance fields
.field private mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V
    .locals 0
    .parameter "m"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/app/screenelement/data/VariableUpdater;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    return-void
.end method

.method protected getContext()Lmiui/app/screenelement/ScreenContext;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/VariableUpdater;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    return-void
.end method

.method public tick(J)V
    .locals 0
    .parameter "currentTime"

    .prologue
    return-void
.end method
