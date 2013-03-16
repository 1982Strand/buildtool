.class Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$3;
.super Ljava/lang/Object;
.source "MiuiPatternUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 83
    return-void
.end method
