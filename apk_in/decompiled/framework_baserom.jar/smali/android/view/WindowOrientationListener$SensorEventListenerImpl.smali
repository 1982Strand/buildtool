.class final Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0xa

.field private static final FD_ORIENTATIN_TOLERANCE:[[I = null

.field private static final FILTER_TIME_CONSTANT_MS:F = 100.0f

.field private static final HISTORY_SIZE:I = 0x14

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 14.709975f

.field private static final MAX_FILTER_DELTA_TIME_MS:F = 1000.0f

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 4.903325f

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SETTLE_MAGNITUDE_MAX_DELTA:F = 1.96133f

.field private static final SETTLE_MAGNITUDE_MAX_DELTA_FORTB:[F = null

.field private static final SETTLE_ORIENTATION_ANGLE_MAX_DELTA:I = 0x1e

.field private static final SETTLE_ORIENTATION_ANGLE_MAX_DELTA_FORTB:[I = null

.field private static final SETTLE_TILT_ANGLE_MAX_DELTA:I = 0xa

.field private static final SETTLE_TILT_ANGLE_MAX_DELTA_FORTB:I = 0x3

.field private static final SETTLE_TIME_MS:I

.field private static final SETTLE_TIME_MS_FORTB:I

.field private static final TILT_TOLERANCE:[[I

.field private static final lowerBound_portrait:[I

.field private static final lowerBound_wide:[I

.field private static mCount:I

.field private static mfaceDetectionm:Lcom/sec/android/facedetection/FaceDetectionManager;

.field private static final upperBound_portrait:[I

.field private static final upperBound_wide:[I


# instance fields
.field private MAX_TILT:I

.field private mFeatureofDevice:I

.field private mHistoryIndex:I

.field private mHistoryLength:I

.field private final mHistoryMagnitudes:[F

.field private final mHistoryOrientationAngles:[I

.field private final mHistoryTiltAngles:[I

.field private final mHistoryTimestampMS:[J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mLastTimestamp:J

.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mPm:Landroid/os/PowerManager;

.field private mProposalAgeMS:J

.field private mProposalRotation:I

.field private mlowerBound:[I

.field private mupperBound:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_wide:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_wide:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_portrait:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_portrait:[I

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SETTLE_MAGNITUDE_MAX_DELTA_FORTB:[F

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SETTLE_ORIENTATION_ANGLE_MAX_DELTA_FORTB:[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->FD_ORIENTATIN_TOLERANCE:[[I

    const/16 v0, 0x32

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCount:I

    return-void

    :array_0
    .array-data 0x4
        0xbct 0xfft 0xfft 0xfft
        0x44t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xbct 0xfft 0xfft 0xfft
        0x44t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xbct 0xfft 0xfft 0xfft
        0x44t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xbct 0xfft 0xfft 0xfft
        0x44t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x40t 0x1t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0x27t 0x1t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0xddt 0xct 0xfbt 0x3ft
        0xa6t 0x49t 0x3ct 0x40t
        0xat 0xe8t 0x9ct 0x40t
        0xa6t 0x49t 0xbct 0x40t
        0xa6t 0x49t 0xbct 0x40t
    .end array-data

    :array_9
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x96t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 4
    .parameter "orientationListener"

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    new-array v0, v2, [J

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    const/16 v0, 0x3c

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TILT:I

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;I)V
    .locals 4
    .parameter "orientationListener"
    .parameter "feature"

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    new-array v0, v2, [J

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    const/16 v0, 0x3c

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TILT:I

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iput p2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/WindowOrientationListener;->access$100(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/WindowOrientationListener;->access$100(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPm:Landroid/os/PowerManager;

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    and-int/lit8 v0, v0, 0x4

    if-eq v0, v3, :cond_0

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "WindowOrientationListener"

    const-string v1, "support wide tablet "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_wide:[I

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    sget-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_wide:[I

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    const/16 v0, 0x41

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TILT:I

    :cond_1
    return-void

    :array_0
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/view/WindowOrientationListener$SensorEventListenerImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    return-void
.end method

.method private static angleAbsoluteDelta(II)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .local v0, delta:I
    const/16 v1, 0xb4

    if-le v0, v1, :cond_0

    rsub-int v0, v0, 0x168

    :cond_0
    return v0
.end method

.method private clearProposal()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    return-void
.end method

.method private isFDAngleAcceptable(II)Z
    .locals 3
    .parameter "currentRotation"
    .parameter "FdAngle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->FD_ORIENTATIN_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    const/16 v2, 0x168

    if-le p2, v2, :cond_1

    :cond_0
    if-ltz p2, :cond_2

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->FD_ORIENTATIN_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-lez p1, :cond_5

    const/4 v2, 0x4

    if-ge p1, v2, :cond_5

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->FD_ORIENTATIN_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_4

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->FD_ORIENTATIN_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-le p2, v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private isOrientationAngleAcceptable(II)Z
    .locals 3
    .parameter "proposedRotation"
    .parameter "orientationAngle"

    .prologue
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v0, v1, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .local v0, currentRotation:I
    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isProposalOrientationAngleAcceptable(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isProposalOrientationAngleAcceptable(II)Z

    move-result v1

    goto :goto_0
.end method

.method private isProposalOrientationAngleAcceptable(II)Z
    .locals 5
    .parameter "proposedRotation"
    .parameter "orientationAngle"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v0, v3, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .local v0, currentRotation:I
    if-ltz v0, :cond_5

    if-eq p1, v0, :cond_0

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_3

    :cond_0
    mul-int/lit8 v3, p1, 0x5a

    add-int/lit8 v3, v3, -0x2d

    add-int/lit8 v1, v3, 0x5

    .local v1, lowerBound:I
    if-nez p1, :cond_2

    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    aget v3, v3, p1

    if-ge p2, v3, :cond_3

    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    if-le p2, v3, :cond_3

    .end local v1           #lowerBound:I
    :cond_1
    :goto_0
    return v2

    .restart local v1       #lowerBound:I
    :cond_2
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    aget v3, v3, p1

    if-lt p2, v3, :cond_1

    .end local v1           #lowerBound:I
    :cond_3
    if-eq p1, v0, :cond_4

    add-int/lit8 v3, v0, 0x3

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_5

    :cond_4
    if-nez p1, :cond_6

    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    aget v3, v3, p1

    if-le p2, v3, :cond_5

    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    add-int/lit8 v4, p1, 0x3

    aget v3, v3, v4

    if-lt p2, v3, :cond_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    aget v3, v3, p1

    if-le p2, v3, :cond_5

    goto :goto_0
.end method

.method private isTiltAngleAcceptable(II)Z
    .locals 3
    .parameter "proposedRotation"
    .parameter "tiltAngle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateProposal(IJFII)V
    .locals 7
    .parameter "rotation"
    .parameter "timestampMS"
    .parameter "magnitude"
    .parameter "tiltAngle"
    .parameter "orientationAngle"

    .prologue
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    if-eq v5, p1, :cond_0

    iput p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    :cond_0
    iget v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryIndex:I

    .local v3, index:I
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    aput-wide p2, v5, v3

    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    aput p4, v5, v3

    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    aput p5, v5, v3

    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    aput p6, v5, v3

    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0x14

    iput v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryIndex:I

    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    const/16 v6, 0x14

    if-ge v5, v6, :cond_1

    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    :cond_1
    const-wide/16 v0, 0x0

    .local v0, age:J
    const/4 v4, 0x0

    .local v4, olderIndex:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    if-ge v2, v5, :cond_2

    add-int/lit8 v5, v3, 0x14

    sub-int/2addr v5, v2

    rem-int/lit8 v4, v5, 0x14

    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    aget v5, v5, v4

    sub-float/2addr v5, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ffb0cdd

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    :cond_2
    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    return-void

    :cond_3
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    aget v5, v5, v4

    invoke-static {v5, p5}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->angleAbsoluteDelta(II)I

    move-result v5

    const/16 v6, 0xa

    if-gt v5, v6, :cond_2

    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    aget v5, v5, v4

    invoke-static {v5, p6}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->angleAbsoluteDelta(II)I

    move-result v5

    const/16 v6, 0x1e

    if-gt v5, v6, :cond_2

    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    aget-wide v5, v5, v4

    sub-long v0, p2, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateProposal_forTB(IJFII)V
    .locals 8
    .parameter "rotation"
    .parameter "timestampMS"
    .parameter "magnitude"
    .parameter "tiltAngle"
    .parameter "orientationAngle"

    .prologue
    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    if-eq v6, p1, :cond_0

    iput p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    :cond_0
    iget v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryIndex:I

    .local v3, index:I
    iget-object v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    aput-wide p2, v6, v3

    iget-object v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    aput p4, v6, v3

    iget-object v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    aput p5, v6, v3

    iget-object v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    aput p6, v6, v3

    add-int/lit8 v6, v3, 0x1

    rem-int/lit8 v6, v6, 0x14

    iput v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryIndex:I

    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    const/16 v7, 0x14

    if-ge v6, v7, :cond_1

    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    :cond_1
    const-wide/16 v0, 0x0

    .local v0, age:J
    const/4 v5, 0x0

    .local v5, olderIndex:I
    const/4 v4, 0x0

    .local v4, indexofSettleFactor:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    if-ge v2, v6, :cond_3

    add-int/lit8 v6, v3, 0x14

    sub-int/2addr v6, v2

    rem-int/lit8 v5, v6, 0x14

    add-int/lit8 v4, v2, -0x1

    const/4 v6, 0x4

    if-le v4, v6, :cond_2

    const/4 v4, 0x4

    :cond_2
    iget-object v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    aget v6, v6, v5

    sub-float/2addr v6, p4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget-object v7, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SETTLE_MAGNITUDE_MAX_DELTA_FORTB:[F

    aget v7, v7, v4

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    :cond_3
    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    return-void

    :cond_4
    iget-object v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    aget v6, v6, v5

    invoke-static {v6, p5}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->angleAbsoluteDelta(II)I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_3

    iget-object v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    aget v6, v6, v5

    invoke-static {v6, p6}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->angleAbsoluteDelta(II)I

    move-result v6

    sget-object v7, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SETTLE_ORIENTATION_ANGLE_MAX_DELTA_FORTB:[I

    aget v7, v7, v4

    if-gt v6, v7, :cond_3

    iget-object v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    aget-wide v6, v6, v5

    sub-long v0, p2, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, -0x1

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 26
    .parameter "event"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v5, v0, Landroid/view/WindowOrientationListener;->mLogEnabled:Z

    .local v5, log:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v19, v22, v23

    .local v19, x:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v20, v22, v23

    .local v20, y:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v21, v22, v23

    .local v21, z:F
    if-eqz v5, :cond_0

    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Raw acceleration vector: x="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", y="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", z="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .local v8, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    move-wide/from16 v22, v0

    sub-long v22, v8, v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x358637bd

    mul-float v18, v22, v23

    .local v18, timeDeltaMS:F
    const/16 v22, 0x0

    cmpg-float v22, v18, v22

    if-lez v22, :cond_1

    const/high16 v22, 0x447a

    cmpl-float v22, v18, v22

    if-gtz v22, :cond_1

    const/16 v22, 0x0

    cmpl-float v22, v19, v22

    if-nez v22, :cond_9

    const/16 v22, 0x0

    cmpl-float v22, v20, v22

    if-nez v22, :cond_9

    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-nez v22, :cond_9

    :cond_1
    if-eqz v5, :cond_2

    const-string v22, "WindowOrientationListener"

    const-string v23, "Resetting orientation listener."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    const/16 v16, 0x1

    .local v16, skipSample:Z
    :goto_0
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    const/4 v11, 0x0

    .local v11, orientationAngle:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v10

    .local v10, oldProposedRotation:I
    if-nez v16, :cond_5

    mul-float v22, v19, v19

    mul-float v23, v20, v20

    add-float v22, v22, v23

    mul-float v23, v21, v21

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v6, v0

    .local v6, magnitude:F
    const v22, 0x409ce80a

    cmpg-float v22, v6, v22

    if-ltz v22, :cond_3

    const v22, 0x416b5c0f

    cmpl-float v22, v6, v22

    if-lez v22, :cond_b

    :cond_3
    if-eqz v5, :cond_4

    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ignoring sensor data, magnitude out of range: magnitude="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    .end local v6           #magnitude:F
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v13

    .local v13, proposedRotation:I
    if-eqz v5, :cond_6

    const/high16 v12, 0x3f80

    .local v12, proposalConfidence:F
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Result: currentRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", proposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", timeDeltaMS="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", proposalRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", proposalAgeMS="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", proposalConfidence="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/high16 v24, 0x3f80

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v12           #proposalConfidence:F
    :cond_6
    if-eq v13, v10, :cond_8

    if-ltz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v13, v0, :cond_8

    const/4 v14, 0x0

    .local v14, rotationresult:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    :cond_7
    const/4 v14, 0x1

    :goto_2
    if-eqz v14, :cond_1f

    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", oldProposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "currentRotation = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Landroid/view/WindowOrientationListener;->access$100(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "intelligent_rotation_mode"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Landroid/view/WindowOrientationListener;->access$100(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "intelligent_screen_mode"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_18

    const/4 v4, 0x1

    .local v4, intelligent_rotation_enabled:Z
    :goto_3
    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .end local v4           #intelligent_rotation_enabled:Z
    .end local v14           #rotationresult:Z
    :cond_8
    :goto_4
    return-void

    .end local v10           #oldProposedRotation:I
    .end local v11           #orientationAngle:I
    .end local v13           #proposedRotation:I
    .end local v16           #skipSample:Z
    :cond_9
    const/high16 v22, 0x42c8

    add-float v22, v22, v18

    div-float v2, v18, v22

    .local v2, alpha:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    mul-float v22, v22, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v23, v0

    add-float v19, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    mul-float v22, v22, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v23, v0

    add-float v20, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v22, v0

    sub-float v22, v21, v22

    mul-float v22, v22, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v23, v0

    add-float v21, v22, v23

    if-eqz v5, :cond_a

    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Filtered acceleration vector: x="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", y="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", z="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v16, 0x0

    .restart local v16       #skipSample:Z
    goto/16 :goto_0

    .end local v2           #alpha:F
    .restart local v6       #magnitude:F
    .restart local v10       #oldProposedRotation:I
    .restart local v11       #orientationAngle:I
    :cond_b
    div-float v22, v21, v6

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    move-result-wide v22

    const-wide v24, 0x404ca5dc20000000L

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v17, v0

    .local v17, tiltAngle:I
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TILT:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    if-eqz v5, :cond_c

    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ignoring sensor data, tilt angle too high: magnitude="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", tiltAngle="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    goto/16 :goto_1

    :cond_d
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x404ca5dc20000000L

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v11, v0

    if-gez v11, :cond_e

    add-int/lit16 v11, v11, 0x168

    :cond_e
    add-int/lit8 v22, v11, 0x2d

    div-int/lit8 v7, v22, 0x5a

    .local v7, nearestRotation:I
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v7, v0, :cond_f

    const/4 v7, 0x0

    :cond_f
    sget v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCount:I

    const/16 v23, 0x32

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nearestRotation : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   Angle: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   tilt: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    sput v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCount:I

    :cond_10
    sget v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCount:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCount:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptable(II)Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptable(II)Z

    move-result v22

    if-nez v22, :cond_13

    :cond_11
    if-eqz v5, :cond_12

    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ignoring sensor data, no proposal: magnitude="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", tiltAngle="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", orientationAngle="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    goto/16 :goto_1

    :cond_13
    if-eqz v5, :cond_14

    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Proposal: magnitude="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", tiltAngle="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", orientationAngle="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", proposalRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v7, :cond_5

    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v7, :cond_5

    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    goto/16 :goto_1

    .end local v6           #magnitude:F
    .end local v7           #nearestRotation:I
    .end local v17           #tiltAngle:I
    .restart local v13       #proposedRotation:I
    .restart local v14       #rotationresult:Z
    :cond_17
    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_3

    .restart local v4       #intelligent_rotation_enabled:Z
    :cond_19
    const/4 v3, -0x1

    .local v3, fdangle:I
    const/4 v15, 0x0

    .local v15, sf:[Lcom/sec/android/facedetection/SecFace;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    move/from16 v22, v0

    if-ltz v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1c

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$300()I

    move-result v22

    if-eqz v22, :cond_1c

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$300()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$300()I

    move-result v22

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$300()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$300()I

    move-result v22

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c

    sget-object v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mfaceDetectionm:Lcom/sec/android/facedetection/FaceDetectionManager;

    if-nez v22, :cond_1a

    invoke-static {}, Lcom/sec/android/facedetection/FaceDetectionManager;->getFaceDetectionManager()Lcom/sec/android/facedetection/FaceDetectionManager;

    move-result-object v22

    sput-object v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mfaceDetectionm:Lcom/sec/android/facedetection/FaceDetectionManager;

    :cond_1a
    sget-object v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mfaceDetectionm:Lcom/sec/android/facedetection/FaceDetectionManager;

    if-eqz v22, :cond_1c

    const-string v22, "WindowOrientationListener"

    const-string v23, "fd ++ "

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mfaceDetectionm:Lcom/sec/android/facedetection/FaceDetectionManager;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/facedetection/FaceDetectionManager;->enable()V

    sget-object v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mfaceDetectionm:Lcom/sec/android/facedetection/FaceDetectionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/facedetection/FaceDetectionManager;->getFaceInfo(II)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v15

    array-length v0, v15

    move/from16 v22, v0

    if-lez v22, :cond_1b

    const/16 v22, 0x0

    aget-object v22, v15, v22

    move-object/from16 v0, v22

    iget v3, v0, Lcom/sec/android/facedetection/SecFace;->orientation:I

    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "fd angle= "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v15, v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/facedetection/SecFace;->orientation:I

    move/from16 v24, v0

    move/from16 v0, v24

    rem-int/lit16 v0, v0, 0x168

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPm:Landroid/os/PowerManager;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_1b
    sget-object v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mfaceDetectionm:Lcom/sec/android/facedetection/FaceDetectionManager;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/facedetection/FaceDetectionManager;->disable()V

    const-string v22, "WindowOrientationListener"

    const-string v23, "fd -- "

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    if-eqz v15, :cond_1d

    array-length v0, v15

    move/from16 v22, v0

    if-gtz v22, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto/16 :goto_4

    :cond_1e
    const-string v22, "WindowOrientationListener"

    const-string v23, "detected face, skip rotation  "

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v3           #fdangle:I
    .end local v4           #intelligent_rotation_enabled:Z
    .end local v15           #sf:[Lcom/sec/android/facedetection/SecFace;
    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    goto/16 :goto_4
.end method
