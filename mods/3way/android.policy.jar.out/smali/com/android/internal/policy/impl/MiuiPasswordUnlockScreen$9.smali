.class Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$9;
.super Ljava/lang/Object;
.source "MiuiPasswordUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->setupBottomButtons(Landroid/view/View;)V
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
    .line 448
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->handleForgetPassword()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    .line 452
    return-void
.end method
