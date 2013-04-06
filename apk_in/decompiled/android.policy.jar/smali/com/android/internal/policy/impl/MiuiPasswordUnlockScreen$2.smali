.class Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$2;
.super Ljava/lang/Object;
.source "MiuiPasswordUnlockScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, editableString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->verifyPassword(Ljava/lang/String;Z)V
    invoke-static {v2, v0, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordPreLength:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    #setter for: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordLengthIsDescending:Z
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$102(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordPreLength:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$202(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;I)I

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    return-void
.end method
