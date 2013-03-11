.class public Lmiui/app/screenelement/util/RendererCoreCache;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Lmiui/app/screenelement/RendererCore$OnReleaseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;,
        Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCoreCache"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60


# instance fields
.field private mCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/util/RendererCoreCache;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lmiui/app/screenelement/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized checkCache(Ljava/lang/Object;)V
    .locals 7
    .parameter "key"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;

    .line 101
    .local v0, ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    iget-wide v3, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->accessTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    sub-long v1, v3, v5

    .line 105
    .local v1, t:J
    iget-wide v3, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 106
    iget-object v3, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v0           #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    .end local v1           #t:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 109
    .restart local v0       #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    .restart local v1       #t:J
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 110
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 111
    const-wide/16 v1, 0x0

    .line 113
    :cond_2
    iget-object v3, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v5, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache resheduled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized OnRendererCoreReleased(Lmiui/app/screenelement/RendererCore;)V
    .locals 6
    .parameter "rc"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnRendererCoreReleased: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, key:Ljava/lang/Object;
    iget-object v3, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;

    .line 123
    .local v2, ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    iget-object v3, v2, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/app/screenelement/RendererCore;

    if-ne v3, p1, :cond_0

    .line 124
    invoke-virtual {p0, v1}, Lmiui/app/screenelement/util/RendererCoreCache;->release(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v1           #key:Ljava/lang/Object;
    .end local v2           #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    :cond_1
    monitor-exit p0

    return-void

    .line 120
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;J)Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    .locals 3
    .parameter "key"
    .parameter "cacheTime"

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;

    .line 51
    .local v0, ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v0, :cond_0

    .line 53
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 54
    iput-wide p2, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 55
    iget-object v1, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v0           #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    .end local v0           #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;J)Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    .locals 5
    .parameter "key"
    .parameter "context"
    .parameter "path"
    .parameter "cacheTime"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p4, p5}, Lmiui/app/screenelement/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 63
    .local v1, ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 75
    .end local v1           #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    .local v2, ri:Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 66
    .end local v2           #ri:Ljava/lang/Object;
    .restart local v1       #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    :cond_0
    :try_start_1
    invoke-static {p2, p3}, Lmiui/app/screenelement/RendererCore;->fromZipFile(Landroid/content/Context;Ljava/lang/String;)Lmiui/app/screenelement/RendererCore;

    move-result-object v0

    .line 67
    .local v0, r:Lmiui/app/screenelement/RendererCore;
    new-instance v1, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;

    .end local v1           #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    invoke-direct {v1, v0}, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;-><init>(Lmiui/app/screenelement/RendererCore;)V

    .line 68
    .restart local v1       #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v1, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 69
    iput-wide p4, v1, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 70
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0, p0}, Lmiui/app/screenelement/RendererCore;->setOnReleaseListener(Lmiui/app/screenelement/RendererCore$OnReleaseListener;)V

    .line 72
    new-instance v3, Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;

    invoke-direct {v3, p0, p1}, Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;-><init>(Lmiui/app/screenelement/util/RendererCoreCache;Ljava/lang/Object;)V

    iput-object v3, v1, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;

    .line 74
    :cond_1
    iget-object v3, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 75
    .restart local v2       #ri:Ljava/lang/Object;
    goto :goto_0

    .line 62
    .end local v0           #r:Lmiui/app/screenelement/RendererCore;
    .end local v1           #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    .end local v2           #ri:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized release(Ljava/lang/Object;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;

    .line 81
    .local v0, ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 83
    iget-wide v1, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    :try_start_1
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduled release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object v1, p0, Lmiui/app/screenelement/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v3, v0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    .end local v0           #ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
