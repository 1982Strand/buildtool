.class Lcom/android/internal/policy/impl/AwesomeLockScreen;
.super Landroid/widget/FrameLayout;
.source "AwesomeLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;


# static fields
.field private static final COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field private static final COMMAND_RESUME:Ljava/lang/String; = "resume"

.field private static final DBG:Z = true

.field private static final LOCKSCREEN_ANALYTICS_INTENT:Ljava/lang/String; = "android.intent.action.COLLECT_ANALYTICS_DATA_AWELOCKSCREEEN"

.field private static final OWNER_INFO_VAR:Ljava/lang/String; = "owner_info"

.field private static final TAG:Ljava/lang/String; = "AwesomeLockScreen"

.field private static mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private static mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

.field private static mThemeChanged:I

.field private static sStartTime:J

.field static sSuppressNextLockSound:Z

.field private static sTotalWakenTime:J


# instance fields
.field private isPaused:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

.field private mConfig:Lmiui/maml/util/ConfigFile;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWakeStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/internal/policy/impl/RootHolder;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/RootHolder;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 12
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    .line 94
    iput-object p3, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 95
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 96
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    .line 97
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->setFocusable(Z)V

    .line 98
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->setFocusableInTouchMode(Z)V

    .line 101
    sget-object v8, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-nez v8, :cond_0

    .line 102
    new-instance v8, Lmiui/util/HapticFeedbackUtil;

    const/4 v9, 0x1

    invoke-direct {v8, p1, v9}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    sput-object v8, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 105
    :cond_0
    const-string v8, "audio"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 110
    .local v1, con:Landroid/content/res/Configuration;
    iget-object v8, v1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v7, v8, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 111
    .local v7, version:I
    sget v8, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mThemeChanged:I

    if-le v7, v8, :cond_1

    .line 112
    invoke-static {}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->clearCache()V

    .line 113
    sput v7, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mThemeChanged:I

    .line 116
    :cond_1
    sget-object v8, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    iget-object v9, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, p0}, Lcom/android/internal/policy/impl/RootHolder;->init(Landroid/content/Context;Lcom/android/internal/policy/impl/AwesomeLockScreen;)V

    .line 118
    sget-object v8, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/RootHolder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->loadConfig(Lmiui/maml/ScreenContext;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 122
    .local v6, res:Landroid/content/ContentResolver;
    const-string v8, "lock_screen_owner_info_enabled"

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    .line 124
    .local v3, ownerInfoEnabled:Z
    :goto_0
    if-eqz v3, :cond_4

    const-string v8, "lock_screen_owner_info"

    invoke-static {v6, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, ownerString:Ljava/lang/String;
    :goto_1
    const-string v8, "owner_info"

    sget-object v9, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/RootHolder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v9

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v8, v9, v4}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 128
    new-instance v2, Lmiui/widget/HeiHeiGestureView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lmiui/widget/HeiHeiGestureView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v2, gestureView:Lmiui/widget/HeiHeiGestureView;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Lmiui/widget/HeiHeiGestureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v8, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;-><init>(Lcom/android/internal/policy/impl/AwesomeLockScreen;)V

    invoke-virtual {v2, v8}, Lmiui/widget/HeiHeiGestureView;->setOnTriggerListener(Lmiui/widget/HeiHeiGestureView$OnTriggerListener;)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->addView(Landroid/view/View;)V

    .line 139
    sget-object v8, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setUnlockerCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V

    .line 140
    sget-object v8, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    iget-object v9, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/RootHolder;->createView(Landroid/content/Context;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 142
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v5, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v5, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v2, v8, v5}, Lmiui/widget/HeiHeiGestureView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v8, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 149
    sget-wide v8, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sput-wide v8, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sStartTime:J

    .line 152
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mWakeStartTime:J

    .line 154
    return-void

    .line 122
    .end local v2           #gestureView:Lmiui/widget/HeiHeiGestureView;
    .end local v3           #ownerInfoEnabled:Z
    .end local v4           #ownerString:Ljava/lang/String;
    .end local v5           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 124
    .restart local v3       #ownerInfoEnabled:Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/AwesomeLockScreen;)Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RootHolder;->clear()V

    .line 166
    return-void
.end method

.method private loadConfig(Lmiui/maml/ScreenContext;)V
    .locals 9
    .parameter "c"

    .prologue
    .line 169
    new-instance v5, Lmiui/maml/util/ConfigFile;

    invoke-direct {v5}, Lmiui/maml/util/ConfigFile;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/maml/util/ConfigFile;

    .line 170
    iget-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/maml/util/ConfigFile;

    const-string v6, "/data/system/theme/config.config"

    invoke-virtual {v5, v6}, Lmiui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 171
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/maml/util/ConfigFile;

    .line 190
    :cond_0
    return-void

    .line 174
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v5}, Lmiui/maml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/util/ConfigFile$Variable;

    .line 175
    .local v4, v:Lmiui/maml/util/ConfigFile$Variable;
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v6, "string"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 176
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v6, p1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v7, v4, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v6, "number"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    :try_start_0
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 180
    .local v0, d:D
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v6, p1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v0           #d:D
    :catch_0
    move-exception v5

    goto :goto_0

    .line 185
    .end local v4           #v:Lmiui/maml/util/ConfigFile$Variable;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v5}, Lmiui/maml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/util/Task;

    .line 186
    .local v3, t:Lmiui/maml/util/Task;
    iget-object v5, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v6, "name"

    iget-object v7, p1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v3, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 187
    iget-object v5, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v6, "package"

    iget-object v7, p1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v3, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 188
    iget-object v5, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v6, "class"

    iget-object v7, p1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v3, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendLockscreenIntentTypeAnalytics(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.COLLECT_ANALYTICS_DATA_AWELOCKSCREEEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, analyticsIntent:Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "lockscreen_intent_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v1, "eventId"

    const-string v2, "lockscreen_intent_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v2, "eventObj"

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 315
    return-void

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/RootHolder;->cleanUp(Lcom/android/internal/policy/impl/AwesomeLockScreen;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 262
    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 263
    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 264
    return-void
.end method

.method public cleanUpView()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->cleanUp(Z)V

    .line 373
    return-void
.end method

.method public findTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lmiui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public haptic(I)V
    .locals 3
    .parameter "effectId"

    .prologue
    .line 329
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 330
    return-void
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->isDisplayDesktop()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSoundEnable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 339
    iget-object v3, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_sounds_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 340
    .local v0, lockSoundsEnabled:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0           #lockSoundsEnabled:Z
    :cond_0
    move v0, v2

    .line 339
    goto :goto_0

    .restart local v0       #lockSoundsEnabled:Z
    :cond_1
    move v1, v2

    .line 340
    goto :goto_1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 210
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 221
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 215
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 231
    const-string v2, "AwesomeLockScreen"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onPause()V

    .line 236
    sget-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v2

    const-string v3, "pause"

    invoke-virtual {v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    .line 237
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mWakeStartTime:J

    sub-long v0, v2, v4

    .line 241
    .local v0, wakenTime:J
    sget-wide v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sTotalWakenTime:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sTotalWakenTime:J

    .line 242
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 345
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 272
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 277
    const-string v0, "AwesomeLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onRefreshBatteryInfo(ZZI)V

    .line 282
    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 200
    const-string v0, "AwesomeLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshCarrierInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 356
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 247
    const-string v0, "AwesomeLockScreen"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onResume()V

    .line 252
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mWakeStartTime:J

    .line 256
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 269
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 369
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 320
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 325
    return-void
.end method

.method public rebindView()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->onRefreshBatteryInfo(ZZI)V

    .line 159
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRootHolder:Lcom/android/internal/policy/impl/RootHolder;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setUnlockerCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->rebindRoot()V

    .line 161
    return-void
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "delay"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sendLockscreenIntentTypeAnalytics(Landroid/content/Intent;)V

    .line 287
    iget-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, p1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 290
    new-instance v0, Lcom/android/internal/policy/impl/AwesomeLockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/AwesomeLockScreen$2;-><init>(Lcom/android/internal/policy/impl/AwesomeLockScreen;)V

    .line 301
    .local v0, action:Ljava/lang/Runnable;
    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    const-string v1, "AwesomeLockScreen"

    const-string v2, "lockscreen awake time: [%d sec] in time range: [%d sec]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-wide v5, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sTotalWakenTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sget-wide v7, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sStartTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method
