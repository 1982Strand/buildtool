.class public Lmiui/app/screenelement/ScreenElementRoot;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/app/screenelement/InteractiveListener;


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final RES_DENSITY:I = 0xf0

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private DEFAULT_FRAME_RATE:F

.field private mCheckPoint:J

.field protected mContext:Lmiui/app/screenelement/ScreenContext;

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field protected mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

.field private mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

.field private mFinished:Z

.field protected mFrameRate:F

.field private mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFrames:I

.field private mHeight:F

.field private mKeepResource:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mNoAutoScale:Z

.field protected mNormalFrameRate:F

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mSoundManager:Lmiui/app/screenelement/SoundManager;

.field private mTargetDensity:I

.field private mTouchBeginTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTouchBeginX:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTouchBeginY:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTouchX:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTouchY:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field protected mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

.field private mWidth:F


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0, v0}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 49
    const/high16 v0, 0x41f0

    iput v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 53
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    iput v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 114
    iput-object p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 115
    iput-object p0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 116
    new-instance v0, Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/VariableUpdaterManager;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    .line 117
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "touch_x"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchX:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 118
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "touch_y"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchY:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 119
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "touch_begin_x"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginX:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 120
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "touch_begin_y"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginY:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 121
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "touch_begin_time"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 122
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "intercept_sys_touch"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 124
    new-instance v0, Lmiui/app/screenelement/SoundManager;

    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/SoundManager;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    .line 125
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 377
    const-string v1, "useVariableUpdater"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, updater:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resolveResource(Lorg/w3c/dom/Element;I)V
    .locals 12
    .parameter "root"
    .parameter "screenWidth"

    .prologue
    .line 388
    const-string v11, "extraResourcesScreenWidth"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, extraResources:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 390
    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 391
    .local v8, resources:[Ljava/lang/String;
    const v7, 0x7fffffff

    .line 392
    .local v7, minDiff:I
    const/4 v1, 0x0

    .line 393
    .local v1, closestSw:I
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v10, v0, v5

    .line 395
    .local v10, swStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 396
    .local v9, sw:I
    sub-int v11, p2, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 397
    .local v3, diff:I
    if-ge v3, v7, :cond_2

    .line 398
    move v7, v3

    .line 399
    move v1, v9

    .line 400
    if-nez v3, :cond_2

    .line 407
    .end local v3           #diff:I
    .end local v9           #sw:I
    .end local v10           #swStr:Ljava/lang/String;
    :cond_0
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    sub-int v11, p2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 408
    .local v2, defaultDiff:I
    if-lt v2, v7, :cond_1

    .line 409
    iget-object v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v11, v1}, Lmiui/app/screenelement/ScreenContext;->setExtraResource(I)V

    .line 412
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #closestSw:I
    .end local v2           #defaultDiff:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #minDiff:I
    .end local v8           #resources:[Ljava/lang/String;
    :cond_1
    return-void

    .line 403
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #closestSw:I
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #minDiff:I
    .restart local v8       #resources:[Ljava/lang/String;
    .restart local v10       #swStr:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 393
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addElement(Lmiui/app/screenelement/elements/ScreenElement;)V
    .locals 1
    .parameter "newElement"

    .prologue
    .line 566
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 567
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ElementGroup;->addElement(Lmiui/app/screenelement/elements/ScreenElement;)V

    .line 569
    :cond_0
    return-void
.end method

