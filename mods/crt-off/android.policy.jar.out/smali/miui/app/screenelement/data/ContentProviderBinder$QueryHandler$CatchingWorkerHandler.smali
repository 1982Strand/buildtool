.class public Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 312
    iput-object p1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;->this$1:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    .line 313
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 314
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 320
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2

    .line 328
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v1, "ContentProviderBinder"

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 323
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v0

    .line 324
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "ContentProviderBinder"

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 325
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v0

    .line 326
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v1, "ContentProviderBinder"

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
