.class Lcom/miui/antispam/firewall/BlackWhiteList$2;
.super Landroid/app/DialogFragment;
.source "BlackWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/BlackWhiteList;->addNewListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/BlackWhiteList;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/BlackWhiteList;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/miui/antispam/firewall/BlackWhiteList$2;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 438
    new-instance v2, Lcom/miui/antispam/firewall/BlackWhiteList$2$1;

    invoke-direct {v2, p0}, Lcom/miui/antispam/firewall/BlackWhiteList$2$1;-><init>(Lcom/miui/antispam/firewall/BlackWhiteList$2;)V

    .line 454
    .local v2, clickListener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList$2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList$2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 459
    .local v0, addChoices:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList$2;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 460
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList$2;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #getter for: Lcom/miui/antispam/firewall/BlackWhiteList;->mListTarget:I
    invoke-static {v3}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$100(Lcom/miui/antispam/firewall/BlackWhiteList;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList$2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 465
    :goto_0
    invoke-virtual {v1, v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList$2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
