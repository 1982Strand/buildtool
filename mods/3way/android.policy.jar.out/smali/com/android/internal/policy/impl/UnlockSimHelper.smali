.class public Lcom/android/internal/policy/impl/UnlockSimHelper;
.super Ljava/lang/Object;
.source "UnlockSimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static checkPin(Ljava/lang/String;)Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;
    .locals 5
    .parameter "pinCode"

    .prologue
    const/4 v4, 0x1

    .line 23
    new-instance v2, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    invoke-direct {v2}, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;-><init>()V

    .line 25
    .local v2, ret:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)I

    move-result v1

    .line 28
    .local v1, result:I
    if-nez v1, :cond_1

    .line 29
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->unlockSuccess:Z

    .line 42
    .end local v1           #result:I
    :cond_0
    :goto_0
    return-object v2

    .line 30
    .restart local v1       #result:I
    :cond_1
    if-ne v1, v4, :cond_0

    .line 31
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->unlockSuccess:Z

    .line 32
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I

    move-result v0

    .line 34
    .local v0, attemptsRemaining:I
    if-ltz v0, :cond_0

    .line 35
    iput v0, v2, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->attemptsRemaining:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    .end local v0           #attemptsRemaining:I
    .end local v1           #result:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static checkPuk(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;
    .locals 5
    .parameter "pinCode"
    .parameter "pukCode"
    .parameter "subscription"

    .prologue
    const/4 v4, 0x1

    .line 46
    new-instance v2, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    invoke-direct {v2}, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;-><init>()V

    .line 49
    .local v2, ret:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;
    :try_start_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    const-string v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v3

    invoke-interface {v3, p1, p0, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, result:I
    :goto_0
    if-nez v1, :cond_2

    .line 59
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->unlockSuccess:Z

    .line 79
    .end local v1           #result:I
    :cond_0
    :goto_1
    return-object v2

    .line 54
    :cond_1
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p0}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .restart local v1       #result:I
    goto :goto_0

    .line 60
    :cond_2
    if-ne v1, v4, :cond_0

    .line 61
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->unlockSuccess:Z

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, attemptsRemaining:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    const-string v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getIccPin1RetryCount(I)I

    move-result v0

    .line 71
    :goto_2
    if-ltz v0, :cond_0

    .line 72
    iput v0, v2, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->attemptsRemaining:I

    goto :goto_1

    .line 75
    .end local v0           #attemptsRemaining:I
    .end local v1           #result:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 68
    .restart local v0       #attemptsRemaining:I
    .restart local v1       #result:I
    :cond_3
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_2
.end method
