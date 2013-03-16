.class Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;
.super Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.source "MSimKeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MSimKeyguardStatusView"


# instance fields
.field private mCarrierTextSub:[Ljava/lang/CharSequence;

.field protected mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mMSimPlmn:[Ljava/lang/CharSequence;

.field private mMSimSpn:[Ljava/lang/CharSequence;

.field private mMSimState:[Lcom/android/internal/telephony/IccCard$State;

.field private mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

.field private mNumPhones:I

.field private mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
    .locals 6
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    .line 46
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 209
    new-instance v2, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 248
    new-instance v2, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$2;-><init>(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 62
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    .line 63
    iget v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    .line 64
    iget v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    .line 65
    iget v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    .line 66
    iget v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    .line 67
    iget v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 70
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    if-ge v1, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    sget-object v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aput-object v3, v2, v1

    .line 72
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aput-object v5, v2, v1

    .line 73
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aput-object v5, v2, v1

    .line 74
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    aput-object v5, v2, v1

    .line 75
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v3, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 78
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->resetStatusInfo()V

    .line 81
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    .line 82
    .local v0, defaultSubscription:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 83
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    .line 84
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    .line 85
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V

    return-void
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 6
    .parameter "simState"
    .parameter "subscription"

    .prologue
    const v3, 0x1040315

    const/4 v5, 0x1

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, carrierHelpTextId:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v2

    aput-object v2, v1, p2

    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aput-object p1, v1, p2

    .line 139
    sget-object v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    const-string v1, "MSimKeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierStateWithSimStatus(): mCarrierTextSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->setCarrierText()V

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 206
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 207
    return-void

    .line 141
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040323

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 149
    const v0, 0x1040309

    .line 150
    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 160
    const v0, 0x1040318

    .line 161
    goto :goto_0

    .line 164
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040319

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 166
    const v0, 0x104031a

    .line 167
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 171
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 174
    const v0, 0x1040317

    .line 175
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 179
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040327

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 182
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 186
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040325

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 196
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040321

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 198
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    invoke-virtual {v0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->resetStatusInfo()V

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040310

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 123
    :cond_1
    return-void
.end method

.method protected registerInfoCallback()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method setCarrierText()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 95
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 96
    return-void
.end method
