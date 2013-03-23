.class public Lmiui/util/AudioManagerHelper;
.super Ljava/lang/Object;
.source "AudioManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSilentEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVibrateEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .local v1, mode:I
    const/4 v4, 0x2

    if-eq v4, v1, :cond_1

    if-ne v2, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "vibrate_in_normal"

    invoke-static {v2, v4, v3}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public static saveLastAudibleRingVolume(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "volume"

    .prologue
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "last_audible_ring_volume"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static setVibrateSetting(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "enable"
    .parameter "forSilient"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "vibrate_in_silent"

    :goto_0
    invoke-static {v1, v0, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->validateRingerMode(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string v0, "vibrate_in_normal"

    goto :goto_0
.end method

.method public static toggleSilent(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "flag"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v5, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_in_silent"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_2

    const/4 v1, 0x1

    .local v1, newMode:I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    if-ne v5, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "last_audible_ring_volume"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, volume:I
    if-lez v2, :cond_0

    invoke-virtual {v0, v5, v2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .end local v2           #volume:I
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, v5, v6, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_1
    return-void

    .end local v1           #newMode:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #newMode:I
    goto :goto_0

    .end local v1           #newMode:I
    :cond_3
    const/4 v1, 0x2

    .restart local v1       #newMode:I
    goto :goto_0
.end method

.method public static toggleVibrateSetting(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateRingerMode(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .local v1, mode:I
    const-string v4, "vibrate_in_silent"

    invoke-static {v2, v4, v5}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    .local v3, vibrate:Z
    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v5, v1, :cond_0

    if-nez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public static validateVibrateSettings(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v1, v3, :cond_0

    const-string v1, "vibrate_in_normal"

    :goto_0
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v1, v3}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string v1, "vibrate_in_silent"

    goto :goto_0
.end method
