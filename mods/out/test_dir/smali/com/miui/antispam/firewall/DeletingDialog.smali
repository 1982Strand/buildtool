.class Lcom/miui/antispam/firewall/DeletingDialog;
.super Ljava/lang/Object;
.source "DeletingDialog.java"


# instance fields
.field private mIconResId:I

.field private mMessageResId:I

.field private mNegativeResId:I

.field private mPositiveResId:I

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7f07007e

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const v0, 0x7f07007a

    iput v0, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mMessageResId:I

    .line 43
    iput v1, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mTitleResId:I

    .line 44
    iput v1, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mPositiveResId:I

    .line 45
    const/high16 v0, 0x104

    iput v0, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mNegativeResId:I

    .line 46
    const v0, 0x1010355

    iput v0, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mIconResId:I

    .line 47
    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method protected ok()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public setMessage(I)Lcom/miui/antispam/firewall/DeletingDialog;
    .locals 0
    .parameter "nResId"

    .prologue
    .line 17
    iput p1, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mMessageResId:I

    .line 18
    return-object p0
.end method

.method public show(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget v1, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mMessageResId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 58
    iget v1, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mTitleResId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 59
    iget v1, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 60
    iget v1, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mPositiveResId:I

    new-instance v2, Lcom/miui/antispam/firewall/DeletingDialog$1;

    invoke-direct {v2, p0}, Lcom/miui/antispam/firewall/DeletingDialog$1;-><init>(Lcom/miui/antispam/firewall/DeletingDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    iget v1, p0, Lcom/miui/antispam/firewall/DeletingDialog;->mNegativeResId:I

    new-instance v2, Lcom/miui/antispam/firewall/DeletingDialog$2;

    invoke-direct {v2, p0}, Lcom/miui/antispam/firewall/DeletingDialog$2;-><init>(Lcom/miui/antispam/firewall/DeletingDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 75
    return-void
.end method
