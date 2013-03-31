.class Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;
.super Ljava/lang/Object;
.source "FwlogGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FwlogGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameLoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;,
        Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHolderPool:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/TextView;",
            "Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 130
    new-instance v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$1;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$1;-><init>(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$2;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$2;-><init>(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mHolderPool:Lmiui/util/SimplePool$PoolInstance;

    .line 166
    iput-object p1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mContext:Landroid/content/Context;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)Lmiui/util/SimplePool$PoolInstance;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mHolderPool:Lmiui/util/SimplePool$PoolInstance;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->requestLoading()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized requestLoading()V
    .locals 5

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPaused:Z

    if-nez v3, :cond_2

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, holder:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    iget-object v3, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;

    .line 207
    .local v0, h:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    move-object v1, v0

    .line 210
    .end local v0           #h:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    :cond_0
    if-eqz v1, :cond_2

    .line 211
    iget-object v3, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mLoaderThread:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;

    if-nez v3, :cond_1

    .line 212
    new-instance v3, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;

    invoke-direct {v3, p0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;-><init>(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)V

    iput-object v3, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mLoaderThread:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;

    .line 213
    iget-object v3, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mLoaderThread:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;

    invoke-virtual {v3}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;->start()V

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v1, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->view:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v3, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mLoaderThread:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;

    invoke-virtual {v3, v1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;->requestLoading(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v1           #holder:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->pause()V

    .line 181
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mLoaderThread:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mLoaderThread:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;->quit()Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mLoaderThread:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->clearCache()V

    .line 186
    return-void
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadName(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "number"

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mHolderPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v1}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;

    .line 171
    .local v0, holder:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    iput-object p1, v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->view:Landroid/widget/TextView;

    .line 172
    iput-object p2, v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->number:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-boolean v1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPaused:Z

    if-nez v1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->requestLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    .end local v0           #holder:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPaused:Z

    .line 194
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPaused:Z

    .line 198
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->requestLoading()V

    .line 201
    :cond_0
    return-void
.end method
