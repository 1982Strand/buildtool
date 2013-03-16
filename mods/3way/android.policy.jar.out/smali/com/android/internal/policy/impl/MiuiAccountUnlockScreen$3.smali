.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;
.super Landroid/widget/BaseAdapter;
.source "MiuiAccountUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 209
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, holder:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;
    if-nez p2, :cond_0

    .line 217
    new-instance v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;

    .end local v0           #holder:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$1;)V

    .line 218
    .restart local v0       #holder:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;->val$context:Landroid/content/Context;

    const v2, 0x6030010

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 219
    const/high16 v1, 0x60b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;->mAccountIcon:Landroid/widget/ImageView;

    .line 220
    const v1, 0x60b0001

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;->mAccountId:Landroid/widget/TextView;

    .line 221
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mGoogleAccountSize:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$500(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 227
    iget-object v1, v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;->mAccountIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mGoogleIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$600(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :goto_1
    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;->mAccountId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-object p2

    .line 223
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;
    check-cast v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;

    .restart local v0       #holder:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;
    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;->mAccountIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mXiaomiIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$700(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
