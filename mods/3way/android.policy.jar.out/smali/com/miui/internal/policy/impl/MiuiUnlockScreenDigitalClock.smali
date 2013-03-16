.class public Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;
.super Landroid/widget/LinearLayout;
.source "MiuiUnlockScreenDigitalClock.java"


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mDate:Landroid/widget/TextView;

.field private mFirstDigital:Landroid/widget/ImageView;

.field private mFormat:Ljava/lang/String;

.field private mFouthDigital:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondDigital:Landroid/widget/ImageView;

.field private mThirdDigital:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    .line 38
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    const-string v1, "0"

    const v2, 0x6020255

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    const-string v1, "1"

    const v2, 0x6020256

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    const-string v1, "2"

    const v2, 0x6020257

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    const-string v1, "3"

    const v2, 0x6020258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    const-string v1, "4"

    const v2, 0x6020259

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    const-string v1, "5"

    const v2, 0x602025a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    const-string v1, "6"

    const v2, 0x602025b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    const-string v1, "7"

    const v2, 0x602025c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    const-string v1, "8"

    const v2, 0x602025d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    const-string v1, "9"

    const v2, 0x602025e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1;-><init>(Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    return-void
.end method

.method static synthetic access$002(Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setDateFormat()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mFormat:Ljava/lang/String;

    .line 153
    return-void

    .line 152
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 125
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 126
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mFormat:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 127
    .local v1, newTime:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 128
    .local v6, start:I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 129
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mFirstDigital:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :cond_0
    :goto_0
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->getDigitalResId(Ljava/lang/String;)I

    move-result v3

    .line 138
    .local v3, resId2:I
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mSecondDigital:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    add-int/lit8 v7, v6, 0x2

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->getDigitalResId(Ljava/lang/String;)I

    move-result v4

    .line 141
    .local v4, resId3:I
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mThirdDigital:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    add-int/lit8 v7, v6, 0x3

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->getDigitalResId(Ljava/lang/String;)I

    move-result v5

    .line 144
    .local v5, resId4:I
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mFouthDigital:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mContext:Landroid/content/Context;

    const v8, 0x60c0231

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 147
    .local v0, date:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void

    .line 130
    .end local v0           #date:Ljava/lang/CharSequence;
    .end local v3           #resId2:I
    .end local v4           #resId3:I
    .end local v5           #resId4:I
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    .line 131
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->getDigitalResId(Ljava/lang/String;)I

    move-result v2

    .line 132
    .local v2, resId1:I
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mFirstDigital:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v7, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mFirstDigital:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    const/4 v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getDigitalResId(Ljava/lang/String;)I
    .locals 1
    .parameter "digitalString"

    .prologue
    .line 76
    sget-object v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->sMiuiUnlockScreenDigital2ResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 95
    iget-boolean v1, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mAttached:Z

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 112
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mAttached:Z

    .line 115
    iget-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 81
    const v0, 0x60b00c9

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mFirstDigital:Landroid/widget/ImageView;

    .line 82
    const v0, 0x60b00ca

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mSecondDigital:Landroid/widget/ImageView;

    .line 83
    const v0, 0x60b00cb

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mThirdDigital:Landroid/widget/ImageView;

    .line 84
    const v0, 0x60b00cc

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mFouthDigital:Landroid/widget/ImageView;

    .line 85
    const v0, 0x60b00cd

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mDate:Landroid/widget/TextView;

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 88
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->setDateFormat()V

    .line 89
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 121
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->updateTime()V

    .line 122
    return-void
.end method
