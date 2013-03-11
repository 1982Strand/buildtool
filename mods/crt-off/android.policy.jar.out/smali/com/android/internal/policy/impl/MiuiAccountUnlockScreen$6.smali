.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;
.super Landroid/content/BroadcastReceiver;
.source "MiuiAccountUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 514
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "LOADED"

    const-string v5, "ss"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ABSENT"

    const-string v5, "ss"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 517
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, regitsterNumber:Ljava/lang/String;
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 521
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, currentPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 523
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1800(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 524
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 525
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 539
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateLockDeviceRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$2100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->post(Ljava/lang/Runnable;)Z

    .line 540
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsSimChecking:Z
    invoke-static {v4, v9}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$2202(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)Z

    .line 544
    .end local v1           #currentPhoneNumber:Ljava/lang/String;
    .end local v2           #regitsterNumber:Ljava/lang/String;
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_1
    return-void

    .line 529
    .restart local v1       #currentPhoneNumber:Ljava/lang/String;
    .restart local v2       #regitsterNumber:Ljava/lang/String;
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$900(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$902(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)Z

    .line 532
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getLockSettings()Lcom/android/internal/widget/ILockSettings;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1900(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    const-string v5, "lockscreen.password_type"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 534
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    const/4 v5, 0x1

    const/4 v6, 0x0

    #calls: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->postOnCheckPasswordResult(ZZ)V
    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$2000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v4

    goto :goto_0

    .line 541
    .end local v1           #currentPhoneNumber:Ljava/lang/String;
    .end local v2           #regitsterNumber:Ljava/lang/String;
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->isConnectivityActive()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsSimChecking:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$2200(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 542
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateLockDeviceRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$2100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
