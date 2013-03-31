.class Lcom/miui/antispam/firewall/AddFirewall$1;
.super Landroid/os/AsyncTask;
.source "AddFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/AddFirewall;->doAddAndImport([Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/AddFirewall;

.field final synthetic val$current:J

.field final synthetic val$numbers:[Ljava/lang/String;

.field final synthetic val$pDialog:Landroid/app/ProgressDialog;

.field final synthetic val$shouldImport:Z


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/AddFirewall;Landroid/app/ProgressDialog;[Ljava/lang/String;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iput-object p2, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$pDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$numbers:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$shouldImport:Z

    iput-wide p5, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$current:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 465
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    .line 475
    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mMode:I
    invoke-static {v4}, Lcom/miui/antispam/firewall/AddFirewall;->access$200(Lcom/miui/antispam/firewall/AddFirewall;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 476
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$numbers:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 477
    .local v3, phoneNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #calls: Lcom/miui/antispam/firewall/AddFirewall;->isInWhitelist(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Lcom/miui/antispam/firewall/AddFirewall;->access$600(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 478
    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v5, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/miui/antispam/firewall/AddFirewall;->access$700(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/miui/antispam/firewall/WhiteListAdapter;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$numbers:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 483
    .restart local v3       #phoneNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #calls: Lcom/miui/antispam/firewall/AddFirewall;->isInBlacklist(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Lcom/miui/antispam/firewall/AddFirewall;->access$900(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 484
    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v5, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/miui/antispam/firewall/AddFirewall;->access$700(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/miui/antispam/firewall/BlackListAdapter;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_3
    iget-boolean v4, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$shouldImport:Z

    if-eqz v4, :cond_4

    .line 489
    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v5, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$numbers:[Ljava/lang/String;

    iget-wide v6, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$current:J

    #calls: Lcom/miui/antispam/firewall/AddFirewall;->importSmsAndCallLog([Ljava/lang/String;J)V
    invoke-static {v4, v5, v6, v7}, Lcom/miui/antispam/firewall/AddFirewall;->access$1000(Lcom/miui/antispam/firewall/AddFirewall;[Ljava/lang/String;J)V

    .line 491
    :cond_4
    const-string v4, "AddFirewall"

    const-string v5, "AntiSpam db insert action completed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 465
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/AddFirewall;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/AddFirewall;->finish()V

    .line 501
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 468
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 469
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 470
    return-void
.end method
