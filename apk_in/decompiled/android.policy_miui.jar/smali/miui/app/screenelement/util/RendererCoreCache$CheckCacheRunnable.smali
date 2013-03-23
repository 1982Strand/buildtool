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
    iput-object p1, p0, Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lmiui/app/screenelement/util/RendererCoreCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lmiui/app/screenelement/util/RendererCoreCache;

    iget-object v1, p0, Lmiui/app/screenelement/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    #calls: Lmiui/app/screenelement/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lmiui/app/screenelement/util/RendererCoreCache;->access$000(Lmiui/app/screenelement/util/RendererCoreCache;Ljava/lang/Object;)V

    return-void
.end method
