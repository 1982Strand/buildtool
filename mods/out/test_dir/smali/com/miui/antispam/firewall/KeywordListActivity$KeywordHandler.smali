.class Lcom/miui/antispam/firewall/KeywordListActivity$KeywordHandler;
.super Landroid/os/Handler;
.source "KeywordListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/KeywordListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeywordHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/KeywordListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/firewall/KeywordListActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordHandler;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    .line 68
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "keyword"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, keyword:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordHandler;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    invoke-virtual {v2}, Lcom/miui/antispam/firewall/KeywordListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordHandler;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    const v4, 0x7f070055

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/miui/antispam/firewall/KeywordListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 78
    return-void
.end method
