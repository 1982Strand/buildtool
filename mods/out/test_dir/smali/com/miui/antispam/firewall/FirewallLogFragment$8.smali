.class Lcom/miui/antispam/firewall/FirewallLogFragment$8;
.super Lcom/miui/antispam/firewall/DeletingDialog;
.source "FirewallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/FirewallLogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FirewallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$8;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-direct {p0}, Lcom/miui/antispam/firewall/DeletingDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected ok()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, count:I
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$8;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$400(Lcom/miui/antispam/firewall/FirewallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$8;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 512
    :goto_0
    if-lez v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$8;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$100(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 514
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$8;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->updateState()V
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$200(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 516
    :cond_0
    return-void

    .line 505
    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$8;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=? AND number=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$8;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$500(Lcom/miui/antispam/firewall/FirewallLogFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
