.class Lcom/miui/antispam/firewall/AddFirewall$OKListener;
.super Ljava/lang/Object;
.source "AddFirewall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/AddFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/AddFirewall;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/firewall/AddFirewall;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall$OKListener;-><init>(Lcom/miui/antispam/firewall/AddFirewall;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 235
    const/4 v1, 0x1

    .line 236
    .local v1, toFinish:Z
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mMode:I
    invoke-static {v2}, Lcom/miui/antispam/firewall/AddFirewall;->access$200(Lcom/miui/antispam/firewall/AddFirewall;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 283
    :goto_0
    if-eqz v1, :cond_0

    .line 284
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v2}, Lcom/miui/antispam/firewall/AddFirewall;->finish()V

    .line 286
    :cond_0
    return-void

    .line 238
    :pswitch_0
    const/4 v1, 0x0

    .line 239
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v3, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/antispam/firewall/AddFirewall;->access$300(Lcom/miui/antispam/firewall/AddFirewall;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/miui/antispam/firewall/AddFirewall;->access$400(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/antispam/firewall/AddFirewall;->doAddAndImport([Ljava/lang/String;Z)V

    goto :goto_0

    .line 244
    :pswitch_1
    const/4 v1, 0x0

    .line 245
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v3, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/antispam/firewall/AddFirewall;->access$300(Lcom/miui/antispam/firewall/AddFirewall;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/miui/antispam/firewall/AddFirewall;->doAddAndImport([Ljava/lang/String;Z)V

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/miui/antispam/firewall/AddFirewall;->access$500(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, phoneNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 252
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v3, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/miui/antispam/firewall/AddFirewall;->access$400(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/miui/antispam/firewall/AddFirewall;->doAddAndImport(Ljava/lang/String;Z)V

    goto :goto_0

    .line 258
    .end local v0           #phoneNumber:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/miui/antispam/firewall/AddFirewall;->access$500(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0       #phoneNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #calls: Lcom/miui/antispam/firewall/AddFirewall;->isInWhitelist(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/miui/antispam/firewall/AddFirewall;->access$600(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v3, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/miui/antispam/firewall/AddFirewall;->access$500(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/miui/antispam/firewall/AddFirewall;->access$700(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/antispam/firewall/WhiteListAdapter;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v3, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    const v4, 0x7f07006c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 270
    .end local v0           #phoneNumber:Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v3, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mId:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/antispam/firewall/AddFirewall;->access$800(Lcom/miui/antispam/firewall/AddFirewall;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/miui/antispam/firewall/AddFirewall;->access$700(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/antispam/firewall/BlackListAdapter;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :pswitch_5
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v3, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mId:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/antispam/firewall/AddFirewall;->access$800(Lcom/miui/antispam/firewall/AddFirewall;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/miui/antispam/firewall/AddFirewall;->access$700(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/antispam/firewall/WhiteListAdapter;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
