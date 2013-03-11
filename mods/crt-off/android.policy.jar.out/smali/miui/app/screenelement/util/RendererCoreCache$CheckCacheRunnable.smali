.class Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckCacheRunnable"
.end annotation


# instance fields
.field private mKey:Ljava/lang/Object;

.field final synthetic this$0:Lmiui/app/screenelement/util/RendererCoreCache;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/util/RendererCoreCache;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "key"

    .prologue
    .line 23
    iput-object p1, p0, Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lmiui/app/screenelement/util/RendererCoreCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lmiui/app/screenelement/util/RendererCoreCache;

    iget-object v1, p0, Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    #calls: Lmiui/app/screenelement/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lmiui/app/screenelement/util/RendererCoreCache;->access$000(Lmiui/app/screenelement/util/RendererCoreCache;Ljava/lang/Object;)V

    .line 30
    return-void
.end method
