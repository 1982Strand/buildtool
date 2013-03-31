.class public Lcom/miui/antispam/firewall/FirewallLog;
.super Landroid/app/Activity;
.source "FirewallLog.java"


# instance fields
.field private mFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

.field private mQueryTarget:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "queryTarget"

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    iput p1, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    .line 14
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallLog;->setContentView(I)V

    .line 21
    new-instance v0, Lcom/miui/antispam/firewall/FirewallLogFragment;

    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/antispam/firewall/FirewallLogFragment;-><init>(IZZ)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    .line 22
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09000c

    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLog;->mFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 25
    return-void
.end method
