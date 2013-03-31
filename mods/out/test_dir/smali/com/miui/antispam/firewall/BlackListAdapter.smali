.class public final Lcom/miui/antispam/firewall/BlackListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BlackListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;,
        Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mQueryHandler:Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 33
    const v0, 0x7f030003

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 35
    iput-object p1, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;-><init>(Lcom/miui/antispam/firewall/BlackListAdapter;Lcom/miui/antispam/firewall/BlackListAdapter;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/BlackListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"
    .parameter "notes"

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 56
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "number"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v3, "notes"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v3, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 61
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/BlackListAdapter;->getWhitelistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, whitelistId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    invoke-static {p0, v2}, Lcom/miui/antispam/firewall/WhiteListAdapter;->remove(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getContactName(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 156
    move-object v8, p2

    .line 157
    .local v8, preName:Ljava/lang/String;
    const-string v7, ""

    .line 158
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

    .line 163
    .local v6, phoneCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 167
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
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
    .line 148
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
    .line 140
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotes(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 152
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWhitelistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 263
    .local v7, result:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {v6}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 267
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_1
    return-object v7
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;->cancelOperation(I)V

    .line 224
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "notes"

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "notes"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;

    .line 180
    .local v12, main:Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;
    invoke-static/range {p3 .. p3}, Lcom/miui/antispam/firewall/BlackListAdapter;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    .line 181
    .local v14, number:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/miui/antispam/firewall/BlackListAdapter;->getDisplayNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 182
    .local v11, displayNumber:Ljava/lang/String;
    iput-object v11, v12, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;->number:Ljava/lang/String;

    .line 185
    invoke-static/range {p3 .. p3}, Lcom/miui/antispam/firewall/BlackListAdapter;->getNotes(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    .line 186
    .local v13, name:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v11}, Lcom/miui/antispam/firewall/BlackListAdapter;->getContactName(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 189
    :cond_0
    iget-object v2, v12, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;->blacklistName:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 196
    .local v8, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 197
    .local v10, count_tel:I
    const/4 v9, 0x0

    .line 198
    .local v9, count_ms:I
    if-eqz v8, :cond_5

    .line 199
    :cond_1
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 200
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 201
    .local v15, type:I
    const/4 v2, 0x1

    if-ne v15, v2, :cond_2

    .line 202
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/2addr v10, v2

    goto :goto_0

    .line 203
    :cond_2
    const/4 v2, 0x3

    if-eq v15, v2, :cond_3

    const/4 v2, 0x2

    if-ne v15, v2, :cond_1

    .line 205
    :cond_3
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/2addr v9, v2

    goto :goto_0

    .line 208
    .end local v15           #type:I
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_5
    iget-object v3, v12, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;->blacklistLog:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f070056

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void

    .line 211
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " | "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 100
    .local v0, count:I
    if-nez v0, :cond_1

    .line 102
    .end local v0           #count:I
    :cond_0
    :goto_0
    return v1

    .line 100
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

    .line 107
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
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
    const v2, 0x7f030002

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    if-nez p1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    if-nez p1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 130
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;

    if-eqz v1, :cond_3

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_3
    invoke-super {p0, p1, v0, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->getCursor()Landroid/database/Cursor;

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
    .line 274
    if-nez p1, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 277
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
    .line 41
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->startQuery()V

    .line 42
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;

    invoke-direct {v1, v0}, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/antispam/firewall/BlackListAdapter;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    return-void
.end method
