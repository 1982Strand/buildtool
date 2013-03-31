.class public Lcom/miui/antispam/firewall/QueryKeywordList;
.super Landroid/content/AsyncQueryHandler;
.source "QueryKeywordList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;
    }
.end annotation


# instance fields
.field mQureyResult:Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "cr"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 30
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/firewall/QueryKeywordList;->mQureyResult:Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;

    if-eqz v0, :cond_1

    .line 31
    if-eqz p3, :cond_0

    .line 32
    iget-object v0, p0, Lcom/miui/antispam/firewall/QueryKeywordList;->mQureyResult:Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;

    invoke-virtual {v0, p3}, Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;->onResult(Landroid/database/Cursor;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    if-eqz p3, :cond_0

    .line 36
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method query(Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;)V
    .locals 8
    .parameter "qr"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    iput-object p1, p0, Lcom/miui/antispam/firewall/QueryKeywordList;->mQureyResult:Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;

    .line 23
    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/QueryKeywordList;->cancelOperation(I)V

    .line 24
    sget-object v3, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/QueryKeywordList;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
