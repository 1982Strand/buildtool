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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPin(Ljava/lang/String;)Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;
    .locals 3
    .parameter "pinCode"

    .prologue
    new-instance v1, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    invoke-direct {v1}, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;-><init>()V

    .local v1, ret:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v0

    .local v0, result:Z
    iput-boolean v0, v1, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->unlockSuccess:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #result:Z
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static checkPuk(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;
    .locals 3
    .parameter "pinCode"
    .parameter "pukCode"
    .parameter "subscription"

    .prologue
    new-instance v1, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    invoke-direct {v1}, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;-><init>()V

    .local v1, ret:Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p0}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, result:Z
    iput-boolean v0, v1, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->unlockSuccess:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #result:Z
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
