.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.super Lmiui/app/screenelement/ScreenElementRoot;
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

.field private mBatteryLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mBatteryState:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mDisplayDesktop:Z

.field private mFrameRateBatteryFull:F

.field private mFrameRateBatteryLow:F

.field private mFrameRateCharging:F

.field private mInit:Z

.field private mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 80
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "battery_state"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 81
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "battery_level"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 82
    return-void
.end method

.method private endUnlockMoving(Lmiui/app/screenelement/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3
    .parameter "g"
    .parameter "ele"

    .prologue
    .line 254
    if-eqz p1, :cond_2

    .line 255
    invoke-virtual {p1}, Lmiui/app/screenelement/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

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

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 256
    .local v0, e:Lmiui/app/screenelement/elements/ScreenElement;
    instance-of v2, v0, Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 257
    check-cast v0, Lmiui/app/screenelement/elements/ElementGroup;

    .end local v0           #e:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lmiui/app/screenelement/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 258
    .restart local v0       #e:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_1
    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v2, :cond_0

    .line 259
    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .end local v0           #e:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 263
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private startUnlockMoving(Lmiui/app/screenelement/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3
    .parameter "g"
    .parameter "ele"

    .prologue
    .line 242
    if-eqz p1, :cond_2

    .line 243
    invoke-virtual {p1}, Lmiui/app/screenelement/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

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

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 244
    .local v0, e:Lmiui/app/screenelement/elements/ScreenElement;
    instance-of v2, v0, Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 245
    check-cast v0, Lmiui/app/screenelement/elements/ElementGroup;

    .end local v0           #e:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lmiui/app/screenelement/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 246
    .restart local v0       #e:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_1
    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v2, :cond_0

    .line 247
    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .end local v0           #e:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 251
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lmiui/app/screenelement/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 239
    return-void
.end method

.method public findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-super {p0}, Lmiui/app/screenelement/ScreenElementRoot;->finish()V

    .line 228
    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 230
    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    .line 231
    return-void
.end method

.method public haptic(I)V
    .locals 1
    .parameter "effectId"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->haptic(I)V

    .line 110
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 191
    invoke-super {p0}, Lmiui/app/screenelement/ScreenElementRoot;->init()V

    .line 194
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, helper:Lmiui/security/ChooseLockSettingsHelper;
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pref_key_enable_notification_body"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

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

    .line 203
    .local v2, showSmsBodySetting:Z
    :goto_0
    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v4, "sms_body_preview"

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .line 204
    .local v1, showSms:Lmiui/app/screenelement/util/IndexedNumberVariable;
    if-eqz v2, :cond_3

    const-wide/high16 v4, 0x3ff0

    :goto_1
    invoke-virtual {v1, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 205
    iput-boolean v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 206
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    if-eqz v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    iget-boolean v3, v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->showBatteryInfo:Z

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    iget-boolean v4, v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->pluggedIn:Z

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    iget v5, v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->batteryLevel:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onRefreshBatteryInfo(ZZI)V

    .line 208
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    .line 210
    :cond_1
    return-void

    .line 195
    .end local v1           #showSms:Lmiui/app/screenelement/util/IndexedNumberVariable;
    .end local v2           #showSmsBodySetting:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 204
    .restart local v1       #showSms:Lmiui/app/screenelement/util/IndexedNumberVariable;
    .restart local v2       #showSmsBodySetting:Z
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    .line 123
    new-instance v0, Lmiui/app/screenelement/data/BatteryVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/BatteryVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    .line 124
    new-instance v0, Lmiui/app/screenelement/data/VolumeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/VolumeVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    .line 125
    return-void
.end method

.method public onButtonInteractive(Lmiui/app/screenelement/elements/ButtonScreenElement;Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V
    .locals 1
    .parameter "e"
    .parameter "a"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 272
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 2
    .parameter "root"

    .prologue
    .line 213
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 216
    :cond_0
    const-string v0, "displayDesktop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    .line 217
    const-string v0, "frameRateCharging"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    .line 218
    const-string v0, "frameRateBatteryLow"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    .line 219
    const-string v0, "frameRateBatteryFull"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    .line 221
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;->fill(Lmiui/app/screenelement/data/VariableBinderManager;)V

    .line 222
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

    .line 141
    iget-boolean v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    if-nez v2, :cond_1

    .line 142
    new-instance v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;-><init>(ZZI)V

    iput-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v3, p3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 147
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 152
    .local v0, newCategory:Ljava/lang/String;
    const/4 v1, 0x0

    .line 153
    .local v1, state:I
    if-eqz p1, :cond_4

    .line 154
    if-eqz p2, :cond_3

    .line 155
    const/16 v2, 0x64

    if-lt p3, v2, :cond_2

    .line 156
    const-string v0, "BatteryFull"

    .line 157
    const/4 v1, 0x3

    .line 158
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    .line 176
    :goto_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    .line 178
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    invoke-virtual {p0, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestFramerate(F)V

    .line 179
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestUpdate()V

    .line 180
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 181
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "BatteryFull"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 182
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "Charging"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 183
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "BatteryLow"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 184
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "Normal"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 185
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 186
    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_2
    const-string v0, "Charging"

    .line 161
    const/4 v1, 0x1

    .line 162
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1

    .line 165
    :cond_3
    const-string v0, "BatteryLow"

    .line 166
    const/4 v1, 0x2

    .line 167
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1

    .line 170
    :cond_4
    const-string v0, "Normal"

    .line 171
    const/4 v1, 0x0

    .line 172
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;I)V

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 100
    return-void
.end method

.method public setUnlockerCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V
    .locals 0
    .parameter "unlockerCallback"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    .line 86
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->isSoundEnable()Z

    move-result v0

    return v0
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lmiui/app/screenelement/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 235
    return-void
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "delay"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;I)V

    .line 119
    return-void
.end method
