.class public final Lcom/miui/antispam/firewall/FwlogGroupListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "FwlogGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/FwlogGroupListAdapter$1;,
        Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;,
        Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNameLoder:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;I)V
    .locals 3
    .parameter "context"
    .parameter "listView"
    .parameter "queryTarget"

    .prologue
    .line 30
    const v0, 0x7f03000b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 32
    new-instance v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    invoke-direct {v0, p1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mNameLoder:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    .line 33
    iput-object p1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;

    .line 39
    .local v5, listItem:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;
    invoke-static/range {p3 .. p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, origianlNumber:Ljava/lang/String;
    invoke-static {v7}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, number:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const/4 v9, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 46
    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 53
    :cond_2
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->title:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->title:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v9, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mNameLoder:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    iget-object v10, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->title:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v6}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->loadName(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 58
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->count:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    const/16 v9, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 60
    .local v1, count:J
    const-wide/16 v9, 0x1

    cmp-long v9, v1, v9

    if-lez v9, :cond_3

    .line 61
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->count:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->count:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070081

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_3
    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 67
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->data1:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->formatCallData(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static/range {p3 .. p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->isMute(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 71
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->subtitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f070048

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_4
    invoke-static/range {p3 .. p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->isImported(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 73
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->subtitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f07004a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 75
    :cond_5
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->subtitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f070049

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 79
    :cond_6
    iget-object v9, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-static {v9, v0, v10}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getDate(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, dateStr:Ljava/lang/String;
    const/4 v9, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, data1:Ljava/lang/String;
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->data1:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v9, v5, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mNameLoder:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->clear()V

    .line 104
    return-void
.end method

.method public doLoadName()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mNameLoder:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->resume()V

    .line 96
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;

    invoke-direct {v1, v0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListItem;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mNameLoder:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$NameLoder;->pause()V

    .line 100
    return-void
.end method
