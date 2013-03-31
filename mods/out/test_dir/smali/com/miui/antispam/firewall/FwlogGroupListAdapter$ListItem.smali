.class final Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;
.super Ljava/lang/Object;
.source "FwlogGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FwlogGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListItem"
.end annotation


# instance fields
.field public final count:Landroid/widget/TextView;

.field public final data1:Landroid/widget/TextView;

.field public final subtitle:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const v0, 0x7f090010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->title:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f090011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->count:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f090012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->subtitle:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f090013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->data1:Landroid/widget/TextView;

    .line 118
    return-void
.end method
