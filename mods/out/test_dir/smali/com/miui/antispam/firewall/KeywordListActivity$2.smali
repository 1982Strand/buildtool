.class Lcom/miui/antispam/firewall/KeywordListActivity$2;
.super Lcom/miui/antispam/firewall/DeletingDialog;
.source "KeywordListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/KeywordListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/KeywordListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$2;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    invoke-direct {p0}, Lcom/miui/antispam/firewall/DeletingDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected ok()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity$2;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity$2;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #calls: Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$000(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    .line 187
    return-void
.end method
