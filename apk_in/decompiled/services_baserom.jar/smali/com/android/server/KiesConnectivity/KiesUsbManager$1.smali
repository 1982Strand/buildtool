.class Lcom/android/server/KiesConnectivity/KiesUsbManager$1;
.super Ljava/util/TimerTask;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "KiesUsbManager"

    const-string v1, "TimerTask.run()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSEject()V
    invoke-static {v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    return-void
.end method
