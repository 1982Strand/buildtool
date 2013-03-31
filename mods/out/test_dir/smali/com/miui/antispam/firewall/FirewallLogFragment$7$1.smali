.class Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;
.super Lcom/miui/antispam/firewall/DeletingDialog;
.source "FirewallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/FirewallLogFragment$7;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FirewallLogFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    invoke-direct {p0}, Lcom/miui/antispam/firewall/DeletingDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected ok()V
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 450
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v1, v1, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->val$cursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, originalNumber:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v1, v1, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$300(Lcom/miui/antispam/firewall/FirewallLogFragment;)I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 453
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v1, v1, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=? AND number=?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    :goto_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v1, v1, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$100(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 471
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v1, v1, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->updateState()V
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$200(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 472
    return-void

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v1, v1, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(type=? OR type=?) AND number=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
