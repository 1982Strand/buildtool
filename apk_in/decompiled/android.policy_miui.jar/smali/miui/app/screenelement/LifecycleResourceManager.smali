.class public Lmiui/app/screenelement/LifecycleResourceManager;
.super Lmiui/app/screenelement/ResourceManager;
.source "LifecycleResourceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleResourceManager"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field private static mLastCheckCacheTime:J


# instance fields
.field private mCheckTime:J

.field private mInactiveTime:J


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ResourceLoader;JJ)V
    .locals 0
    .parameter "resourceLoader"
    .parameter "inactiveTime"
    .parameter "checkTime"

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ResourceManager;-><init>(Lmiui/app/screenelement/ResourceLoader;)V

    iput-wide p2, p0, Lmiui/app/screenelement/LifecycleResourceManager;->mInactiveTime:J

    iput-wide p4, p0, Lmiui/app/screenelement/LifecycleResourceManager;->mCheckTime:J

    return-void
.end method


# virtual methods
.method public checkCache()V
    .locals 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .local v1, currentTimeMillis:J
    sget-wide v7, Lmiui/app/screenelement/LifecycleResourceManager;->mLastCheckCacheTime:J

    sub-long v7, v1, v7

    iget-wide v9, p0, Lmiui/app/screenelement/LifecycleResourceManager;->mCheckTime:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v7, "LifecycleResourceManager"

    const-string v8, "beging check cache... "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, mToBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lmiui/app/screenelement/LifecycleResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, key:Ljava/lang/String;
    iget-object v7, p0, Lmiui/app/screenelement/LifecycleResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    .local v0, bi:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    iget-wide v7, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mLastVisitTime:J

    sub-long v7, v1, v7

    iget-wide v9, p0, Lmiui/app/screenelement/LifecycleResourceManager;->mInactiveTime:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #bi:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lmiui/app/screenelement/LifecycleResourceManager;->mBitmaps:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, s:Ljava/lang/String;
    const-string v7, "LifecycleResourceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remove cache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lmiui/app/screenelement/LifecycleResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v6           #s:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-wide v1, Lmiui/app/screenelement/LifecycleResourceManager;->mLastCheckCacheTime:J

    goto :goto_0
.end method

.method public finish(Z)V
    .locals 0
    .parameter "keepResource"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/screenelement/LifecycleResourceManager;->checkCache()V

    :cond_0
    invoke-super {p0, p1}, Lmiui/app/screenelement/ResourceManager;->finish(Z)V

    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lmiui/app/screenelement/LifecycleResourceManager;->checkCache()V

    return-void
.end method
