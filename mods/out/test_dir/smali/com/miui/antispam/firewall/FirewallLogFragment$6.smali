.class Lcom/miui/antispam/firewall/FirewallLogFragment$6;
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
    .line 425
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$6;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    iput-object p2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$6;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 428
    new-instance v0, Lcom/miui/antispam/firewall/FirewallLogFragment$6$1;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/FirewallLogFragment$6$1;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment$6;)V

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment$6$1;->setMessage(I)Lcom/miui/antispam/firewall/DeletingDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$6;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/DeletingDialog;->show(Landroid/content/Context;)V

    .line 439
    const/4 v0, 0x1

    return v0
.end method