.method public addFramerateController(Lmiui/app/screenelement/elements/FramerateController;)V
    .locals 1
    .parameter "framerateController"

    .prologue
    .line 546
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method public addPreTicker(Lmiui/app/screenelement/elements/ITicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 588
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public createFramerateToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 128
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenContext;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 180
    iget-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFinished:Z

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 186
    :cond_1
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    .line 187
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->doneRender()V

    goto :goto_0
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->doneRender()V

    .line 555
    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/app/screenelement/data/VariableBinder;
    .locals 1
    .parameter "name"

    .prologue
    .line 175
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lmiui/app/screenelement/data/VariableBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 168
    const-string v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 497
    :goto_0
    monitor-exit p0

    return-void

    .line 480
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    .line 483
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->finish()V

    .line 486
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->finish()V

    .line 489
    :cond_3
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 490
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->finish()V

    .line 492
    :cond_4
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/SoundManager;->release()V

    .line 494
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    iget-boolean v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ResourceManager;->finish(Z)V

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFinished:Z

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mKeepResource:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Lmiui/app/screenelement/ScreenContext;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mHeight:F

    return v0
.end method

.method public getResourceDensity()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 452
    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/high16 v0, 0x3f80

    .line 456
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenWidth:I

    return v0
.end method

.method public getTargetDensity()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mWidth:F

    return v0
.end method

.method public haptic(I)V
    .locals 0
    .parameter "effectId"

    .prologue
    .line 429
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFinished:Z

    .line 193
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->init()V

    .line 196
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/LanguageHelper;->load(Ljava/util/Locale;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/data/Variables;)Z

    .line 199
    const-string v0, "raw_screen_width"

    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 200
    const-string v0, "raw_screen_height"

    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 201
    const-string v0, "screen_width"

    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 202
    const-string v0, "screen_height"

    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 206
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->init()V

    .line 210
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->init()V

    .line 214
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->init()V

    .line 218
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 221
    :cond_3
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->reset()V

    .line 222
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ScreenElementRoot;->requestFramerate(F)V

    .line 223
    return-void
.end method

.method public load()Z
    .locals 15

    .prologue
    .line 306
    :try_start_0
    iget-object v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v11, v11, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v11}, Lmiui/app/screenelement/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 307
    .local v4, root:Lorg/w3c/dom/Element;
    if-nez v4, :cond_0

    .line 308
    const/4 v11, 0x0

    .line 371
    .end local v4           #root:Lorg/w3c/dom/Element;
    :goto_0
    return v11

    .line 311
    .restart local v4       #root:Lorg/w3c/dom/Element;
    :cond_0
    const-string v11, "frameRate"

    iget v12, p0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v4, v11, v12}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v11

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    .line 312
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    .line 313
    const-string v11, "screenWidth"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    .line 314
    .local v9, width:I
    const-string v11, "noAutoScale"

    invoke-interface {v4, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNoAutoScale:Z

    .line 315
    if-lez v9, :cond_5

    .end local v9           #width:I
    :goto_1
    iput v9, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 316
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/lit16 v11, v11, 0xf0

    div-int/lit16 v11, v11, 0x1e0

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 317
    iget-object v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget v12, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    invoke-virtual {v11, v12}, Lmiui/app/screenelement/ScreenContext;->setResourceDensity(I)V

    .line 318
    new-instance v11, Lmiui/app/screenelement/elements/ElementGroup;

    invoke-direct {v11, v4, p0}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    .line 320
    const-string v11, "VariableBinders"

    invoke-static {v4, v11}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 322
    .local v0, binders:Lorg/w3c/dom/Element;
    new-instance v11, Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-direct {v11, v0, p0}, Lmiui/app/screenelement/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    .line 324
    const-string v11, "ExternalCommands"

    invoke-static {v4, v11}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 325
    .local v1, commands:Lorg/w3c/dom/Element;
    if-eqz v1, :cond_1

    .line 326
    new-instance v11, Lmiui/app/screenelement/ExternalCommandManager;

    invoke-direct {v11, v1, p0}, Lmiui/app/screenelement/ExternalCommandManager;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    .line 330
    :cond_1
    iget-object v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v11, v11, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 331
    .local v10, wm:Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 333
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 334
    .local v8, tmpW:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 335
    .local v7, tmpH:I
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 336
    .local v6, rotation:I
    const/4 v11, 0x1

    if-eq v6, v11, :cond_2

    const/4 v11, 0x3

    if-ne v6, v11, :cond_6

    :cond_2
    const/4 v5, 0x1

    .line 337
    .local v5, rotated:Z
    :goto_2
    if-eqz v5, :cond_7

    move v11, v7

    :goto_3
    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenWidth:I

    .line 338
    if-eqz v5, :cond_8

    .end local v8           #tmpW:I
    :goto_4
    iput v8, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenHeight:I

    .line 339
    iget-boolean v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNoAutoScale:Z

    if-eqz v11, :cond_9

    .line 340
    const/high16 v11, 0x3f80

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    .line 353
    :goto_5
    const-string v11, "width"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mWidth:F

    .line 354
    const-string v11, "height"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mHeight:F

    .line 355
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mWidth:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 356
    const-string v11, "view_width"

    iget-object v12, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v12, v12, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget v13, p0, Lmiui/app/screenelement/ScreenElementRoot;->mWidth:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 357
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mWidth:F

    iget v12, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    mul-float/2addr v11, v12

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mWidth:F

    .line 359
    :cond_3
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mHeight:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 360
    const-string v11, "view_height"

    iget-object v12, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v12, v12, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget v13, p0, Lmiui/app/screenelement/ScreenElementRoot;->mHeight:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 361
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mHeight:F

    iget v12, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    mul-float/2addr v11, v12

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mHeight:F

    .line 363
    :cond_4
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenWidth:I

    invoke-direct {p0, v4, v11}, Lmiui/app/screenelement/ScreenElementRoot;->resolveResource(Lorg/w3c/dom/Element;I)V

    .line 364
    invoke-direct {p0, v4}, Lmiui/app/screenelement/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 365
    invoke-virtual {p0, v4}, Lmiui/app/screenelement/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v11

    goto/16 :goto_0

    .line 315
    .end local v0           #binders:Lorg/w3c/dom/Element;
    .end local v1           #commands:Lorg/w3c/dom/Element;
    .end local v2           #display:Landroid/view/Display;
    .end local v5           #rotated:Z
    .end local v6           #rotation:I
    .end local v7           #tmpH:I
    .end local v10           #wm:Landroid/view/WindowManager;
    .restart local v9       #width:I
    :cond_5
    const/16 v9, 0x1e0

    goto/16 :goto_1

    .line 336
    .end local v9           #width:I
    .restart local v0       #binders:Lorg/w3c/dom/Element;
    .restart local v1       #commands:Lorg/w3c/dom/Element;
    .restart local v2       #display:Landroid/view/Display;
    .restart local v6       #rotation:I
    .restart local v7       #tmpH:I
    .restart local v8       #tmpW:I
    .restart local v10       #wm:Landroid/view/WindowManager;
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .restart local v5       #rotated:Z
    :cond_7
    move v11, v8

    .line 337
    goto :goto_3

    :cond_8
    move v8, v7

    .line 338
    goto :goto_4

    .line 342
    .end local v8           #tmpW:I
    :cond_9
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    if-nez v11, :cond_a

    .line 343
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenWidth:I

    int-to-float v11, v11

    iget v12, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    .line 344
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v11, v11

    iget v12, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    .line 348
    :goto_6
    const-string v11, "ScreenElementRoot"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "init target density: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget v12, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v11, v12}, Lmiui/app/screenelement/ScreenContext;->setTargetDensity(I)V
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_5

    .line 366
    .end local v0           #binders:Lorg/w3c/dom/Element;
    .end local v1           #commands:Lorg/w3c/dom/Element;
    .end local v2           #display:Landroid/view/Display;
    .end local v4           #root:Lorg/w3c/dom/Element;
    .end local v5           #rotated:Z
    .end local v6           #rotation:I
    .end local v7           #tmpH:I
    .end local v10           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 367
    .local v3, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v3}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 371
    .end local v3           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :goto_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 346
    .restart local v0       #binders:Lorg/w3c/dom/Element;
    .restart local v1       #commands:Lorg/w3c/dom/Element;
    .restart local v2       #display:Landroid/view/Display;
    .restart local v4       #root:Lorg/w3c/dom/Element;
    .restart local v5       #rotated:Z
    .restart local v6       #rotation:I
    .restart local v7       #tmpH:I
    .restart local v10       #wm:Landroid/view/WindowManager;
    :cond_a
    :try_start_1
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    int-to-float v11, v11

    iget v12, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F
    :try_end_1
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 368
    .end local v0           #binders:Lorg/w3c/dom/Element;
    .end local v1           #commands:Lorg/w3c/dom/Element;
    .end local v2           #display:Landroid/view/Display;
    .end local v4           #root:Lorg/w3c/dom/Element;
    .end local v5           #rotated:Z
    .end local v6           #rotation:I
    .end local v7           #tmpH:I
    .end local v10           #wm:Landroid/view/WindowManager;
    :catch_1
    move-exception v3

    .line 369
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 132
    new-instance v0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    .line 133
    return-void
