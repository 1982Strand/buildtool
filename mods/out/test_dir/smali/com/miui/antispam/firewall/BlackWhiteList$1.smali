.class Lcom/miui/antispam/firewall/BlackWhiteList$1;
.super Ljava/lang/Object;
.source "BlackWhiteList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/BlackWhiteList;->confirmDialog(ILandroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

.field final synthetic val$isList:Z

.field final synthetic val$operationUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/BlackWhiteList;ZLandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    iput-boolean p2, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$isList:Z

    iput-object p3, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$operationUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-boolean v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$isList:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #getter for: Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$000(Lcom/miui/antispam/firewall/BlackWhiteList;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$operationUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #calls: Lcom/miui/antispam/firewall/BlackWhiteList;->updateUi()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$400(Lcom/miui/antispam/firewall/BlackWhiteList;)V

    .line 281
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #getter for: Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I
    invoke-static {v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$100(Lcom/miui/antispam/firewall/BlackWhiteList;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #getter for: Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Landroid/widget/ResourceCursorAdapter;
    invoke-static {v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$300(Lcom/miui/antispam/firewall/BlackWhiteList;)Landroid/widget/ResourceCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/firewall/BlackListAdapter;

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #getter for: Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$200(Lcom/miui/antispam/firewall/BlackWhiteList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/BlackListAdapter;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #getter for: Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Landroid/widget/ResourceCursorAdapter;
    invoke-static {v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$300(Lcom/miui/antispam/firewall/BlackWhiteList;)Landroid/widget/ResourceCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/firewall/WhiteListAdapter;

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #getter for: Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$200(Lcom/miui/antispam/firewall/BlackWhiteList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method
