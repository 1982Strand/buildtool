.class Lcom/miui/antispam/firewall/FirewallLogFragment$6$1;
.super Lcom/miui/antispam/firewall/DeletingDialog;
.source "FirewallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/FirewallLogFragment$6;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$6;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FirewallLogFragment$6;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$6$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$6;

    invoke-direct {p0}, Lcom/miui/antispam/firewall/DeletingDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected ok()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 430
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$6$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$6;

    iget-object v1, v1, Lcom/miui/antispam/firewall/FirewallLogFragment$6;->val$cursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$6$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$6;

    iget-object v1, v1, Lcom/miui/antispam/firewall/FirewallLogFragment$6;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$6$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$6;

    iget-object v1, v1, Lcom/miui/antispam/firewall/FirewallLogFragment$6;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$100(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 435
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$6$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$6;

    iget-object v1, v1, Lcom/miui/antispam/firewall/FirewallLogFragment$6;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->updateState()V
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$200(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 436
    return-void
.end method
