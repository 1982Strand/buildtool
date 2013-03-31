.class Lcom/miui/antispam/firewall/FirewallLogFragment$5;
.super Ljava/lang/Object;
.source "FirewallLogFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/FirewallLogFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    iput-object p2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 406
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$cursor:Landroid/database/Cursor;

    invoke-static {v0, v4}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getNumber(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, address:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$cursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, body:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$cursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 409
    .local v6, date:J
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    .line 411
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$cursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$100(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 416
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->updateState()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$200(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 417
    return v5
.end method
