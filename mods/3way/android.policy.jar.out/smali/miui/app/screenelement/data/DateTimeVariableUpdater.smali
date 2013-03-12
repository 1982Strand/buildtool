.class public Lmiui/app/screenelement/data/DateTimeVariableUpdater;
.super Lmiui/app/screenelement/data/NotifierVariableUpdater;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/DateTimeVariableUpdater$2;,
        Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"


# instance fields
.field private mAmPm:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field protected mCalendar:Ljava/util/Calendar;

.field private mCurrentTime:J

.field private mDate:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mDayOfWeek:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mHandler:Landroid/os/Handler;

.field private mHour12:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mHour24:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mLastUpdatedTime:J

.field private mMinute:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mMonth:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mNextAlarm:Lmiui/app/screenelement/util/IndexedStringVariable;

.field private mNextUpdateTime:J

.field private mSecond:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTimeAccuracy:J

.field private mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lmiui/app/screenelement/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 71
    sget-object v0, Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;->Second:Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 8
    .parameter "m"
    .parameter "accuracy"

    .prologue
    .line 75
    sget-object v5, Lmiui/app/screenelement/NotifierManager$NotifierType;->TimeChanged:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-direct {p0, p1, v5}, Lmiui/app/screenelement/data/NotifierVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Lmiui/app/screenelement/NotifierManager$NotifierType;)V

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 54
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v5, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;

    invoke-direct {v5, p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;-><init>(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)V

    iput-object v5, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, acc:Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    invoke-static {}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;->values()[Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;

    move-result-object v2

    .local v2, arr$:[Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 79
    .local v0, a:Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;
    invoke-virtual {v0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    move-object v1, v0

    .line 78
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v0           #a:Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;
    .end local v2           #arr$:[Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    if-nez v1, :cond_2

    .line 84
    sget-object v1, Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;->Second:Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;

    .line 85
    const-string v5, "DateTimeVariableUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid accuracy tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    invoke-direct {p0, v1}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->initInner(Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 1
    .parameter "m"
    .parameter "accuracy"

    .prologue
    .line 91
    sget-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->TimeChanged:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Lmiui/app/screenelement/NotifierManager$NotifierType;)V

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;-><init>(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 92
    invoke-direct {p0, p2}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->initInner(Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method private checkUpdateTime()V
    .locals 8

    .prologue
    .line 175
    iget-object v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 177
    .local v2, currentTimeMillis:J
    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    div-long v4, v2, v4

    iget-wide v6, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    mul-long v0, v4, v6

    .line 178
    .local v0, currentTime:J
    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 179
    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 180
    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v6, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 181
    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    .line 183
    :cond_0
    iget-object v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v6, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method

.method private initInner(Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 5
    .parameter "accuracy"

    .prologue
    const-wide/16 v3, 0x3e8

    .line 96
    const-string v0, "DateTimeVariableUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init with accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lmiui/app/screenelement/data/DateTimeVariableUpdater$2;->$SwitchMap$miui$app$screenelement$data$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    iput-wide v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 115
    :goto_0
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "year"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mYear:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 116
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "month"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMonth:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 117
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "date"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDate:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 118
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "day_of_week"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 119
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "ampm"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mAmPm:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 120
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "hour12"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour12:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 121
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "hour24"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour24:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 122
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "minute"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMinute:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 123
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "second"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mSecond:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 124
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "time"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 125
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "time_sys"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 126
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 127
    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    const-string v1, "next_alarm_time"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 128
    return-void

    .line 99
    :pswitch_0
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 102
    :pswitch_1
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 105
    :pswitch_2
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 108
    :pswitch_3
    iput-wide v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshAlarm()V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, nextAlarm:Ljava/lang/String;
    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private updateTime()V
    .locals 6

    .prologue
    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 188
    .local v0, elapsedTime:J
    iget-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 189
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 191
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mAmPm:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 192
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour12:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 193
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour24:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 194
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMinute:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 195
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mYear:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 196
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMonth:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 197
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDate:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 199
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 200
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mSecond:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 201
    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;->finish()V

    .line 165
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    .line 131
    invoke-super {p0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;->init()V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    .local v0, currentTimeMillis:J
    iget-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    div-long v2, v0, v2

    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 135
    iget-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    div-long/2addr v2, v4

    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 137
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 138
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 139
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 207
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 208
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;->pause()V

    .line 160
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;->resume()V

    .line 151
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 155
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 156
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/data/NotifierVariableUpdater;->tick(J)V

    .line 144
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    long-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 145
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 146
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->updateTime()V

    .line 147
    return-void
.end method
