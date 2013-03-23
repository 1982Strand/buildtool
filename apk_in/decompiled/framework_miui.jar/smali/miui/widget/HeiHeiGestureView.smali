.class public Lmiui/widget/HeiHeiGestureView;
.super Landroid/widget/FrameLayout;
.source "HeiHeiGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/HeiHeiGestureView$DetectingStage;,
        Lmiui/widget/HeiHeiGestureView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DENSITY:F = 0.0f

.field private static final EFFECT_DURATION:J = 0x5dcL

#the value of this static final field might be set in the static constructor
.field private static final MOVE_DOWN_DISTANCE_THREDHOLD:F = 0.0f

.field private static final MOVE_DOWN_ELAPSED_THREDHOLD:J = 0x3e8L

#the value of this static final field might be set in the static constructor
.field private static final MOVE_UP_DISTANCE_THREDHOLD:F = 0.0f

.field private static final MOVE_UP_ELAPSED_THREDHOLD:J = 0x7d0L

.field private static final START_OR_END_DURATION_THREDHOLD:J = 0xc8L

.field private static final TWO_POINTS_DISTANCE_X_THREDHOLD:F

.field private static final TWO_POINTS_DISTANCE_Y_THREDHOLD:F

.field private static final TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F


# instance fields
.field private mBottomY:F

.field private mChances:[D

.field private mFirstY:F

.field private mImageView:Landroid/widget/ImageView;

.field private mLastMatchTime:J

.field private mLastTiggerTime:J

.field private mListener:Lmiui/widget/HeiHeiGestureView$OnTriggerListener;

.field private mPictures:[I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSounds:[Ljava/lang/String;

.field private mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

.field private mTopY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c8

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    const/high16 v0, 0x4316

    sget v1, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v1

    sput v0, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_X_THREDHOLD:F

    const/high16 v0, 0x4396

    sget v1, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v1

    sput v0, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD:F

    const/high16 v0, 0x4248

    sget v1, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v1

    sput v0, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F

    sget v0, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v2

    sput v0, Lmiui/widget/HeiHeiGestureView;->MOVE_DOWN_DISTANCE_THREDHOLD:F

    sget v0, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v2

    sput v0, Lmiui/widget/HeiHeiGestureView;->MOVE_UP_DISTANCE_THREDHOLD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [D

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/HeiHeiGestureView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private exitWaiting(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->WAITING:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getTrackingY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lmiui/widget/HeiHeiGestureView;->mFirstY:F

    const/high16 v0, -0x4080

    iput v0, p0, Lmiui/widget/HeiHeiGestureView;->mBottomY:F

    const/high16 v0, 0x4f00

    iput v0, p0, Lmiui/widget/HeiHeiGestureView;->mTopY:F

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getElapsedTime(Landroid/view/MotionEvent;)J
    .locals 4
    .parameter "event"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getTrackingY(Landroid/view/MotionEvent;)F
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method private matchGesture(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    iget v0, p0, Lmiui/widget/HeiHeiGestureView;->mBottomY:F

    iget v1, p0, Lmiui/widget/HeiHeiGestureView;->mTopY:F

    sub-float/2addr v0, v1

    sget v1, Lmiui/widget/HeiHeiGestureView;->MOVE_DOWN_DISTANCE_THREDHOLD:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MATCHED:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/widget/HeiHeiGestureView;->mLastMatchTime:J

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    :goto_0
    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_1
.end method

.method private trigger()V
    .locals 6

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/widget/HeiHeiGestureView;->mLastTiggerTime:J

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    array-length v3, v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mListener:Lmiui/widget/HeiHeiGestureView$OnTriggerListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mListener:Lmiui/widget/HeiHeiGestureView$OnTriggerListener;

    invoke-interface {v3}, Lmiui/widget/HeiHeiGestureView$OnTriggerListener;->onTrigger()V

    :cond_0
    const-string v3, "/system/media/audio/ui/HeiHei.mp3"

    invoke-direct {p0, v3}, Lmiui/widget/HeiHeiGestureView;->playSound(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    .local v1, rand:D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    aget-wide v3, v3, v0

    sub-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mSounds:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lmiui/widget/HeiHeiGestureView;->playSound(Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lmiui/widget/HeiHeiGestureView;->mPictures:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Lmiui/widget/HeiHeiGestureView$1;

    invoke-direct {v3, p0}, Lmiui/widget/HeiHeiGestureView$1;-><init>(Lmiui/widget/HeiHeiGestureView;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4, v5}, Lmiui/widget/HeiHeiGestureView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lmiui/widget/HeiHeiGestureView;->mLastTiggerTime:J

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->WAITING:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->exitWaiting(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MATCHED:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/widget/HeiHeiGestureView;->mLastMatchTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-direct {p0}, Lmiui/widget/HeiHeiGestureView;->trigger()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->exitWaiting(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    if-eq v2, v3, :cond_2

    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    if-ne v2, v3, :cond_0

    :cond_2
    const/4 v2, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->matchGesture(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v2, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_X_THREDHOLD:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    :cond_5
    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v2, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getTrackingY(Landroid/view/MotionEvent;)F

    move-result v0

    .local v0, trackingY:F
    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    if-ne v2, v3, :cond_a

    iget v2, p0, Lmiui/widget/HeiHeiGestureView;->mTopY:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_7

    iput v0, p0, Lmiui/widget/HeiHeiGestureView;->mTopY:F

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lmiui/widget/HeiHeiGestureView;->mFirstY:F

    iget v3, p0, Lmiui/widget/HeiHeiGestureView;->mTopY:F

    sub-float/2addr v2, v3

    sget v3, Lmiui/widget/HeiHeiGestureView;->MOVE_UP_DISTANCE_THREDHOLD:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_8

    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    :cond_8
    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v2, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    goto :goto_1

    :cond_a
    iget v1, p0, Lmiui/widget/HeiHeiGestureView;->mBottomY:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_b

    iput v0, p0, Lmiui/widget/HeiHeiGestureView;->mBottomY:F

    goto :goto_1

    :cond_b
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->matchGesture(Landroid/view/MotionEvent;)Z

    goto :goto_1
.end method

.method public setOnTriggerListener(Lmiui/widget/HeiHeiGestureView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lmiui/widget/HeiHeiGestureView;->mListener:Lmiui/widget/HeiHeiGestureView$OnTriggerListener;

    return-void
.end method

.method public setResources([Ljava/lang/String;[I[D)V
    .locals 3
    .parameter "sounds"
    .parameter "pictures"
    .parameter "chances"

    .prologue
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lmiui/widget/HeiHeiGestureView;->mSounds:[Ljava/lang/String;

    iput-object p2, p0, Lmiui/widget/HeiHeiGestureView;->mPictures:[I

    iput-object p3, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    array-length v1, v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lmiui/widget/HeiHeiGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lmiui/widget/HeiHeiGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x60a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lmiui/widget/HeiHeiGestureView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