.end method

.method public onButtonInteractive(Lmiui/app/screenelement/elements/ButtonScreenElement;Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V
    .locals 0
    .parameter "e"
    .parameter "a"

    .prologue
    .line 543
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 531
    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v1, :cond_0

    .line 533
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/ExternalCommandManager;->onCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 1
    .parameter "root"

    .prologue
    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-boolean v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFinished:Z

    if-eqz v3, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/app/screenelement/ScreenElementRoot;->descale(F)F

    move-result v1

    .line 277
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/app/screenelement/ScreenElementRoot;->descale(F)F

    move-result v2

    .line 279
    .local v2, y:F
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchX:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 280
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchY:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 295
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v3, p1}, Lmiui/app/screenelement/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 296
    .local v0, ret:Z
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->requestUpdate()V

    goto :goto_0

    .line 283
    .end local v0           #ret:Z
    :pswitch_1
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginX:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 284
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginY:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 285
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 287
    iput-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 292
    :pswitch_2
    iput-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->pause()V

    .line 235
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 238
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->pause()V

    .line 241
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->pause()V

    .line 244
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->pause()V

    .line 246
    :cond_3
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ResourceManager;->pause()V

    .line 247
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 3
    .parameter "sound"

    .prologue
    const/4 v2, 0x0

    .line 415
    new-instance v0, Lmiui/app/screenelement/SoundManager$SoundOptions;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Lmiui/app/screenelement/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lmiui/app/screenelement/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/app/screenelement/SoundManager$SoundOptions;)V

    .line 416
    return-void
