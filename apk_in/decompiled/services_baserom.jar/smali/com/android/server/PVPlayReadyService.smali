.class public Lcom/android/server/PVPlayReadyService;
.super Landroid/app/Service;
.source "PVPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PVPlayReadyService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final BOOT_COMPLETE:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/DateFormat; = null

.field public static final GOT_DATA_CONNECTION:I = 0x2

.field public static final GOT_NITZ:I = 0x3

.field private static final LIMIT_TIME:I = 0x1388

.field private static final NTP_SERVER:Ljava/lang/String; = "pool.ntp.org"

.field private static final PLAYREADY_BEFORE_TIME_FILE:Ljava/lang/String; = "data/data/.drm/.playready/PVPlayReadyBeforeTime.ini"

.field private static final TAG:Ljava/lang/String; = "PVPLayReadyService"

.field public static final TIME_CHANGE:I = 0x4

.field private static beforeBeforeTime:J

.field private static firstNetworkTime:Z

.field private static timeFormat:Ljava/lang/String;


# instance fields
.field private mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/PVPlayReadyService;->DATE_FORMAT:Ljava/text/DateFormat;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/PVPlayReadyService;->firstNetworkTime:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/PVPlayReadyService;->nitzReceived()V

    return-void
.end method

.method private static native autoUpdate()V
.end method

.method private static native bootComplete()V
.end method

.method private getBeforeTime()J
    .locals 12

    .prologue
    const-wide/16 v7, -0x1

    const-wide/16 v0, 0x0

    .local v0, beforeTime:J
    const/4 v2, 0x0

    .local v2, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "data/data/.drm/.playready/PVPlayReadyBeforeTime.ini"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_1
    const-string v9, "PVPLayReadyService"

    const-string v10, "FileReading Start"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    .local v5, nextLine:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .end local v5           #nextLine:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .local v4, e:Ljava/lang/NumberFormatException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_0
    :goto_2
    move-wide v7, v0

    :cond_1
    :goto_3
    return-wide v7

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #nextLine:Ljava/lang/String;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_2
    :try_start_4
    const-string v9, "PVPLayReadyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beforeTIme is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-wide v9, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    cmp-long v9, v9, v7

    if-eqz v9, :cond_4

    sget-wide v9, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    cmp-long v9, v9, v0

    if-nez v9, :cond_4

    const-string v9, "PVPLayReadyService"

    const-string v10, "returning because of double intent"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_4
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :cond_4
    :try_start_6
    const-string v9, "PVPLayReadyService"

    const-string v10, "proper beforetime so proceed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide v0, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    const-string v9, "PVPLayReadyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beforeTIme in Long is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_5
    :goto_5
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v5           #nextLine:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v4

    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_8
    const-string v9, "PVPlayReadyService"

    const-string v10, "Returning from PVPlayReadyService because beforetime not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catch_2
    move-exception v9

    goto :goto_3

    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    :goto_7
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_0

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_2

    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto/16 :goto_2

    :catchall_0
    move-exception v7

    :goto_8
    if-eqz v2, :cond_6

    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_6
    :goto_9
    throw v7

    :catch_5
    move-exception v8

    goto :goto_9

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #nextLine:Ljava/lang/String;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :catch_6
    move-exception v9

    goto :goto_4

    :catch_7
    move-exception v7

    goto :goto_5

    .end local v5           #nextLine:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_8

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_9
    move-exception v4

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_6

    :catch_a
    move-exception v4

    goto/16 :goto_1
.end method

.method private handleConnectivityStateChanged()V
    .locals 3

    .prologue
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .local v1, policy:Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/server/PVPlayReadyService$1;

    invoke-direct {v2, p0}, Lcom/android/server/PVPlayReadyService$1;-><init>(Lcom/android/server/PVPlayReadyService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static native nitzReceived()V
.end method

.method private static native ntpReceived(JJ)V
.end method

.method private static native testMethod()V
.end method

.method private static native updateTime(JJ)V
.end method

.method private userUpdateHandler()V
    .locals 7

    .prologue
    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, nowTimeFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, autoEnable:I
    const-string v4, "PVPLayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PVPLayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PVPLayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .local v1, now:Ljava/util/Date;
    sget-object v4, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "24"

    sput-object v4, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    :cond_0
    if-nez v2, :cond_1

    const-string v2, "24"

    :cond_1
    const-string v4, "PVPLayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PVPLayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "PVPLayReadyService"

    const-string v5, "userUpdatedTimeReceiver time format is not changed check if it is NITZ Update"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    const-string v4, "PVPLayReadyService"

    const-string v5, "This is a not NITZ update.Time format is also not changed.Update delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->handleUserUpdatedTimeUpdation()V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .local v3, telephonymanager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    const-string v4, "PVPLayReadyService"

    const-string v5, "Auto time update is on but sim is not in ready state hence no NITZ update will follow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->handleUserUpdatedTimeUpdation()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/PVPlayReadyService;->autoUpdate()V

    goto :goto_0

    .end local v3           #telephonymanager:Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v4, "PVPLayReadyService"

    const-string v5, "userUpdatedTimeReceiver format is changed no need to udpate Delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleNitzTimeUpdation()V
    .locals 6

    .prologue
    const-wide/16 v1, 0x0

    .local v1, nitzTime:J
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .local v0, handler:Landroid/os/Handler;
    new-instance v3, Lcom/android/server/PVPlayReadyService$2;

    invoke-direct {v3, p0}, Lcom/android/server/PVPlayReadyService$2;-><init>(Lcom/android/server/PVPlayReadyService;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public handleUserUpdatedTimeUpdation()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .local v2, beforeTime:J
    const-wide/16 v0, 0x0

    .local v0, afterTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .local v4, now:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v0, v5, v7

    invoke-direct {p0}, Lcom/android/server/PVPlayReadyService;->getBeforeTime()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_0

    const-string v5, "PVPlayReadyService"

    const-string v6, "Not calling updateTime"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v5, "PVPLayReadyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay beforeTime :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "and afterTime :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/PVPlayReadyService;->updateTime(JJ)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/server/PVPlayReadyService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/PVPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/PVPlayReadyService$ServiceHandler;-><init>(Lcom/android/server/PVPlayReadyService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    const-string v0, "PVPLayReadyService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onNetworkStateChanged(JJ)V
    .locals 3
    .parameter "networktime"
    .parameter "systemtime"

    .prologue
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    cmp-long v0, p3, v1

    if-lez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/PVPlayReadyService;->ntpReceived(JJ)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/server/PVPlayReadyService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    const-string v1, "PVPLayReadyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Format is: :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v4, v0, Landroid/os/Message;->what:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/PVPlayReadyService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.NITZ_SET_TIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PVPlayReadyService"

    const-string v2, "Current action is nitz set time"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "PVPlayReadyService"

    const-string v2, "Current action is user change time"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/server/PVPlayReadyService;->testMethod()V

    goto :goto_0
.end method