.class Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$1;
.super Ljava/lang/Object;
.source "MiuiPatternUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 66
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/MiuiLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPattern()V

    .line 69
    return-void
.end method
