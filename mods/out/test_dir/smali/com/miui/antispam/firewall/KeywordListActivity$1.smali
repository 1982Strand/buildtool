.class Lcom/miui/antispam/firewall/KeywordListActivity$1;
.super Lcom/miui/antispam/firewall/DeletingDialog;
.source "KeywordListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/KeywordListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

.field final synthetic val$_id:J


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/KeywordListActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    iput-wide p2, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->val$_id:J

    invoke-direct {p0}, Lcom/miui/antispam/firewall/DeletingDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected ok()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-wide v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->val$_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    invoke-virtual {v1}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #calls: Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V
    invoke-static {v1}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$000(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    .line 128
    return-void
.end method
