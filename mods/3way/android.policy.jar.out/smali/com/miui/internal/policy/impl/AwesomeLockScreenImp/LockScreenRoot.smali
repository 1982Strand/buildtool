.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.super Lmiui/maml/ScreenElementRoot;
.source "LockScreenRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;,
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreenRoot"

.field public static final SMS_BODY_PREVIEW:Ljava/lang/String; = "sms_body_preview"

.field private static final TAG_NAME_BATTERYFULL:Ljava/lang/String; = "BatteryFull"

.field private static final TAG_NAME_CHARGING:Ljava/lang/String; = "Charging"

.field private static final TAG_NAME_LOWBATTERY:Ljava/lang/String; = "BatteryLow"

.field private static final TAG_NAME_NORMAL:Ljava/lang/String; = "Normal"


# instance fields
.field private curCategory:Ljava/lang/String;

.field private mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

.field private mBatteryLevel:Lmiui/maml/util/IndexedNumberVariable;

.field private mBatteryState:Lmiui/maml/util/IndexedNumberVariable;

.field private mDisplayDesktop:Z

.field private mFrameRateBatteryFull:F

.field private mFrameRateBatteryLow:F

.field private mFrameRateCharging:F

.field private mInit:Z

.field private mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    .line 79
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "battery_state"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/maml/util/IndexedNumberVariable;

    .line 80
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "battery_level"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/maml/util/IndexedNumberVariable;

    .line 81
    return-void
.end method

.method private endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3
    .parameter "g"
    .parameter "ele"

    .prologue
    .line 253
    if-eqz p1, :cond_2

    .line 254
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    .line 255
    .local v0, e:Lmiui/maml/elements/ScreenElement;
    instance-of v2, v0, Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 256
    check-cast v0, Lmiui/maml/elements/ElementGroup;

    .end local v0           #e:Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 257
    .restart local v0       #e:Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v2, :cond_0

    .line 258
    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .end local v0           #e:Lmiui/maml/elements/ScreenElement;
    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 262
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3
    .parameter "g"
    .parameter "ele"

    .prologue
    .line 241
    if-eqz p1, :cond_2

    .line 242
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    .line 243
    .local v0, e:Lmiui/maml/elements/ScreenElement;
    instance-of v2, v0, Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 244
    check-cast v0, Lmiui/maml/elements/ElementGroup;

    .end local v0           #e:Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 245
    .restart local v0       #e:Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v2, :cond_0

    .line 246
    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .end local v0           #e:Lmiui/maml/elements/ScreenElement;
    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 250
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 238
    return-void
.end method

.method public findTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-super {p0}, Lmiui/maml/ScreenElementRoot;->finish()V

    .line 227
    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 229
    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    .line 230
    return-void
.end method

.method public haptic(I)V
    .locals 1
    .parameter "effectId"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->haptic(I)V

    .line 109
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 190
    invoke-super {p0}, Lmiui/maml/ScreenElementRoot;->init()V

    .line 193
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, helper:Lmiui/security/ChooseLockSettingsHelper;
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pref_key_enable_notification_body"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v5, "com.android.mms"

    invoke-static {v4, v5}, Lmiui/net/FirewallManager;->isAccessControlProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 202
    .local v2, showSmsBodySetting:Z
    :goto_0
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    const-string v4, "sms_body_preview"

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 203
    .local v1, showSms:Lmiui/maml/util/IndexedNumberVariable;
    if-eqz v2, :cond_3

    const-wide/high16 v4, 0x3ff0

    :goto_1
    invoke-virtual {v1, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 204
    iput-boolean v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 205
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    iget-boolean v3, v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->showBatteryInfo:Z

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    iget-boolean v4, v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->pluggedIn:Z

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    iget v5, v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->batteryLevel:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onRefreshBatteryInfo(ZZI)V

    .line 207
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    .line 209
    :cond_1
    return-void

    .line 194
    .end local v1           #showSms:Lmiui/maml/util/IndexedNumberVariable;
    .end local v2           #showSmsBodySetting:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 203
    .restart local v1       #showSms:Lmiui/maml/util/IndexedNumberVariable;
    .restart local v2       #showSmsBodySetting:Z
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    .line 122
    new-instance v0, Lmiui/maml/data/BatteryVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/BatteryVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 123
    new-instance v0, Lmiui/maml/data/VolumeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/VolumeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 124
    return-void
.end method

.method public onButtonInteractive(Lmiui/maml/elements/ButtonScreenElement;Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V
    .locals 1
    .parameter "e"
    .parameter "a"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 271
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 2
    .parameter "root"

    .prologue
    .line 212
    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    .line 215
    :cond_0
    const-string v0, "displayDesktop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    .line 216
    const-string v0, "frameRateCharging"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    .line 217
    const-string v0, "frameRateBatteryLow"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    .line 218
    const-string v0, "frameRateBatteryFull"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    .line 220
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;->fill(Lmiui/maml/data/VariableBinderManager;)V

    .line 221
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 6
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    const/4 v5, 0x0

    .line 140
    iget-boolean v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    if-nez v2, :cond_1

    .line 141
    new-instance v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;-><init>(ZZI)V

    iput-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v3, p3

    invoke-virtual {v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 146
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 151
    .local v0, newCategory:Ljava/lang/String;
    const/4 v1, 0x0

    .line 152
    .local v1, state:I
    if-eqz p1, :cond_4

    .line 153
    if-eqz p2, :cond_3

    .line 154
    const/16 v2, 0x64

    if-lt p3, v2, :cond_2

    .line 155
    const-string v0, "BatteryFull"

    .line 156
    const/4 v1, 0x3

    .line 157
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    .line 175
    :goto_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    .line 177
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    invoke-virtual {p0, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestFramerate(F)V

    .line 178
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestUpdate()V

    .line 179
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 180
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    const-string v3, "BatteryFull"

    invoke-virtual {v2, v3, v5}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 181
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    const-string v3, "Charging"

    invoke-virtual {v2, v3, v5}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 182
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    const-string v3, "BatteryLow"

    invoke-virtual {v2, v3, v5}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 183
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    const-string v3, "Normal"

    invoke-virtual {v2, v3, v5}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 184
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 185
    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, "Charging"

    .line 160
    const/4 v1, 0x1

    .line 161
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1

    .line 164
    :cond_3
    const-string v0, "BatteryLow"

    .line 165
    const/4 v1, 0x2

    .line 166
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1

    .line 169
    :cond_4
    const-string v0, "Normal"

    .line 170
    const/4 v1, 0x0

    .line 171
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;I)V

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 99
    return-void
.end method

.method public setUnlockerCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V
    .locals 0
    .parameter "unlockerCallback"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    .line 85
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->isSoundEnable()Z

    move-result v0

    return v0
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 234
    return-void
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "delay"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;I)V

    .line 118
    return-void
.end method
