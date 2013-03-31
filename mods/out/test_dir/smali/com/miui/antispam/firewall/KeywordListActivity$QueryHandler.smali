.class Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "KeywordListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/KeywordListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/antispam/firewall/KeywordListActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 214
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;->mContext:Landroid/content/Context;

    .line 215
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/firewall/KeywordListActivity;

    .line 220
    .local v0, activity:Lcom/miui/antispam/firewall/KeywordListActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/KeywordListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 222
    if-eqz p3, :cond_0

    .line 223
    #getter for: Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;
    invoke-static {v0}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$100(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/ResourceCursorAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 224
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;->mContext:Landroid/content/Context;

    const-string v2, "filter_keywords"

    invoke-static {v1, v2, p3}, Lcom/miui/antispam/firewall/SettingsData;->writeData(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
