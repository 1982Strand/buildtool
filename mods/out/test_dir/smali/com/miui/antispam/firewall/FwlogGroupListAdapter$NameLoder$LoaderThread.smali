.class Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;
.super Landroid/os/HandlerThread;
.source "FwlogGroupListAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;->this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    .line 227
    const-string v0, "TelocationLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 238
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;

    .line 239
    .local v0, h:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    iget-object v1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;->this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    #getter for: Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->access$400(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getNameFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->name:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;->this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    #getter for: Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->access$500(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 241
    const/4 v1, 0x1

    return v1
.end method

.method public requestLoading(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    return-void
.end method
