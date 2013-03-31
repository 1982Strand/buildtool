.class Lcom/miui/antispam/firewall/BlackWhiteList$2$1;
.super Ljava/lang/Object;
.source "BlackWhiteList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/BlackWhiteList$2;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/antispam/firewall/BlackWhiteList$2;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/BlackWhiteList$2;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/miui/antispam/firewall/BlackWhiteList$2$1;->this$1:Lcom/miui/antispam/firewall/BlackWhiteList$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 441
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 442
    packed-switch p2, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 444
    :pswitch_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$2$1;->this$1:Lcom/miui/antispam/firewall/BlackWhiteList$2;

    iget-object v0, v0, Lcom/miui/antispam/firewall/BlackWhiteList$2;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #calls: Lcom/miui/antispam/firewall/BlackWhiteList;->addManually()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$500(Lcom/miui/antispam/firewall/BlackWhiteList;)V

    goto :goto_0

    .line 447
    :pswitch_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$2$1;->this$1:Lcom/miui/antispam/firewall/BlackWhiteList$2;

    iget-object v0, v0, Lcom/miui/antispam/firewall/BlackWhiteList$2;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #calls: Lcom/miui/antispam/firewall/BlackWhiteList;->pick()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$600(Lcom/miui/antispam/firewall/BlackWhiteList;)V

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
