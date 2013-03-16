.class abstract Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# static fields
.field protected static rebootMode:I

.field protected static final rebootOptions:[Ljava/lang/String;


# static fields
.field protected static rebootMode:I

.field protected static final rebootOptions:[Ljava/lang/String;

# instance fields
.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMessageResId:I

.field private mTextview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Recovery"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Bootloader"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Recovery"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Bootloader"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    return-void 
.end method

.method protected constructor <init>(II)V
    .locals 0
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    .line 417
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    .line 419
    iput p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    .line 420
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 444
    const v2, 0x603000c

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 446
    .local v1, v:Landroid/view/ViewGroup;
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    .line 447
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    .line 449
    const v2, 0x60b0084

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 454
    const v0, 0x6010038

    .line 455
    .local v0, state:I
    const v2, 0x60c0011

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    if-ne v2, v3, :cond_0

    .line 456
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    const v0, 0x6010037

    .line 459
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAdditionalState(I)V

    .line 461
    return-object v1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "iconResId"

    .prologue
    .line 427
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    :cond_0
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .parameter "messageResId"

    .prologue
    .line 434
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 438
    :cond_0
    return-void
.end method
