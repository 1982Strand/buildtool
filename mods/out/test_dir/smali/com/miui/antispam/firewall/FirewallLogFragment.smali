.class public Lcom/miui/antispam/firewall/FirewallLogFragment;
.super Landroid/app/Fragment;
.source "FirewallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallTab:Landroid/widget/TextView;

.field private mCountView:Landroid/widget/TextView;

.field private mEmpty:Landroid/view/View;

.field private mEmptyImage:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private mGroupAdapter:Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

.field private mItemAdapter:Lcom/miui/antispam/firewall/FwlogListAdapter;

.field private mList:Landroid/widget/ListView;

.field private mListAdapter:Landroid/widget/ResourceCursorAdapter;

.field private mListPosition:I

.field private mListTop:I

.field private mOriginalQueryNumber:Ljava/lang/String;

.field private mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

.field private mQueryNumber:Ljava/lang/String;

.field private mQueryTarget:I

.field private mShowDetail:Z

.field private mSmsTab:Landroid/widget/TextView;

.field private mTabView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 110
    const/16 v0, 0x65

    iput v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mShowDetail:Z

    .line 118
    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 1
    .parameter "queryTarget"
    .parameter "showDetail"
    .parameter "hasMenuBar"

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 110
    const/16 v0, 0x65

    iput v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mShowDetail:Z

    .line 121
    iput p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    .line 122
    iput-boolean p2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mShowDetail:Z

    .line 123
    invoke-virtual {p0, p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->setHasOptionsMenu(Z)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/FirewallLogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/FirewallLogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/FirewallLogFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/FirewallLogFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/FirewallLogFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/ResourceCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmpty:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmptyImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static formatCallData(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 734
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getDate(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, location:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 739
    :cond_0
    return-object v1
.end method

.method public static getDate(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "needTime"

    .prologue
    .line 723
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 724
    .local v1, date:J
    const/16 v3, 0x40

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 725
    .local v0, dataBuffer:Ljava/nio/CharBuffer;
    if-eqz p2, :cond_0

    .line 726
    const v3, 0x80011

    invoke-static {p0, v1, v2, v3, v0}, Lmiui/util/MiuiDateUtils;->formatDateTime(Landroid/content/Context;JILjava/nio/CharBuffer;)V

    .line 730
    :goto_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 728
    :cond_0
    invoke-static {p0, v1, v2, p2, v0}, Lmiui/util/MiuiDateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZLjava/nio/CharBuffer;)V

    goto :goto_0
.end method

.method public static getNameFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 652
    const-string v1, "-3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    :cond_0
    invoke-static {p1}, Lmiui/telephony/CallerInfo;->getPresentation(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Lmiui/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    .line 661
    :cond_1
    :goto_0
    return-object v0

    .line 657
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getNoteFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, note:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->queryContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNoteFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 665
    const/4 v7, 0x0

    .line 668
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "notes"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 674
    .local v6, blackistCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 675
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 678
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 680
    :cond_1
    return-object v7
.end method

.method public static getNumber(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 624
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 625
    .local v8, preNumber:Ljava/lang/String;
    const-string v7, ""

    .line 628
    .local v7, postNumber:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_number"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 634
    .local v6, blackistCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 635
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 638
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 644
    .end local v7           #postNumber:Ljava/lang/String;
    :goto_0
    return-object v7

    .restart local v7       #postNumber:Ljava/lang/String;
    :cond_2
    move-object v7, v8

    goto :goto_0
.end method

.method public static getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 648
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inConversionMode()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isFiltered(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 712
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 713
    .local v0, reason:I
    const/high16 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isImported(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 717
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 718
    .local v0, reason:I
    const/high16 v1, 0x2

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMute(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 701
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 703
    .local v0, reason:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x102

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x103

    if-eq v0, v1, :cond_0

    const/16 v1, 0x105

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static queryContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 684
    const/4 v6, 0x0

    .line 686
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 690
    .local v7, phoneCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 691
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 694
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_1
    return-object v6
.end method

.method private startQuery()V
    .locals 12

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 250
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->cancelOperation(I)V

    .line 252
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v8, value:Landroid/content/ContentValues;
    const-string v0, "read"

    const-string v3, "1"

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v3, 0x65

    if-ne v0, v3, :cond_2

    .line 256
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "*"

    aput-object v5, v4, v11

    const-string v5, "count()"

    aput-object v5, v4, v9

    const-string v5, "type=?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=? AND number=?"

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v9

    const-string v7, "date DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=? AND number=?"

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v9

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v3, 0x66

    if-ne v0, v3, :cond_0

    .line 276
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "*"

    aput-object v5, v4, v11

    const-string v5, "count()"

    aput-object v5, v4, v9

    const-string v5, "type=? OR type=?"

    new-array v6, v10, [Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=? OR type=?"

    new-array v6, v10, [Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "(type=? OR type=?) AND number=?"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v10

    const-string v7, "date DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "(type=? OR type=?) AND number=?"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v10

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->updateNotification(Landroid/content/Context;)V

    .line 744
    return-void
.end method

.method private updateTabStatus()V
    .locals 3

    .prologue
    .line 302
    const/4 v0, 0x1

    .line 303
    .local v0, isSmsSelected:Z
    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mSmsTab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 308
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mCallTab:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 309
    return-void

    .line 308
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 216
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    .line 217
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mSmsTab:Landroid/widget/TextView;

    if-ne v0, p1, :cond_1

    .line 314
    const/16 v0, 0x66

    iput v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    .line 319
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->updateTabStatus()V

    .line 320
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V

    .line 322
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 323
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mCallTab:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 316
    const/16 v0, 0x65

    iput v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 15
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 329
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .local v5, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v11, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v12, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v11, v12}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 335
    .local v3, cursor:Landroid/database/Cursor;
    iget-object v11, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v11, v3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getNumber(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, number:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, origianNumber:Ljava/lang/String;
    iget-object v11, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v11, v8}, Lcom/miui/antispam/firewall/FirewallLogFragment;->queryContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, name:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 339
    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const v14, 0x7f070070

    invoke-virtual {p0, v14}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/miui/antispam/firewall/FirewallLogFragment$1;

    invoke-direct {v12, p0, v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$1;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 350
    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const v14, 0x7f070071

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/miui/antispam/firewall/FirewallLogFragment$2;

    invoke-direct {v12, p0, v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$2;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 362
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 364
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    const v14, 0x7f070072

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/miui/antispam/firewall/FirewallLogFragment$3;

    invoke-direct {v12, p0, v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$3;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 375
    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x0

    const v14, 0x7f070073

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/miui/antispam/firewall/FirewallLogFragment$4;

    invoke-direct {v12, p0, v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$4;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 389
    :cond_0
    const-wide/16 v1, 0x0

    .line 390
    .local v1, count:J
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->inConversionMode()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 391
    const/16 v11, 0x8

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 393
    :cond_1
    iget v11, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v12, 0x66

    if-ne v11, v12, :cond_4

    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->inConversionMode()Z

    move-result v11

    if-eqz v11, :cond_2

    const-wide/16 v11, 0x1

    cmp-long v11, v11, v1

    if-nez v11, :cond_4

    .line 394
    :cond_2
    const/4 v11, 0x3

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 395
    .local v10, type:I
    const/4 v11, 0x4

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 396
    .local v9, reason:I
    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const/4 v11, 0x4

    if-eq v9, v11, :cond_3

    const/16 v11, 0x104

    if-eq v9, v11, :cond_3

    const/high16 v11, 0x1

    if-eq v9, v11, :cond_3

    const/high16 v11, 0x2

    if-ne v9, v11, :cond_4

    .line 402
    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    const v14, 0x7f07003e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/miui/antispam/firewall/FirewallLogFragment$5;

    invoke-direct {v12, p0, v3}, Lcom/miui/antispam/firewall/FirewallLogFragment$5;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Landroid/database/Cursor;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 423
    .end local v9           #reason:I
    .end local v10           #type:I
    :cond_4
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->inConversionMode()Z

    move-result v11

    if-nez v11, :cond_5

    .line 424
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const v14, 0x7f070039

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/miui/antispam/firewall/FirewallLogFragment$6;

    invoke-direct {v12, p0, v3}, Lcom/miui/antispam/firewall/FirewallLogFragment$6;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Landroid/database/Cursor;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 479
    .end local v1           #count:J
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v5           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #origianNumber:Ljava/lang/String;
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v4

    .line 331
    .local v4, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 443
    .end local v4           #e:Ljava/lang/ClassCastException;
    .restart local v1       #count:J
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v5       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #number:Ljava/lang/String;
    .restart local v8       #origianNumber:Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x0

    const v14, 0x7f070039

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    invoke-direct {v12, p0, v3}, Lcom/miui/antispam/firewall/FirewallLogFragment$7;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Landroid/database/Cursor;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 483
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x6010045

    invoke-static {v1, v2}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 484
    .local v0, newDrawable:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 485
    const v1, 0x7f070057

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f070058

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 135
    const v8, 0x7f03000a

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 138
    .local v7, rootView:Landroid/view/View;
    if-eqz p3, :cond_0

    .line 139
    const-string v8, "query_target"

    const/16 v9, 0x65

    invoke-virtual {p3, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    .line 140
    const-string v8, "show_detail"

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mShowDetail:Z

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 145
    const-string v8, "query_target"

    const/16 v9, 0x65

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    .line 146
    const-string v8, "show_detail"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mShowDetail:Z

    .line 149
    :cond_1
    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmpty:Landroid/view/View;

    .line 150
    const v8, 0x7f090014

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmptyImage:Landroid/widget/ImageView;

    .line 151
    const v8, 0x7f090015

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmptyText:Landroid/widget/TextView;

    .line 152
    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;

    .line 153
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 154
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 157
    new-instance v8, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    iget-object v9, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;

    iget v11, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;I)V

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mGroupAdapter:Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    .line 158
    new-instance v8, Lcom/miui/antispam/firewall/FwlogListAdapter;

    iget-object v9, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    iget v10, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    invoke-direct {v8, v9, v10}, Lcom/miui/antispam/firewall/FwlogListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mItemAdapter:Lcom/miui/antispam/firewall/FwlogListAdapter;

    .line 159
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mGroupAdapter:Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    .line 161
    const v8, 0x7f09000f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mSmsTab:Landroid/widget/TextView;

    .line 162
    const v8, 0x7f09000e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mCallTab:Landroid/widget/TextView;

    .line 163
    const v8, 0x7f09000d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mTabView:Landroid/view/View;

    .line 165
    iget-boolean v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mShowDetail:Z

    if-eqz v8, :cond_3

    .line 166
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mTabView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    .line 175
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 176
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 177
    const-string v8, "data1"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, number:Ljava/lang/String;
    const-string v8, "display_name"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, name:Ljava/lang/String;
    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    .line 180
    const-string v8, "original_number"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    .line 182
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 183
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mItemAdapter:Lcom/miui/antispam/firewall/FwlogListAdapter;

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    .line 185
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    const v9, 0x7f090011

    invoke-virtual {v8, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mCountView:Landroid/widget/TextView;

    .line 186
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    const v9, 0x7f090007

    invoke-virtual {v8, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 187
    .local v5, nameView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    const v9, 0x7f09001a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 188
    .local v3, locationView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v8, v9}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, location:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 190
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .end local v2           #location:Ljava/lang/String;
    .end local v3           #locationView:Landroid/widget/TextView;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameView:Landroid/widget/TextView;
    .end local v6           #number:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    new-instance v8, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    invoke-direct {v8, p0, p0}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    .line 210
    return-object v7

    .line 168
    .end local v1           #i:Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mSmsTab:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mCallTab:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/miui/antispam/firewall/FirewallLogFragment;->setHasOptionsMenu(Z)V

    goto/16 :goto_0

    .line 195
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #location:Ljava/lang/String;
    .restart local v3       #locationView:Landroid/widget/TextView;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #nameView:Landroid/widget/TextView;
    .restart local v6       #number:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 198
    :cond_5
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 200
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    .line 223
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 558
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getNumber(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 559
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getNameFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->inConversionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 564
    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v6, 0x66

    if-eq v1, v6, :cond_0

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 566
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 567
    iget-object v5, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v6, 0x65

    if-ne v1, v6, :cond_1

    const-class v1, Lcom/miui/antispam/firewall/CallLogList;

    :goto_0
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 568
    const-string v1, "data1"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v1, "display_name"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v1, "original_number"

    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, v4}, Lcom/miui/antispam/firewall/FirewallLogFragment;->startActivity(Landroid/content/Intent;)V

    .line 578
    :goto_1
    return-void

    .line 567
    :cond_1
    const-class v1, Lcom/miui/antispam/firewall/MmsLogList;

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 493
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return v2

    .line 496
    :pswitch_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 498
    new-instance v0, Lcom/miui/antispam/firewall/FirewallLogFragment$8;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/FirewallLogFragment$8;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment$8;->setMessage(I)Lcom/miui/antispam/firewall/DeletingDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/DeletingDialog;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 522
    :pswitch_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 523
    new-instance v0, Lcom/miui/antispam/firewall/FirewallLogFragment$9;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/FirewallLogFragment$9;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment$9;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 240
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mGroupAdapter:Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    check-cast v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->clear()V

    .line 243
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 229
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->updateTabStatus()V

    .line 230
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V

    .line 231
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;

    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListPosition:I

    iget v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListTop:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 232
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mGroupAdapter:Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    check-cast v0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->doLoadName()V

    .line 235
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 128
    const-string v0, "query_target"

    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 774
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x0

    .line 748
    packed-switch p2, :pswitch_data_0

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 751
    :pswitch_0
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListPosition:I

    .line 752
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 753
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListTop:I

    .line 755
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mGroupAdapter:Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    if-ne v1, v2, :cond_0

    .line 756
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    check-cast v1, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    invoke-virtual {v1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->doLoadName()V

    goto :goto_0

    .line 753
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_1

    .line 762
    .end local v0           #v:Landroid/view/View;
    :pswitch_1
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mGroupAdapter:Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    if-ne v1, v2, :cond_0

    .line 763
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    check-cast v1, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    invoke-virtual {v1}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->pause()V

    goto :goto_0

    .line 748
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
