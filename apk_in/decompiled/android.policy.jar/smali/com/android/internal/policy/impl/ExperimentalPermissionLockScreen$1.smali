.class Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$1;
.super Ljava/lang/Object;
.source "ExperimentalPermissionLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$1;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$1;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    #calls: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->validate()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$000(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$1;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    #calls: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->getProgressDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$100(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$1;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    #getter for: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$200(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen$1;->this$0:Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;

    #getter for: Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;->access$300(Lcom/android/internal/policy/impl/ExperimentalPermissionLockScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
