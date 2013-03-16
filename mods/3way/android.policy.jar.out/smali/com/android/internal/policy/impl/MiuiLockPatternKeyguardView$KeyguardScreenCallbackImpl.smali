.class Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;
.super Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;
.source "MiuiLockPatternKeyguardView.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyguardScreenCallbackImpl"
.end annotation


# instance fields
.field private mPendingIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 1
    .parameter
    .parameter "client"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    .line 71
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;-><init>(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    .line 72
    return-void
.end method


# virtual methods
.method public goToUnlockScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->callStuckOnLockScreenBecauseSimMissing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->isSecure()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->keyguardDone(Z)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    const-string v2, "ShowCameraWhenLocked"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 97
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    const-string v2, "com.android.camera"

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->goToUnlockScreen()V

    goto :goto_0

    .line 103
    .restart local v0       #info:Landroid/content/pm/ResolveInfo;
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->keyguardDone(Z)V

    .line 114
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPendingIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    .line 125
    return-void
.end method
