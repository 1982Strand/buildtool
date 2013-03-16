.class Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$7;
.super Ljava/lang/Object;
.source "MiuiPasswordUnlockScreen.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 358
    if-eqz p2, :cond_0

    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->verifyPassword(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;Ljava/lang/String;Z)V

    .line 361
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordLengthIsDescending:Z
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$102(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;Z)Z

    .line 362
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordPreLength:I
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$202(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;I)I

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 366
    :cond_1
    return v0
.end method
