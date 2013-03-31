.class Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$1;
.super Landroid/os/Handler;
.source "FwlogGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$1;->this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$1;->this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    #getter for: Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->access$000(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;

    .line 135
    .local v0, h:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    iget-object v1, v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->view:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$1;->this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    #getter for: Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mHolderPool:Lmiui/util/SimplePool$PoolInstance;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->access$100(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 139
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$1;->this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    #calls: Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->requestLoading()V
    invoke-static {v1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->access$200(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)V

    .line 141
    return-void

    .line 139
    .end local v0           #h:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
