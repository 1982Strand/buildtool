.class Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$2;
.super Lmiui/util/SimplePool$Manager;
.source "FwlogGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SimplePool$Manager",
        "<",
        "Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$2;->this$0:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    invoke-direct {p0}, Lmiui/util/SimplePool$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;-><init>(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$1;)V

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$2;->createInstance()Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;

    move-result-object v0

    return-object v0
.end method

.method public onRelease(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;)V
    .locals 1
    .parameter "element"

    .prologue
    const/4 v0, 0x0

    .line 159
    iput-object v0, p1, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->view:Landroid/widget/TextView;

    .line 160
    iput-object v0, p1, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->number:Ljava/lang/String;

    .line 161
    iput-object v0, p1, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;->name:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 151
    check-cast p1, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$2;->onRelease(Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder$Holder;)V

    return-void
.end method
