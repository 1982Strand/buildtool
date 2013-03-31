.class Lcom/miui/antispam/firewall/ShowModifyPreference$1;
.super Ljava/lang/Object;
.source "ShowModifyPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/ShowModifyPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/ShowModifyPreference;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/ShowModifyPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/antispam/firewall/ShowModifyPreference$1;->this$0:Lcom/miui/antispam/firewall/ShowModifyPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/antispam/firewall/ShowModifyPreference$1;->this$0:Lcom/miui/antispam/firewall/ShowModifyPreference;

    #getter for: Lcom/miui/antispam/firewall/ShowModifyPreference;->mListener:Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;
    invoke-static {v0}, Lcom/miui/antispam/firewall/ShowModifyPreference;->access$000(Lcom/miui/antispam/firewall/ShowModifyPreference;)Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/antispam/firewall/ShowModifyPreference$1;->this$0:Lcom/miui/antispam/firewall/ShowModifyPreference;

    #getter for: Lcom/miui/antispam/firewall/ShowModifyPreference;->mListener:Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;
    invoke-static {v0}, Lcom/miui/antispam/firewall/ShowModifyPreference;->access$000(Lcom/miui/antispam/firewall/ShowModifyPreference;)Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/firewall/ShowModifyPreference$1;->this$0:Lcom/miui/antispam/firewall/ShowModifyPreference;

    invoke-interface {v0, v1}, Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;->onDetail(Landroid/preference/Preference;)V

    .line 49
    :cond_0
    return-void
.end method
