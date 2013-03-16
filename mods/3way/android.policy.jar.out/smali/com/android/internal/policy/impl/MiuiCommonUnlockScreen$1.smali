.class Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen$1;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "MiuiCommonUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 120
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->setInfoText(ZIZ)V
    invoke-static {v0, p1, p3, p2}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;ZIZ)V

    .line 110
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 114
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 116
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 118
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 128
    return-void
.end method
