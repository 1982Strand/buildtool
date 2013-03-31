.class public final Lcom/miui/antispam/firewall/WhiteListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "WhiteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;,
        Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mQueryHandler:Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 35
    const v0, 0x7f030010

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 37
    iput-object p1, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;-><init>(Lcom/miui/antispam/firewall/WhiteListAdapter;Lcom/miui/antispam/firewall/WhiteListAdapter;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;

    .line 39
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/WhiteListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"
    .parameter "notes"

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 63
    .local v1, resovler:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "notes"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v3, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 69
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getBlacklistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, blacklistId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/BlackListAdapter;->remove(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBlacklistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 258
    .local v7, result:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {v6}, Lcom/miui/antispam/firewall/BlackListAdapter;->getId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 262
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_1
    return-object v7
.end method

.method public static getContactName(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 163
    move-object v8, p2

    .line 164
    .local v8, preName:Ljava/lang/String;
    const-string v7, ""

    .line 165
    .local v7, postName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, phoneCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 174
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    .end local v7           #postName:Ljava/lang/String;
    :goto_0
    return-object v7

    .restart local v7       #postName:Ljava/lang/String;
    :cond_2
    move-object v7, v8

    goto :goto_0
.end method

.method public static getDisplayNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 155
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotes(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 159
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;->cancelOperation(I)V

    .line 48
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "notes"

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "notes"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v2, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;

    .line 186
    .local v1, main:Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;
    invoke-static {p3}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, number:Ljava/lang/String;
    invoke-static {p3}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getDisplayNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, displayNumber:Ljava/lang/String;
    iput-object v0, v1, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->number:Ljava/lang/String;

    .line 190
    invoke-virtual {v1}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->setGone()V

    .line 193
    invoke-static {p3}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getNotes(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    invoke-static {p2, p3, v0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getContactName(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    :cond_0
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    iget-object v4, v1, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->whitelistName:Landroid/widget/TextView;

    #calls: Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    invoke-static {v1, v4, v2}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->access$000(Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 200
    iget-object v4, v1, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->whitelistNumber:Landroid/widget/TextView;

    #calls: Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    invoke-static {v1, v4, v0}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->access$000(Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v4, v1, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->whitelistName:Landroid/widget/TextView;

    #calls: Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    invoke-static {v1, v4, v0}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->access$000(Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 107
    .local v0, count:I
    if-nez v0, :cond_1

    .line 109
    .end local v0           #count:I
    :cond_0
    :goto_0
    return v1

    .line 107
    .restart local v0       #count:I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 114
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v2, 0x7f03000f

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    if-nez p1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    if-nez p1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 137
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;

    if-eqz v1, :cond_3

    .line 138
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_3
    invoke-super {p0, p1, v0, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public load()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->startQuery()V

    .line 44
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;

    invoke-direct {v1, v0}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 210
    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    return-void
.end method