.end method

.method public playSound(Ljava/lang/String;Lmiui/app/screenelement/SoundManager$SoundOptions;)V
    .locals 1
    .parameter "sound"
    .parameter "options"

    .prologue
    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/SoundManager;->playSound(Ljava/lang/String;Lmiui/app/screenelement/SoundManager$SoundOptions;)V

    goto :goto_0
.end method

.method public removePreTicker(Lmiui/app/screenelement/elements/ITicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 592
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->reset(J)V

    .line 228
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->reset(J)V

    .line 231
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->resume()V

    .line 251
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 254
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->resume()V

    .line 257
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->resume()V

    .line 260
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->resume()V

    .line 263
    :cond_3
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ResourceManager;->resume()V

    .line 264
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->requestUpdate()V

    .line 265
    return-void
.end method

.method public setDefaultFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 159
    iput p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 160
    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 472
    iput-boolean p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mKeepResource:Z

    .line 473
    return-void
.end method

.method public setRenderController(Lmiui/app/screenelement/RendererController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 558
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenContext;->setRenderController(Lmiui/app/screenelement/RendererController;)V

    .line 559
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .parameter "targetDensity"

    .prologue
    .line 446
    iput p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    .line 447
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenContext;->setTargetDensity(I)V

    .line 448
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->shouldUpdate()Z

    move-result v0

    return v0
.end method

.method public tick(J)V
    .locals 7
    .parameter "currentTime"

    .prologue
    .line 137
    iget-boolean v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFinished:Z

    if-eqz v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v3, p1, p2}, Lmiui/app/screenelement/data/VariableUpdaterManager;->tick(J)V

    .line 143
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 144
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 145
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/elements/ITicker;

    invoke-interface {v3, p1, p2}, Lmiui/app/screenelement/elements/ITicker;->tick(J)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    :cond_2
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v3, :cond_3

    .line 149
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v3, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->tick(J)V

    .line 152
    :cond_3
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v1

    .line 153
    .local v1, d:Ljava/lang/Double;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public updateFramerate(J)J
    .locals 17
    .parameter "time"

    .prologue
    .line 501
    const-wide v9, 0x7fffffffffffffffL

    .line 502
    .local v9, nextUpdateInterval:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/app/screenelement/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 503
    .local v3, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/app/screenelement/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmiui/app/screenelement/elements/FramerateController;

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Lmiui/app/screenelement/elements/FramerateController;->updateFramerate(J)J

    move-result-wide v7

    .line 505
    .local v7, l:J
    cmp-long v13, v7, v9

    if-gez v13, :cond_0

    .line 506
    move-wide v9, v7

    .line 503
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 510
    .end local v7           #l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-nez v13, :cond_2

    .line 511
    new-instance v13, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v14, "frame_rate"

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/app/screenelement/ScreenElementRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v15, v15, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v13, v14, v15}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 512
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    .line 515
    :cond_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_4

    .line 516
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    .line 527
    :cond_3
    :goto_1
    return-wide v9

    .line 518
    :cond_4
    move-object/from16 v0, p0

    iget-wide v13, v0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    sub-long v11, p1, v13

    .line 519
    .local v11, t:J
    const-wide/16 v13, 0x3e8

    cmp-long v13, v11, v13

    if-ltz v13, :cond_3

    .line 520
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    div-long v4, v13, v11

    .line 521
    .local v4, frameRate:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    long-to-double v14, v4

    invoke-virtual {v13, v14, v15}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 522
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    .line 523
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    goto :goto_1
.end method
