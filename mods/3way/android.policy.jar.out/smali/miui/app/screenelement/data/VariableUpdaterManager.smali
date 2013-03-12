.class public Lmiui/app/screenelement/data/VariableUpdaterManager;
.super Ljava/lang/Object;
.source "VariableUpdaterManager.java"


# instance fields
.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field private mUpdaters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/data/VariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 16
    return-void
.end method


# virtual methods
.method public add(Lmiui/app/screenelement/data/VariableUpdater;)V
    .locals 1
    .parameter "updater"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public addFromTag(Ljava/lang/String;)V
    .locals 9
    .parameter "tag"

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 77
    :cond_0
    return-void

    .line 62
    :cond_1
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, updaters:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 64
    .local v6, s:Ljava/lang/String;
    move-object v4, v6

    .line 65
    .local v4, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 66
    .local v5, property:Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 67
    .local v1, dotPos:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 68
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 69
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    :cond_2
    const-string v8, "DateTime"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 72
    new-instance v8, Lmiui/app/screenelement/data/DateTimeVariableUpdater;

    invoke-direct {v8, p0, v5}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    .line 63
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_4
    const-string v8, "Battery"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 74
    new-instance v8, Lmiui/app/screenelement/data/BatteryVariableUpdater;

    invoke-direct {v8, p0}, Lmiui/app/screenelement/data/BatteryVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {p0, v8}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    goto :goto_1
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/VariableUpdater;

    .line 52
    .local v1, updater:Lmiui/app/screenelement/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/app/screenelement/data/VariableUpdater;->finish()V

    goto :goto_0

    .line 53
    .end local v1           #updater:Lmiui/app/screenelement/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public getContext()Lmiui/app/screenelement/ScreenContext;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 31
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/VariableUpdater;

    .line 32
    .local v1, updater:Lmiui/app/screenelement/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/app/screenelement/data/VariableUpdater;->init()V

    goto :goto_0

    .line 33
    .end local v1           #updater:Lmiui/app/screenelement/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 46
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/VariableUpdater;

    .line 47
    .local v1, updater:Lmiui/app/screenelement/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/app/screenelement/data/VariableUpdater;->pause()V

    goto :goto_0

    .line 48
    .end local v1           #updater:Lmiui/app/screenelement/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public remove(Lmiui/app/screenelement/data/VariableUpdater;)V
    .locals 1
    .parameter "updater"

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 41
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/VariableUpdater;

    .line 42
    .local v1, updater:Lmiui/app/screenelement/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/app/screenelement/data/VariableUpdater;->resume()V

    goto :goto_0

    .line 43
    .end local v1           #updater:Lmiui/app/screenelement/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 36
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/VariableUpdater;

    .line 37
    .local v1, updater:Lmiui/app/screenelement/data/VariableUpdater;
    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/data/VariableUpdater;->tick(J)V

    goto :goto_0

    .line 38
    .end local v1           #updater:Lmiui/app/screenelement/data/VariableUpdater;
    :cond_0
    return-void
.end method
