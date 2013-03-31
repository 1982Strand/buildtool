.class Lcom/miui/antispam/firewall/DeletingDialog$2;
.super Ljava/lang/Object;
.source "DeletingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/DeletingDialog;->show(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/DeletingDialog;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/DeletingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/antispam/firewall/DeletingDialog$2;->this$0:Lcom/miui/antispam/firewall/DeletingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/antispam/firewall/DeletingDialog$2;->this$0:Lcom/miui/antispam/firewall/DeletingDialog;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/DeletingDialog;->cancel()V

    .line 71
    return-void
.end method
