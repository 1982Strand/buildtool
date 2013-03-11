.class Lcom/android/internal/policy/impl/AwesomeLockScreen$1;
.super Ljava/lang/Object;
.source "AwesomeLockScreen.java"

# interfaces
.implements Lmiui/widget/HeiHeiGestureView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AwesomeLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AwesomeLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AwesomeLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;->this$0:Lcom/android/internal/policy/impl/AwesomeLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sSuppressNextLockSound:Z

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;->this$0:Lcom/android/internal/policy/impl/AwesomeLockScreen;

    #getter for: Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->access$000(Lcom/android/internal/policy/impl/AwesomeLockScreen;)Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 135
    return-void
.end method
