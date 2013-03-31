.class Lcom/miui/antispam/firewall/KeywordListActivity$3$1;
.super Landroid/os/AsyncTask;
.source "KeywordListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/KeywordListActivity$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/antispam/firewall/KeywordListActivity$3;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/KeywordListActivity$3;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3$1;->this$1:Lcom/miui/antispam/firewall/KeywordListActivity$3;

    iput-object p2, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 353
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/antispam/firewall/KeywordListActivity$3$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    .line 356
    iget-object v10, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3$1;->val$data:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, keywords:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 378
    :cond_0
    return-object v12

    .line 361
    :cond_1
    const-string v10, ",|\uff0c"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 362
    .local v9, subStrs:[Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 363
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v5, v0, v4

    .line 364
    .local v5, item:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3$1;->this$1:Lcom/miui/antispam/firewall/KeywordListActivity$3;

    iget-object v10, v10, Lcom/miui/antispam/firewall/KeywordListActivity$3;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #calls: Lcom/miui/antispam/firewall/KeywordListActivity;->isKeyword(Ljava/lang/String;)Z
    invoke-static {v10, v5}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$500(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 365
    new-instance v3, Landroid/os/HandlerThread;

    const-string v10, "KeywordListActivity_HandlerThread"

    invoke-direct {v3, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 366
    .local v3, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 367
    new-instance v2, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordHandler;

    iget-object v10, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3$1;->this$1:Lcom/miui/antispam/firewall/KeywordListActivity$3;

    iget-object v10, v10, Lcom/miui/antispam/firewall/KeywordListActivity$3;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordHandler;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;Landroid/os/Looper;)V

    .line 368
    .local v2, handler:Lcom/miui/antispam/firewall/KeywordListActivity$KeywordHandler;
    invoke-virtual {v2}, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 369
    .local v8, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v1, b:Landroid/os/Bundle;
    const-string v10, "keyword"

    invoke-virtual {v1, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 372
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 363
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #handler:Lcom/miui/antispam/firewall/KeywordListActivity$KeywordHandler;
    .end local v3           #handlerThread:Landroid/os/HandlerThread;
    .end local v8           #msg:Landroid/os/Message;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 374
    :cond_2
    iget-object v10, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3$1;->this$1:Lcom/miui/antispam/firewall/KeywordListActivity$3;

    iget-object v10, v10, Lcom/miui/antispam/firewall/KeywordListActivity$3;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #calls: Lcom/miui/antispam/firewall/KeywordListActivity;->add(Ljava/lang/String;)V
    invoke-static {v10, v5}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$600(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;)V

    goto :goto_1
.end method
