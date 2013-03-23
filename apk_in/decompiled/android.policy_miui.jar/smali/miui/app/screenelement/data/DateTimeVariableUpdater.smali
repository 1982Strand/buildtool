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
    sget-object v0, Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;->Second:Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 8
    .parameter "m"
    .parameter "accuracy"

    .prologue
    sget-object v5, Lmiui/app/screenelement/NotifierManager$NotifierType;->TimeChanged:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-direct {p0, p1, v5}, Lmiui/app/screenelement/data/NotifierVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Lmiui/app/screenelement/NotifierManager$NotifierType;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    new-instance v5, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;

    invoke-direct {v5, p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;-><init>(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)V

    iput-object v5, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .local v1, acc:Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

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

    .local v0, a:Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;
    invoke-virtual {v0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #a:Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;
    .end local v2           #arr$:[Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    if-nez v1, :cond_2

    sget-object v1, Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;->Second:Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;

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

    :cond_2
    invoke-direct {p0, v1}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->initInner(Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 1
    .parameter "m"
    .parameter "accuracy"

    .prologue
    sget-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->TimeChanged:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Lmiui/app/screenelement/NotifierManager$NotifierType;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;-><init>(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->initInner(Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method private checkUpdateTime()V
    .locals 8

    .prologue
    iget-object v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, currentTimeMillis:J
    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    div-long v4, v2, v4

    iget-wide v6, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    mul-long v0, v4, v6

    .local v0, currentTime:J
    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v6, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    :cond_0
    iget-object v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v6, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initInner(Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 5
    .parameter "accuracy"

    .prologue
    const-wide/16 v3, 0x3e8

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

    sget-object v0, Lmiui/app/screenelement/data/DateTimeVariableUpdater$2;->$SwitchMap$miui$app$screenelement$data$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iput-wide v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    :goto_0
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "year"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mYear:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "month"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMonth:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "date"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDate:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "day_of_week"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "ampm"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mAmPm:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "hour12"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour12:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "hour24"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour24:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "minute"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMinute:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "second"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mSecond:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "time"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "time_sys"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    const-string v1, "next_alarm_time"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/app/screenelement/util/IndexedStringVariable;

    return-void

    :pswitch_0
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    :pswitch_1
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    :pswitch_2
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    :pswitch_3
    iput-wide v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

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
    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, nextAlarm:Ljava/lang/String;
    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    return-void
.end method

.method private updateTime()V
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, elapsedTime:J
    iget-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mAmPm:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour12:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour24:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMinute:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mYear:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMonth:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDate:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mSecond:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    invoke-super {p0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;->finish()V

    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    invoke-super {p0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;->init()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, currentTimeMillis:J
    iget-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    div-long v2, v0, v2

    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    div-long/2addr v2, v4

    iget-wide v4, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->refreshAlarm()V

    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->checkUpdateTime()V

    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    invoke-super {p0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;->pause()V

    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;->resume()V

    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->refreshAlarm()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/data/NotifierVariableUpdater;->tick(J)V

    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    long-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->updateTime()V

    return-void
.end method
