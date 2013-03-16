.class Lcom/android/internal/policy/impl/LockScreen$2;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$2;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 2
    .parameter "simState"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$2;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v1

    #calls: Lcom/android/internal/policy/impl/LockScreen;->updateTargets(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;I)V

    .line 116
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 1
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$2;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->updateTargets(I)V
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;I)V

    .line 119
    return-void
.end method
