.class Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;
.super Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;
.source "MiuiPatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;
    }
.end annotation


# static fields
.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallListener:Landroid/view/View$OnClickListener;

.field private final mErrorMsg:Landroid/widget/TextView;

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field private final mForgotPatternListener:Landroid/view/View$OnClickListener;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

.field private mTotalFailedPatternAttempts:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 113
    invoke-direct {p0, p1, p4}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 45
    iput v5, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 46
    iput v5, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 47
    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 61
    const-wide/16 v6, -0x1b58

    iput-wide v6, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLastPokeTime:J

    .line 66
    new-instance v3, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v3, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mForgotPatternListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v3, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEmergencyCallListener:Landroid/view/View$OnClickListener;

    .line 114
    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    iput-object p5, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 116
    iput p6, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 117
    rem-int/lit8 v3, p6, 0x5

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 122
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x6030057

    invoke-static {p1, v3, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->addUnlockView(Landroid/view/View;)V

    .line 124
    const v3, 0x60b00b8

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    .line 125
    const v3, 0x60b00c5

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MiuiLockPatternView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    .line 127
    const v3, 0x60b00c4

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEmergencyCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v3, 0x60b00b6

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    .line 131
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mForgotPatternListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MiuiLockPatternView;->setSaveEnabled(Z)V

    .line 134
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MiuiLockPatternView;->setFocusable(Z)V

    .line 135
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    new-instance v6, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;

    invoke-direct {v6, p0, v8}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$1;)V

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MiuiLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 138
    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->setInStealthMode(Z)V

    .line 141
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MiuiLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 143
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 145
    const v3, 0x60b00bd

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, emergenceCallButton:Landroid/view/View;
    const v3, 0x60b00be

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 147
    .local v1, forgotPasscodeButton:Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEmergencyCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mForgotPatternListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v3, 0x60202da

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->setUnlockScreenInputAreaBackground(I)V

    .line 151
    return-void

    .end local v0           #emergenceCallButton:Landroid/view/View;
    .end local v1           #forgotPasscodeButton:Landroid/view/View;
    :cond_0
    move v3, v5

    .line 138
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/MiuiLockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$508(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->hideOverlayDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->hideForgotPatternButton()V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPattern()V

    .line 289
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->showOverlayDialog()V

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 291
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 306
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mEnableFallback:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->showForgotPatternButton()V

    .line 309
    :cond_0
    return-void
.end method

.method private hideForgotPatternButton()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    return-void
.end method

.method private hideOverlayDialog()V
    .locals 2

    .prologue
    .line 322
    const v0, 0x60b00c0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    return-void
.end method

.method private showForgotPatternButton()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    return-void
.end method

.method private showOverlayDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    const v1, 0x60b00c0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    const v1, 0x60b00be

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 314
    .local v0, forgotPasscodeButton:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mEnableFallback:Z

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 217
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 219
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 159
    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLastPokeTime:J

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 165
    :cond_0
    return v0
.end method

.method public displayErrorMsg(I)V
    .locals 1
    .parameter "errorMsgResourceId"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->displayErrorMsg(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public displayErrorMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMsg"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    return-void
.end method

.method public hideErrorMsg()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 169
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 182
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->hideErrorMsg()V

    .line 202
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/MiuiLockPatternView;->enableInput()V

    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->setEnabled(Z)V

    .line 204
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->hideOverlayDialog()V

    .line 205
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPattern()V

    .line 208
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 209
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->handleAttemptLockout(J)V

    .line 212
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->onWindowFocusChanged(Z)V

    .line 224
    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->onResume()V

    .line 228
    :cond_0
    return-void
.end method
