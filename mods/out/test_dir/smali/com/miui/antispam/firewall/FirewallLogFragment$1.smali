.class Lcom/miui/antispam/firewall/FirewallLogFragment$1;
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

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$1;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    iput-object p2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    .line 343
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$1;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    iget-object v5, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$1;->val$number:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "com.android.phone"

    invoke-static {v1, v2, v3}, Lmiui/security/IntentScope;->processIntentScope(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 345
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 346
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$1;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->startActivity(Landroid/content/Intent;)V

    .line 347
    const/4 v1, 0x1

    return v1
.end method
