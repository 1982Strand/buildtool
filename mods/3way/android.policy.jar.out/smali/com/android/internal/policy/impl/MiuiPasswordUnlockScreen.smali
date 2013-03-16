.class Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;
.super Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;
.source "MiuiPasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# static fields
.field private static final MAX_DELETE_PASSWORD_ACTION_NUM:I = 0x14

.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3


# instance fields
.field private final mAutoUnlock:Z

.field private mDeletePasswordActionCount:I

.field private final mEditTextKeyListener:Landroid/view/View$OnKeyListener;

.field private final mEnableHaptics:Z

.field private final mErrorMsg:Landroid/widget/TextView;

.field private final mHardKeyboardHidden:I

.field protected final mInputPasswordArea:Landroid/view/View;

.field private final mIsAlpha:Z

.field private mIsLockByFindDevice:Z

.field private mIsPasswordAreaInErrorState:Z

.field private mIsWindowFocusedByKeyboardDismissed:Z

.field private final mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field protected mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

.field protected final mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOverlayDialog:Landroid/app/Dialog;

.field protected final mPasswordEntry:Landroid/widget/EditText;

.field private final mPasswordEntryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mPasswordEntryTextWatcher:Landroid/text/TextWatcher;

.field private mPasswordLengthIsDescending:Z

.field private mPasswordPreLength:I

