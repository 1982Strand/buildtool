.class Lcom/miui/antispam/firewall/KeywordListActivity$3;
.super Ljava/lang/Object;
.source "KeywordListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/KeywordListActivity;->buildNewDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/KeywordListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #getter for: Lcom/miui/antispam/firewall/KeywordListActivity;->mKeywordText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$200(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, data:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #getter for: Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$300(Lcom/miui/antispam/firewall/KeywordListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity$3;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #getter for: Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$300(Lcom/miui/antispam/firewall/KeywordListActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/miui/antispam/firewall/KeywordListActivity;->update(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$400(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v1, Lcom/miui/antispam/firewall/KeywordListActivity$3$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/antispam/firewall/KeywordListActivity$3$1;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity$3;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/antispam/firewall/KeywordListActivity$3$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
