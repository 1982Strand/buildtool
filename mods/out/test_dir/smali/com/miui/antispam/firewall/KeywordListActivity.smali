.class public Lcom/miui/antispam/firewall/KeywordListActivity;
.super Landroid/app/Activity;
.source "KeywordListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/KeywordListActivity$ListViews;,
        Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;,
        Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;,
        Lcom/miui/antispam/firewall/KeywordListActivity$KeywordHandler;
    }
.end annotation


# instance fields
.field private mKeywordText:Landroid/widget/TextView;

.field private mListAdapter:Landroid/widget/ResourceCursorAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNewDialog:Landroid/app/AlertDialog;

.field private mNewView:Landroid/view/View;

.field private mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

.field private mSelectedId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/KeywordListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/ResourceCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mKeywordText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/KeywordListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/firewall/KeywordListActivity;->update(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/KeywordListActivity;->isKeyword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/KeywordListActivity;->add(Ljava/lang/String;)V

    return-void
.end method

.method private add()V
    .locals 3

    .prologue
    .line 277
    const-string v1, ""

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mKeywordText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 282
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 283
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 286
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 287
    return-void
.end method

.method private add(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 311
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 312
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 317
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    goto :goto_0
.end method

.method private buildNewDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/view/View;

    .line 340
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/view/View;

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mKeywordText:Landroid/widget/TextView;

    .line 342
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 344
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 346
    const v1, 0x7f07003a

    new-instance v2, Lcom/miui/antispam/firewall/KeywordListActivity$3;

    invoke-direct {v2, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$3;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    const v1, 0x7f07003b

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    .line 387
    return-void
.end method

.method private edit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "data"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mKeywordText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 269
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 270
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 273
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 274
    return-void
.end method

.method private isKeyword(Ljava/lang/String;)Z
    .locals 8
    .parameter "keyword"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 322
    .local v0, resovler:Landroid/content/ContentResolver;
    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v5

    const-string v3, "data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 329
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 330
    .local v7, result:Z
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const/4 v7, 0x1

    .line 334
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_1
    return v7
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;->cancelOperation(I)V

    .line 203
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 290
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 291
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 109
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v6, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v9, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v10, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 115
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 116
    .local v0, _id:J
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, data:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    .end local v0           #_id:J
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #data:Ljava/lang/String;
    .end local v6           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return v7

    .line 110
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/ClassCastException;
    move v7, v8

    .line 111
    goto :goto_0

    .line 121
    .end local v4           #e:Ljava/lang/ClassCastException;
    .restart local v0       #_id:J
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v3       #data:Ljava/lang/String;
    .restart local v6       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    new-instance v8, Lcom/miui/antispam/firewall/KeywordListActivity$1;

    invoke-direct {v8, p0, v0, v1}, Lcom/miui/antispam/firewall/KeywordListActivity$1;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;J)V

    const v9, 0x7f07007c

    invoke-virtual {v8, v9}, Lcom/miui/antispam/firewall/KeywordListActivity$1;->setMessage(I)Lcom/miui/antispam/firewall/DeletingDialog;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/miui/antispam/firewall/DeletingDialog;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, id:Ljava/lang/String;
    invoke-direct {p0, v5, v3}, Lcom/miui/antispam/firewall/KeywordListActivity;->edit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/KeywordListActivity;->setContentView(I)V

    .line 85
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/KeywordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    .line 87
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 90
    new-instance v1, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    .line 91
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 94
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    new-instance v1, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    invoke-direct {v1, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    .line 96
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->buildNewDialog()V

    .line 97
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 149
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ge v5, v8, :cond_0

    .line 163
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v3

    .line 151
    .local v3, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 156
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v4       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    iget-object v5, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 158
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, data:Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 161
    const/4 v5, 0x2

    const v6, 0x7f070051

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 162
    const v5, 0x7f070039

    invoke-interface {p1, v7, v8, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 168
    const v1, 0x601004e

    invoke-static {p0, v1}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
    .local v0, newDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x4

    const v2, 0x7f070062

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 172
    const/4 v1, 0x3

    const v2, 0x7f070054

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 173
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 198
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    .line 199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 180
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->add()V

    goto :goto_0

    .line 183
    :pswitch_1
    new-instance v1, Lcom/miui/antispam/firewall/KeywordListActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$2;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    const v2, 0x7f07007d

    invoke-virtual {v1, v2}, Lcom/miui/antispam/firewall/KeywordListActivity$2;->setMessage(I)Lcom/miui/antispam/firewall/DeletingDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/antispam/firewall/DeletingDialog;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    .line 103
    return-void
.end method
