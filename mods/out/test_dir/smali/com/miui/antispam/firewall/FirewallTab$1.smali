.class Lcom/miui/antispam/firewall/FirewallTab$1;
.super Ljava/lang/Object;
.source "FirewallTab.java"

# interfaces
.implements Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FirewallTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/FirewallTab;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FirewallTab;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallTab$1;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 50
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0
    .parameter "position"
    .parameter "ratio"
    .parameter "fromHasActionMenu"
    .parameter "toHasActionMenu"

    .prologue
    .line 39
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$1;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    #calls: Lcom/miui/antispam/firewall/FirewallTab;->clearNotification()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->access$000(Lcom/miui/antispam/firewall/FirewallTab;)V

    .line 46
    :cond_0
    return-void
.end method
