.class public Lcom/miui/antispam/firewall/BlackWhiteList;
.super Landroid/app/Fragment;
.source "BlackWhiteList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Landroid/widget/ResourceCursorAdapter;

.field private mBlackListTab:Landroid/widget/TextView;

.field private mList:Landroid/widget/ListView;

.field private mListTarget:I

.field private mRootView:Landroid/view/View;

.field private mSelectedId:Ljava/lang/String;

.field private mSelectedItem:Ljava/lang/String;

.field private mSelectedNotes:Ljava/lang/String;

.field private mSelectedNumber:Ljava/lang/String;

.field private mWhiteListTab:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/antispam/firewall/BlackWhiteList;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/BlackWhiteList;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/BlackWhiteList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/BlackWhiteList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/BlackWhiteList;)Landroid/widget/ResourceCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Landroid/widget/ResourceCursorAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/BlackWhiteList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->updateUi()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/BlackWhiteList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->addManually()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/antispam/firewall/BlackWhiteList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->pick()V

    return-void
.end method

.method private addManually()V
    .locals 3

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 289
    iget v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 290
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    :goto_0
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 296
    return-void

    .line 292
    :cond_0
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private addNewListDialog()V
    .locals 3

    .prologue
    .line 435
    new-instance v0, Lcom/miui/antispam/firewall/BlackWhiteList$2;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/BlackWhiteList$2;-><init>(Lcom/miui/antispam/firewall/BlackWhiteList;)V

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/antispam/firewall/BlackWhiteList$2;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method private confirmDialog(ILandroid/net/Uri;Z)V
    .locals 3
    .parameter "titleId"
    .parameter "operationUri"
    .parameter "isList"

    .prologue
    .line 265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/miui/antispam/firewall/BlackWhiteList$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/miui/antispam/firewall/BlackWhiteList$1;-><init>(Lcom/miui/antispam/firewall/BlackWhiteList;ZLandroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 283
    return-void
.end method

.method private edit()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 306
    const-string v1, "id"

    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "number"

    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "notes"

    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNotes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 311
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    :goto_0
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    return-void

    .line 313
    :cond_0
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private pick()V
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0x65

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->startAddMemberIntent(I)V

    .line 301
    return-void

    .line 299
    :cond_0
    const/16 v0, 0x66

    goto :goto_0
.end method

.method private startAddMemberIntent(I)V
    .locals 3
    .parameter "requestCode"

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "android.intent.extra.include_unknown_numbers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0, p1}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 325
    return-void
.end method

.method private updateTabStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 401
    iget v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    packed-switch v0, :pswitch_data_0

    .line 408
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackListTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 409
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mWhiteListTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 412
    :goto_0
    return-void

    .line 403
    :pswitch_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackListTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 404
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mWhiteListTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 415
    iget v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    packed-switch v0, :pswitch_data_0

    .line 422
    new-instance v0, Lcom/miui/antispam/firewall/BlackListAdapter;

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/antispam/firewall/BlackListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Landroid/widget/ResourceCursorAdapter;

    .line 423
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Landroid/widget/ResourceCursorAdapter;

    check-cast v0, Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackListAdapter;->load()V

    .line 426
    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 427
    return-void

    .line 417
    :pswitch_0
    new-instance v0, Lcom/miui/antispam/firewall/WhiteListAdapter;

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/antispam/firewall/WhiteListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Landroid/widget/ResourceCursorAdapter;

    .line 418
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Landroid/widget/ResourceCursorAdapter;

    check-cast v0, Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->load()V

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 329
    if-nez p3, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/16 v1, 0x65

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x66

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 333
    :cond_2
    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v16

    .line 334
    .local v16, uris:[Landroid/os/Parcelable;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 338
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v10, idSetBuilder:Ljava/lang/StringBuilder;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v13, numberEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, v16

    .local v7, arr$:[Landroid/os/Parcelable;
    array-length v12, v7

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v12, :cond_6

    aget-object v14, v7, v9

    .local v14, p:Landroid/os/Parcelable;
    move-object v15, v14

    .line 341
    check-cast v15, Landroid/net/Uri;

    .line 342
    .local v15, uri:Landroid/net/Uri;
    const-string v1, "content"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 343
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 344
    const/16 v1, 0x2c

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 346
    :cond_4
    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 348
    :cond_5
    const-string v1, "tel"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 354
    .end local v14           #p:Landroid/os/Parcelable;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_6
    const/4 v8, 0x0

    .line 355
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, whereClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/miui/antispam/firewall/BlackWhiteList;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 360
    .end local v4           #whereClause:Ljava/lang/String;
    :cond_7
    if-nez v8, :cond_8

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    :cond_8
    if-eqz v8, :cond_a

    .line 367
    :goto_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 368
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 371
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 376
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.ADD_FIREWALL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v11, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const/16 v1, 0x65

    move/from16 v0, p1

    if-ne v0, v1, :cond_b

    .line 379
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    :goto_4
    const-string v2, "numbers"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v13, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v11, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 381
    :cond_b
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 124
    iput-object p1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    .line 125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackListTab:Landroid/widget/TextView;

    if-ne v0, p1, :cond_1

    .line 392
    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    .line 396
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->updateTabStatus()V

    .line 397
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->updateUi()V

    .line 398
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mWhiteListTab:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 394
    const/16 v0, 0xb

    iput v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "menuItem"

    .prologue
    const v4, 0x7f070078

    const/high16 v8, 0x1400

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 225
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 192
    :pswitch_1
    invoke-direct {p0, v4, v7, v3}, Lcom/miui/antispam/firewall/BlackWhiteList;->confirmDialog(ILandroid/net/Uri;Z)V

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-direct {p0, v4, v7, v3}, Lcom/miui/antispam/firewall/BlackWhiteList;->confirmDialog(ILandroid/net/Uri;Z)V

    goto :goto_0

    .line 200
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->edit()V

    goto :goto_0

    .line 204
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->edit()V

    goto :goto_0

    .line 208
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    iget-object v6, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "com.android.phone"

    invoke-static {v2, v3, v4}, Lmiui/security/IntentScope;->processIntentScope(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 211
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    iget-object v4, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-static {v3, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 219
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v9, 0x7f070039

    const/16 v8, 0xa

    const/4 v7, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 143
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 144
    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v3}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v1

    .local v1, isEmpty:Z
    move-object v0, p3

    .line 145
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 146
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz v0, :cond_0

    .line 147
    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 148
    .local v2, itemCursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v3, :cond_1

    .line 186
    .end local v2           #itemCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 152
    .restart local v2       #itemCursor:Landroid/database/Cursor;
    :cond_1
    iget v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    if-ne v3, v8, :cond_3

    .line 154
    invoke-static {v2}, Lcom/miui/antispam/firewall/BlackListAdapter;->getDisplayNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/miui/antispam/firewall/BlackListAdapter;->getContactName(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedItem:Ljava/lang/String;

    .line 156
    invoke-static {v2}, Lcom/miui/antispam/firewall/BlackListAdapter;->getId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    .line 157
    invoke-static {v2}, Lcom/miui/antispam/firewall/BlackListAdapter;->getNotes(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNotes:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v5, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 161
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 163
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070067

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 165
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 184
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedItem:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 168
    :cond_3
    iget v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 170
    invoke-static {v2}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getDisplayNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    .line 171
    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/miui/antispam/firewall/BlackListAdapter;->getContactName(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedItem:Ljava/lang/String;

    .line 172
    invoke-static {v2}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    .line 173
    invoke-static {v2}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getNotes(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNotes:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v5, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 177
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 179
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v8, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 181
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 232
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    const v2, 0x601004e

    invoke-static {v1, v2}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 233
    .local v0, newDrawable:Landroid/graphics/drawable/Drawable;
    const v1, 0x7f070082

    invoke-interface {p1, v4, v3, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 234
    const/16 v1, 0x8

    const v2, 0x7f07003d

    invoke-interface {p1, v4, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 235
    const/4 v1, 0x7

    const/4 v2, 0x2

    const v3, 0x7f07003c

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 236
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0xa

    .line 100
    if-eqz p3, :cond_0

    .line 101
    const-string v0, "query_target"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    .line 106
    :goto_0
    const v0, 0x7f030001

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mRootView:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 108
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mRootView:Landroid/view/View;

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackListTab:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mRootView:Landroid/view/View;

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mWhiteListTab:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackListTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mWhiteListTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ListView;

    .line 114
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->setHasOptionsMenu(Z)V

    .line 118
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mRootView:Landroid/view/View;

    return-object v0

    .line 103
    :cond_0
    iput v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    .line 131
    return-void
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
    .line 431
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->performLongClick()Z

    .line 432
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 254
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 242
    :sswitch_0
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->addNewListDialog()V

    goto :goto_0

    .line 246
    :sswitch_1
    const v1, 0x7f07006e

    sget-object v2, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->confirmDialog(ILandroid/net/Uri;Z)V

    goto :goto_0

    .line 250
    :sswitch_2
    const v1, 0x7f07006f

    sget-object v2, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->confirmDialog(ILandroid/net/Uri;Z)V

    goto :goto_0

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->updateTabStatus()V

    .line 138
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->updateUi()V

    .line 139
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 93
    const-string v0, "query_target"

    iget v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method
