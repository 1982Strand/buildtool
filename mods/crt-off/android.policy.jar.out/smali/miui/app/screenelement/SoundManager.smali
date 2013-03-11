.class public Lmiui/app/screenelement/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/SoundManager$SoundOptions;
    }
.end annotation


# static fields
.field private static final MAX_STREAMS:I = 0x8


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mInitSignal:Ljava/lang/Object;

.field private mInitialized:Z

.field private mPendingSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/app/screenelement/SoundManager$SoundOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSoundMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceManager:Lmiui/app/screenelement/ResourceManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V
    .locals 1
    .parameter "context"
    .parameter "rm"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lmiui/app/screenelement/SoundManager;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/SoundManager;->mHandler:Landroid/os/Handler;

    .line 63
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/app/screenelement/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/SoundManager;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lmiui/app/screenelement/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$100(Lmiui/app/screenelement/SoundManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mInitSignal:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/app/screenelement/SoundManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lmiui/app/screenelement/SoundManager;->mInitialized:Z

    return p1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 67
    iget-boolean v1, p0, Lmiui/app/screenelement/SoundManager;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/SoundManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmiui/app/screenelement/SoundManager$1;

    invoke-direct {v2, p0}, Lmiui/app/screenelement/SoundManager$1;-><init>(Lmiui/app/screenelement/SoundManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/SoundManager;->mInitSignal:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :try_start_1
    iget-boolean v1, p0, Lmiui/app/screenelement/SoundManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lmiui/app/screenelement/SoundManager;->mInitSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 87
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized playSoundImp(ILmiui/app/screenelement/SoundManager$SoundOptions;)V
    .locals 10
    .parameter "sound"
    .parameter "options"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget-boolean v0, p2, Lmiui/app/screenelement/SoundManager$SoundOptions;->mKeepCur:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 146
    .local v9, sd:Ljava/lang/Integer;
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 141
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #sd:Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p2, Lmiui/app/screenelement/SoundManager$SoundOptions;->mVolume:F

    iget v3, p2, Lmiui/app/screenelement/SoundManager$SoundOptions;->mVolume:F

    const/4 v4, 0x1

    iget-boolean v1, p2, Lmiui/app/screenelement/SoundManager$SoundOptions;->mLoop:Z

    if-eqz v1, :cond_3

    const/4 v5, -0x1

    :goto_2
    const/high16 v6, 0x3f80

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 152
    .local v7, cur:I
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    .end local v7           #cur:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 157
    if-nez p3, :cond_0

    .line 158
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/SoundManager$SoundOptions;

    invoke-direct {p0, p2, v0}, Lmiui/app/screenelement/SoundManager;->playSoundImp(ILmiui/app/screenelement/SoundManager$SoundOptions;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public declared-synchronized playSound(Ljava/lang/String;Lmiui/app/screenelement/SoundManager$SoundOptions;)V
    .locals 10
    .parameter "sound"
    .parameter "options"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/app/screenelement/SoundManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lmiui/app/screenelement/SoundManager;->init()V

    .line 98
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 125
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_2
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 105
    .local v9, sd:Ljava/lang/Integer;
    if-nez v9, :cond_4

    .line 106
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v8

    .line 107
    .local v8, file:Landroid/os/MemoryFile;
    if-nez v8, :cond_3

    .line 108
    const-string v0, "Lockscreen_SoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the sound does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v8           #file:Landroid/os/MemoryFile;
    .end local v9           #sd:Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    .restart local v8       #file:Landroid/os/MemoryFile;
    .restart local v9       #sd:Ljava/lang/Integer;
    :cond_3
    :try_start_2
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Landroid/os/MemoryFile;->length()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 114
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v8}, Landroid/os/MemoryFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    :goto_1
    :try_start_3
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :catch_0
    move-exception v7

    .line 117
    .local v7, e:Ljava/io/IOException;
    const-string v0, "Lockscreen_SoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to load sound. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #file:Landroid/os/MemoryFile;
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lmiui/app/screenelement/SoundManager;->playSoundImp(ILmiui/app/screenelement/SoundManager$SoundOptions;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/app/screenelement/SoundManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 134
    iget-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 137
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/SoundManager;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