.field private final mWarnMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 252
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "autoUnlock"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 258
    invoke-direct {p0, p1, p4}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 62
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsWindowFocusedByKeyboardDismissed:Z

    .line 63
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsPasswordAreaInErrorState:Z

    .line 65
    iput v5, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordPreLength:I

    .line 66
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordLengthIsDescending:Z

    .line 67
    iput v5, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mDeletePasswordActionCount:I

    .line 70
    new-instance v4, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mEditTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 96
    new-instance v4, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntryTextWatcher:Landroid/text/TextWatcher;

    .line 139
    new-instance v4, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 354
    new-instance v4, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$7;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 260
    iput-object p5, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 261
    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 262
    iput-boolean p6, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mAutoUnlock:Z

    .line 263
    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mEnableHaptics:Z

    .line 265
    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    .line 266
    .local v3, passwordQuality:I
    const/high16 v4, 0x4

    if-eq v4, v3, :cond_0

    const/high16 v4, 0x5

    if-eq v4, v3, :cond_0

    const/high16 v4, 0x6

    if-ne v4, v3, :cond_4

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsAlpha:Z

    .line 270
    iget v4, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mHardKeyboardHidden:I

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v8, Lmiui/provider/ExtraSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_5

    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsLockByFindDevice:Z

    .line 276
    const v4, 0x6030058

    const/4 v8, 0x0

    invoke-static {p1, v4, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->addUnlockView(Landroid/view/View;)V

    .line 278
    const v4, 0x60b00b8

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    .line 279
    const v4, 0x60b00bf

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mWarnMsg:Landroid/widget/TextView;

    .line 280
    const v4, 0x60b00b9

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 281
    const v4, 0x60b00c1

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mInputPasswordArea:Landroid/view/View;

    .line 282
    const v4, 0x60b00ba

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    .line 283
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v4, v8}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 284
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mAutoUnlock:Z

    if-eqz v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntryTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v8, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$4;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 310
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 311
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mEditTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 312
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->needsInput()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 315
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mInputPasswordArea:Landroid/view/View;

    const v6, 0x6020265

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 316
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mInputPasswordArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 317
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x60a005b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 318
    .local v2, padding:I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 319
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->setVisibility(I)V

    .line 320
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 321
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const v6, 0x800081

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 348
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #padding:I
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x60a0062

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 350
    .restart local v2       #padding:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, v2, v5, v2, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 352
    .end local v2           #padding:I
    :cond_3
    return-void

    :cond_4
    move v4, v5

    .line 266
    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 272
    goto/16 :goto_1

    .line 324
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    iget v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mHardKeyboardHidden:I

    if-ne v4, v6, :cond_7

    move v4, v7

    :goto_3
    invoke-virtual {v8, v4}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->setVisibility(I)V

    .line 326
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 327
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const v6, 0x800012

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 329
    const v4, 0x60b00c6

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, deleteBtn:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 332
    new-instance v4, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    new-instance v4, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .end local v0           #deleteBtn:Landroid/view/View;
    :cond_7
    move v4, v5

    .line 324
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->verifyPassword(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordLengthIsDescending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordPreLength:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordPreLength:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mEnableHaptics:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->handleEmergencyCall()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->handleForgetPassword()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->hideOverlayDialog()V

    return-void
.end method

.method private createOverlayDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 437
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 11
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 492
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 502
    .local v10, softKeyboardRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getInstance()Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getSoftKeyboardRect(Landroid/graphics/Rect;)V

    .line 503
    iget v0, v10, Landroid/graphics/Rect;->right:I

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int v9, v0, v1

    .line 504
    .local v9, overlayWidth:I
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget v1, v10, Landroid/graphics/Rect;->top:I

    sub-int v8, v0, v1

    .line 509
    .end local v10           #softKeyboardRect:Landroid/graphics/Rect;
    .local v8, overlayHeight:I
    :goto_0
    invoke-direct {p0, v9, v8}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->showOverlayDialog(II)V

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 512
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$10;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$10;-><init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$10;->start()Landroid/os/CountDownTimer;

    .line 532
    return-void

    .line 506
    .end local v6           #elapsedRealtime:J
    .end local v8           #overlayHeight:I
    .end local v9           #overlayWidth:I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->getWidth()I

    move-result v9

    .line 507
    .restart local v9       #overlayWidth:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->getHeight()I

    move-result v8

    .restart local v8       #overlayHeight:I
    goto :goto_0
.end method

.method private handleEmergencyCall()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->hideOverlayDialog()V

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 586
    :cond_0
    return-void
.end method

.method private handleForgetPassword()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->hideOverlayDialog()V

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    .line 593
    :cond_0
    return-void
.end method

.method private hideOverlayDialog()V
    .locals 2

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsAlpha:Z

    if-nez v0, :cond_1

    .line 480
    const v0, 0x60b00c0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsWindowFocusedByKeyboardDismissed:Z

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method private setupBottomButtons(Landroid/view/View;)V
    .locals 3
    .parameter "buttonsContainer"

    .prologue
    .line 440
    const v2, 0x60b00bd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, emergenceCallButton:Landroid/view/View;
    const v2, 0x60b00be

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 442
    .local v1, forgotPasscodeButton:Landroid/view/View;
    new-instance v2, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$8;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$8;-><init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    new-instance v2, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$9;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen$9;-><init>(Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mEnableFallback:Z

    if-eqz v2, :cond_0

    .line 455
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showOverlayDialog(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const v3, 0x60b00c0

    .line 462
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsAlpha:Z

    if-nez v1, :cond_0

    .line 463
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->setupBottomButtons(Landroid/view/View;)V

    .line 476
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->createOverlayDialog()V

    .line 471
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x603005b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, overlayContentView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->setupBottomButtons(Landroid/view/View;)V

    .line 474
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 475
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mOverlayDialog:Landroid/app/Dialog;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private verifyPassword(Ljava/lang/String;Z)V
    .locals 4
    .parameter "password"
    .parameter "isExplicitlyRequest"

    .prologue
    const v3, 0x60c021e

    const/4 v2, 0x3

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->clearPinLockForFindDevice(Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordPreLength:I

    if-ge v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordLengthIsDescending:Z

    if-nez v0, :cond_2

    .line 122
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mDeletePasswordActionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mDeletePasswordActionCount:I

    .line 123
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mDeletePasswordActionCount:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->displayErrorMsg(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->turnOnErrorState()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mDeletePasswordActionCount:I

    goto :goto_0

    .line 129
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 134
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->displayErrorMsg(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->turnOnErrorState()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->setBackgroundResource(I)V

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    .line 542
    return-void
.end method

.method clearPinLockForFindDevice(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsLockByFindDevice:Z

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsLockByFindDevice:Z

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public displayCarrierMsg()V
    .locals 2

    .prologue
    .line 216
    const v0, 0x60b00c3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public displayErrorMsg(I)V
    .locals 1
    .parameter "errorMsgResourceId"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->displayErrorMsg(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public displayErrorMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMsg"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    return-void
.end method

.method public displayWarnMsg(I)V
    .locals 1
    .parameter "warnMsgResourceId"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->displayWarnMsg(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public displayWarnMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "warnMsg"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mWarnMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mWarnMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    return-void
.end method

.method getKeyboardView()Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method public hideCarrierMsg()V
    .locals 2

    .prologue
    .line 220
    const v0, 0x60b00c3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    return-void
.end method

.method public hideErrorMsg()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    return-void
.end method

.method public hideWarnMsg()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mWarnMsg:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsAlpha:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 567
    invoke-super {p0}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->onAttachedToWindow()V

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 569
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mHardKeyboardHidden:I

    if-eq v1, v2, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 572
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 575
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 576
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mHardKeyboardHidden:I

    if-eq v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 579
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method protected onLeftBottomKeyPressed()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->handleEmergencyCall()V

    .line 83
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->hideOverlayDialog()V

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 387
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 388
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 392
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->hideErrorMsg()V

    .line 395
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->turnOffErrorState()V

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->showImmOnResume()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    .line 400
    .local v11, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v11, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 403
    .end local v11           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v9

    .line 404
    .local v9, deadline:J
    const-wide/16 v3, 0x0

    cmp-long v3, v9, v3

    if-eqz v3, :cond_1

    .line 405
    invoke-direct {p0, v9, v10}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 408
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 409
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 411
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 412
    const v1, 0x60b00c2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 414
    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    :cond_2
    return-void
.end method

.method protected onRightBottomKeyPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->mEnableFallback:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->handleForgetPassword()V

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->verifyPassword(Ljava/lang/String;Z)V

    .line 90
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordLengthIsDescending:Z

    .line 91
    iput v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordPreLength:I

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    .line 418
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsWindowFocusedByKeyboardDismissed:Z

    if-nez v2, :cond_1

    .line 419
    if-eqz p1, :cond_0

    .line 420
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 421
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 422
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 429
    .end local v0           #deadline:J
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsWindowFocusedByKeyboardDismissed:Z

    goto :goto_0
.end method

.method public setEnableFallback(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->setEnableFallback(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    if-nez p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;

    const v1, 0x60c022f

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->setRightBottomKeyText(I)V

    .line 247
    :cond_0
    return-void
.end method

.method protected showImmOnResume()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 535
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torch_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected turnOffErrorState()V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsPasswordAreaInErrorState:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mInputPasswordArea:Landroid/view/View;

    const v1, 0x6020265

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 236
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsPasswordAreaInErrorState:Z

    .line 237
    return-void
.end method

.method protected turnOnErrorState()V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mInputPasswordArea:Landroid/view/View;

    const v1, 0x6020266

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 228
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mIsPasswordAreaInErrorState:Z

    .line 229
    return-void
.end method
