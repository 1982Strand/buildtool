.class public Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;
.super Ljava/lang/Object;
.source "MiuiLockPatternKeyguardViewProperties.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewProperties;


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 14
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 15
    return-void
.end method


# virtual methods
.method public createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;
    .locals 6
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "controller"

    .prologue
    .line 24
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
