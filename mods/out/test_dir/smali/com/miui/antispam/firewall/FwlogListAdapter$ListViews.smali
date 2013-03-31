.class final Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;
.super Ljava/lang/Object;
.source "FwlogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FwlogListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListViews"
.end annotation


# instance fields
.field public final body:Landroid/widget/TextView;

.field public final head1:Landroid/widget/TextView;

.field public final head2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const v0, 0x7f090016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head1:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f090017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head2:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f090018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->body:Landroid/widget/TextView;

    .line 97
    return-void
.end method


# virtual methods
.method public setGone()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 100
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->body:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    return-void
.end method
