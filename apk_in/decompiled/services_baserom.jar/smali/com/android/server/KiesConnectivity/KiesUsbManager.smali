.class public Lcom/android/server/KiesConnectivity/KiesUsbManager;
.super Ljava/lang/Object;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "KiesUsbManager"


# instance fields
.field private final CDFS_FUNCTION:Ljava/lang/String;

.field private final CDFS_INSERT_PATH:Ljava/lang/String;

.field private final CDFS_PATH:Ljava/lang/String;

.field private cdfsEjectTimer:Ljava/util/Timer;

.field private context:Landroid/content/Context;

.field private isAdbOnByToolLauncher:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "mContext"

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_INSERT_PATH:Ljava/lang/String;

    const-string v0, "/system/etc/autorun.iso"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_PATH:Ljava/lang/String;

    const-string v0, "mass_storage,acm,mtp"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_FUNCTION:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->isAdbOnByToolLauncher:Z

    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string v0, "KiesUsbManager"

    const-string v1, "KiesUsbManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KiesUsbManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;

    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSEject()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSInsert()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method private getUsbCurrentSettingMode()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v1, "persist.sys.usb.config"

    const-string v2, "adb"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, mDefaultFunctions:Ljava/lang/String;
    const-string v1, "KiesUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsbCurrentSettingMode() -> persist.sys.usb.config : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isAdbEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, enabled:I
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private saveISOToFile(Z)Z
    .locals 6
    .parameter "bInsert"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, fout:Ljava/io/FileOutputStream;
    if-eqz p1, :cond_3

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fout:Ljava/io/FileOutputStream;
    .local v2, fout:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "/system/etc/autorun.iso"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    :goto_1
    return v3

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_3
    move v3, v4

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_5
    throw v3

    :cond_3
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :try_start_6
    const-string v5, "0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_4
    :goto_6
    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_1

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    :goto_7
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_8
    move v3, v4

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :goto_9
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_a
    throw v3

    .restart local v0       #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v0           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private setCDFSEject()V
    .locals 2

    .prologue
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSEject"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->saveISOToFile(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSEject : fail to write the file"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setCDFSInsert()V
    .locals 2

    .prologue
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSInsert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->saveISOToFile(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSInsert : fail to write the file"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private declared-synchronized startCDFSEjectTimer()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .local v0, myTask:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v1, "KiesUsbManager"

    const-string v2, "startCDFSEjectTimer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #myTask:Ljava/util/TimerTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized stopCDFSEjectTimer()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const-string v0, "KiesUsbManager"

    const-string v1, "stopCDFSEjectTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method