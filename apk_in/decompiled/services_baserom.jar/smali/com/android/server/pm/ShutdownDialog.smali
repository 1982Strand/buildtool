.class public Lcom/android/server/pm/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;
    }
.end annotation


# static fields
.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/PowerOff.ogg"

.field private static final SHUTDOWN_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private final DRAW_BEFORE:I

.field private final DRAW_FINISH:I

.field private final DRAW_NEXT:I

.field private final DRAW_START:I

.field private MAX_IMAGECOUNT:I

.field private buf:[I

.field private cntImages:I

.field private handle:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mDrawState:I

.field private mImages:Landroid/graphics/Bitmap;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRunOnAnimationEnd:Ljava/lang/Runnable;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mViewUpdateHandler:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

.field private mp:Landroid/media/MediaPlayer;

.field private sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

.field private sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

.field private soundThread:Ljava/lang/Thread;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "theme"

    .prologue
    const/16 v1, 0xc8

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->MAX_IMAGECOUNT:I

    iput v4, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_BEFORE:I

    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_START:I

    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_NEXT:I

    const/16 v1, 0x190

    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_FINISH:I

    iput v4, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    new-instance v1, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;-><init>(Lcom/android/server/pm/ShutdownDialog;Lcom/android/server/pm/ShutdownDialog$1;)V

    iput-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mViewUpdateHandler:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    iput v3, p0, Lcom/android/server/pm/ShutdownDialog;->cntImages:I

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "POWER_OFF_ANIMATION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, startAnimation:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShutdownDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    const-string v1, "/system/media/audio/ui/PowerOn.ogg"

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/ShutdownDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/ShutdownDialog;)[I
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->buf:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/ShutdownDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/pm/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/pm/ShutdownDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/pm/ShutdownDialog;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/pm/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->soundThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    return v0
.end method

.method public static existAnim()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    new-instance v0, Ljava/io/File;

    const-string v2, "//system/csc_contents/shutdown.qmg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #f:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareAnim(Ljava/lang/String;)V
    .locals 5
    .parameter "animPath"

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/pm/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    :goto_0
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    invoke-static {v2}, Lcom/android/server/pm/LibQmg;->qmgGetWidth(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    invoke-static {v2}, Lcom/android/server/pm/LibQmg;->qmgGetHeight(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, l:Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v1, nl:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    iget v3, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_1
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    iget v3, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->buf:[I

    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    iget v3, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-void

    .end local v0           #l:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #nl:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-static {v2}, Lcom/android/server/pm/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    goto/16 :goto_0

    .restart local v0       #l:Landroid/view/WindowManager$LayoutParams;
    .restart local v1       #nl:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1
.end method

.method private prepareSound(Ljava/lang/String;)V
    .locals 4
    .parameter "soundPath"

    .prologue
    const-string v2, ""

    const-string v3, "KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :try_start_0
    const-string v2, "ShutdownDialog"

    const-string v3, "shutdown Dialog kor power snd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "service.media.powersnd"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ctl.start"

    const-string v3, "powersnd"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShutdownDialog;->prepareSoundThread(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-static {v0, v2}, Lcom/android/server/pm/ShutdownThreadFeature;->SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V

    goto :goto_0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private prepareSoundThread(Ljava/lang/String;)V
    .locals 10
    .parameter "soundPath"

    .prologue
    const/4 v9, 0x1

    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/pm/ShutdownDialog$1;

    invoke-direct {v8, p0}, Lcom/android/server/pm/ShutdownDialog$1;-><init>(Lcom/android/server/pm/ShutdownDialog;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->soundThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    .local v2, f:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, fMultiCsc:Ljava/io/File;
    if-eqz p1, :cond_0

    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #f:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    const-string v7, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #f:Ljava/io/File;
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    const-string v7, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #f:Ljava/io/File;
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    const-string v7, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #f:Ljava/io/File;
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_9

    :cond_7
    const-string v7, "ShutdownDialog"

    const-string v8, "!@Sound file not found, Shutdown sound will not be start!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    return-void

    :cond_9
    const-string v7, "ShutdownDialog"

    const-string v8, "!@Sound file found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .local v6, volume:I
    if-gez v6, :cond_a

    const-string v7, "ShutdownDialog"

    const-string v8, "!@Volume is not enough"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    const/4 v4, 0x0

    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    new-instance v8, Lcom/android/server/pm/ShutdownDialog$2;

    invoke-direct {v8, p0}, Lcom/android/server/pm/ShutdownDialog$2;-><init>(Lcom/android/server/pm/ShutdownDialog;)V

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v5, :cond_8

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v5           #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    goto :goto_0

    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "ShutdownDialog"

    const-string v8, "!@MediaPlayer exception raised. SoundThread is not started !"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_8

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_b

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_b
    :goto_3
    throw v7

    :catch_2
    move-exception v8

    goto :goto_3

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const-string v0, "ShutdownDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v2, "ShutdownDialog"

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->start()V

    return-void

    :cond_1
    const-string v1, "ShutdownDialog"

    const-string v2, "StatusBarManager == null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public prepareBootup()V
    .locals 2

    .prologue
    const-string v0, "ShutdownDialog"

    const-string v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/system/media/audio/ui/PowerOn.ogg"

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    const-string v0, "/system/media/video/shutdown/warmboot.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->prepareAnim(Ljava/lang/String;)V

    return-void
.end method

.method public prepareShutdown()V
    .locals 5

    .prologue
    const-string v3, "ShutdownDialog"

    const-string v4, "prepare shutdown dialog image and sound"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v3, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, shutdownSoundFileMultiCSC:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {p0, v3}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v3, "//system/csc_contents/shutdown.qmg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, shutdownFilePathMultiCSC:Ljava/io/File;
    const/4 v0, 0x0

    .local v0, filePath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "//system/csc_contents/shutdown.qmg"

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->prepareAnim(Ljava/lang/String;)V

    return-void

    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #shutdownFilePathMultiCSC:Ljava/io/File;
    :cond_0
    const-string v3, "/System/media/audio/ui/PowerOff.ogg"

    invoke-direct {p0, v3}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0       #filePath:Ljava/lang/String;
    .restart local v1       #shutdownFilePathMultiCSC:Ljava/io/File;
    :cond_1
    const-string v0, "//system/media/video/shutdown/shutdown.qmg"

    goto :goto_1
.end method

.method public setOnAnimationEnd(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mViewUpdateHandler:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "ShutdownDialog"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    :cond_0
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .locals 6
    .parameter "waittime"

    .prologue
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "ShutdownDialog"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_1
    return v1

    :cond_0
    const-string v2, "ShutdownDialog"

    const-string v3, "animation end wait start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ShutdownDialog"

    const-string v3, "animation end lock time out or null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v1, "ShutdownDialog"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    :goto_2
    const-string v1, "ShutdownDialog"

    const-string v2, "animation end detected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ShutdownDialog"

    const-string v3, "sound end lock time out or null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ShutdownDialog"

    const-string v2, "Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method