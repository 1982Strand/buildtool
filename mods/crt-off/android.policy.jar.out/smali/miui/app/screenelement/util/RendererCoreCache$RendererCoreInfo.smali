.class public Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RendererCoreInfo"
.end annotation


# instance fields
.field public accessTime:J

.field public cacheTime:J

.field public checkCache:Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;

.field public r:Lmiui/app/screenelement/RendererCore;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/RendererCore;)V
    .locals 2
    .parameter "rc"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 42
    iput-object p1, p0, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/app/screenelement/RendererCore;

    .line 43
    return-void
.end method
