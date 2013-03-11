.class public Lmiui/app/screenelement/elements/MusicControlScreenElement;
.super Lmiui/app/screenelement/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final CHECK_STREAM_MUSIC_DELAY:I = 0x3e8

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field private static final MUSIC_NONE:I = 0x0

.field private static final MUSIC_PLAY:I = 0x2

.field private static final MUSIC_STOP:I = 0x1

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private isPaused:Z

.field private mAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShow:Z

.field private mButtonNext:Lmiui/app/screenelement/elements/ButtonScreenElement;

.field private mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;

.field private mButtonPlay:Lmiui/app/screenelement/elements/ButtonScreenElement;

.field private mButtonPrev:Lmiui/app/screenelement/elements/ButtonScreenElement;

.field private mCheckStreamMusicRunnable:Ljava/lang/Runnable;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

.field private mFilter:Landroid/content/IntentFilter;

.field private final mHandler:Landroid/os/Handler;

.field private mImageAlbumCover:Lmiui/app/screenelement/elements/ImageScreenElement;

.field private mIsOnlineSongBlocking:Z

.field private mMusicStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mMusicStatus:I

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mSpectrumVisualizer:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 160
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v1, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;

    invoke-direct {v1, p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;-><init>(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 217
    iput-boolean v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->isPaused:Z

    .line 395
    new-instance v1, Lmiui/app/screenelement/elements/MusicControlScreenElement$2;

    invoke-direct {v1, p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement$2;-><init>(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    .line 404
    new-instance v1, Lmiui/app/screenelement/elements/MusicControlScreenElement$3;

    invoke-direct {v1, p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement$3;-><init>(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    .line 85
    const-string v1, "music_prev"

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/app/screenelement/elements/ButtonScreenElement;

    .line 86
    const-string v1, "music_next"

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonNext:Lmiui/app/screenelement/elements/ButtonScreenElement;

    .line 87
    const-string v1, "music_play"

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/elements/ButtonScreenElement;

    .line 88
    const-string v1, "music_pause"

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;

    .line 89
    const-string v1, "music_display"

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/TextScreenElement;

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;

    .line 90
    const-string v1, "music_album_cover"

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/ImageScreenElement;

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/elements/ImageScreenElement;

    .line 91
    invoke-direct {p0, p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/app/screenelement/elements/ElementGroup;)Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    .line 93
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/app/screenelement/elements/ButtonScreenElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonNext:Lmiui/app/screenelement/elements/ButtonScreenElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/elements/ButtonScreenElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;

    if-nez v1, :cond_1

    .line 94
    :cond_0
    new-instance v1, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v2, "invalid music control"

    invoke-direct {v1, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/app/screenelement/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->setupButton(Lmiui/app/screenelement/elements/ButtonScreenElement;)V

    .line 97
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonNext:Lmiui/app/screenelement/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->setupButton(Lmiui/app/screenelement/elements/ButtonScreenElement;)V

    .line 98
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->setupButton(Lmiui/app/screenelement/elements/ButtonScreenElement;)V

    .line 99
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->setupButton(Lmiui/app/screenelement/elements/ButtonScreenElement;)V

    .line 100
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 101
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/elements/ImageScreenElement;

    if-eqz v1, :cond_2

    .line 102
    const-string v1, "defAlbumCover"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, strDefAlbumCoverBmp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 110
    :goto_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getResourceDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 114
    .end local v0           #strDefAlbumCoverBmp:Ljava/lang/String;
    :cond_2
    const-string v1, "autoShow"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 115
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    .line 117
    iget-boolean v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_3

    .line 118
    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "music_state"

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 120
    :cond_3
    return-void

    .line 106
    .restart local v0       #strDefAlbumCoverBmp:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60200a9

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/app/screenelement/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/app/screenelement/elements/MusicControlScreenElement;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$1000(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/elements/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$1102(Lmiui/app/screenelement/elements/MusicControlScreenElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStatus:I

    return p1
.end method

.method static synthetic access$1200(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$1300(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum()V

    return-void
.end method

.method static synthetic access$300(Lmiui/app/screenelement/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$402(Lmiui/app/screenelement/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/TextScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->updateMusic()V

    return-void
.end method

.method static synthetic access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;

    return-object v0
.end method

.method private findSpectrumVisualizer(Lmiui/app/screenelement/elements/ElementGroup;)Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;
    .locals 4
    .parameter "g"

    .prologue
    .line 123
    invoke-virtual {p1}, Lmiui/app/screenelement/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/elements/ScreenElement;

    .line 124
    .local v2, se:Lmiui/app/screenelement/elements/ScreenElement;
    instance-of v3, v2, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    if-eqz v3, :cond_1

    .line 125
    check-cast v2, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    .line 132
    .end local v2           #se:Lmiui/app/screenelement/elements/ScreenElement;
    :goto_0
    return-object v2

    .line 126
    .restart local v2       #se:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_1
    instance-of v3, v2, Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 127
    check-cast v2, Lmiui/app/screenelement/elements/ElementGroup;

    .end local v2           #se:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-direct {p0, v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/app/screenelement/elements/ElementGroup;)Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    .line 128
    .local v1, ret:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 129
    goto :goto_0

    .line 132
    .end local v1           #ret:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKeyCode(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 484
    const-string v0, "music_prev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/16 v0, 0x58

    .line 491
    :goto_0
    return v0

    .line 486
    :cond_0
    const-string v0, "music_next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    const/16 v0, 0x57

    goto :goto_0

    .line 488
    :cond_1
    const-string v0, "music_play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "music_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    :cond_2
    const/16 v0, 0x55

    goto :goto_0

    .line 491
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, requestIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    .line 223
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;Z)V
    .locals 6
    .parameter "intent"
    .parameter "forceRequest"

    .prologue
    .line 226
    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/elements/ImageScreenElement;

    if-nez v4, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const-string v4, "album"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, albumName:Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, artistName:Ljava/lang/String;
    if-nez p2, :cond_2

    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v4}, Lmiui/app/screenelement/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v4}, Lmiui/app/screenelement/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 237
    :cond_2
    const-string v4, "album_uri"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 238
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "album_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, albumPath:Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 240
    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    .line 241
    :cond_3
    invoke-direct {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum()V

    goto :goto_0

    .line 243
    :cond_4
    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/elements/ImageScreenElement;

    iget-object v5, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private safeRegisterReceiver()V
    .locals 7

    .prologue
    .line 343
    iget-boolean v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mRegistered:Z

    if-eqz v2, :cond_0

    .line 359
    :goto_0
    return-void

    .line 346
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mRegistered:Z

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    iget-object v6, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, requestIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 351
    .end local v1           #requestIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 354
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private safeUnregisterReceiver()V
    .locals 3

    .prologue
    .line 362
    iget-boolean v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mRegistered:Z

    if-nez v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mRegistered:Z

    .line 367
    :try_start_0
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMediaButtonBroadcast(II)V
    .locals 10
    .parameter "action"
    .parameter "keyCode"

    .prologue
    const/4 v9, 0x0

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 496
    .local v1, eventtime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 498
    .local v0, event:Landroid/view/KeyEvent;
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 499
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 500
    const-string v3, "forbid_double_click"

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method private setAlbumCover(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 253
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/elements/ImageScreenElement;

    if-nez v2, :cond_0

    .line 275
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v2, "album"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    .line 257
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    .line 259
    :try_start_0
    const-string v2, "tmp_album_path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, albumPath:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 261
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 262
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/app/screenelement/ScreenElementRoot;->getResourceDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_1
    :goto_1
    iget-object v3, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/elements/ImageScreenElement;

    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v3, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestUpdate()V

    goto :goto_0

    .line 266
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 268
    .end local v0           #albumPath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v2, "MusicControlScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load album cover bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    iget-object v3, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/elements/ImageScreenElement;

    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_3
    invoke-virtual {v3, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestUpdate()V

    goto :goto_0

    .line 271
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #albumPath:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_2

    .end local v0           #albumPath:Ljava/lang/String;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :cond_4
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_3

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    move-object v3, v2

    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/elements/ImageScreenElement;

    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_4
    invoke-virtual {v4, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestUpdate()V

    throw v3

    .line 271
    :cond_5
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_4
.end method

.method private setupButton(Lmiui/app/screenelement/elements/ButtonScreenElement;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1, p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->setListener(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 138
    invoke-virtual {p1, p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->setParent(Lmiui/app/screenelement/elements/ElementGroup;)V

    .line 140
    :cond_0
    return-void
.end method

.method private updateMusic()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 413
    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 415
    .local v0, isMusicActive:Z
    if-nez v0, :cond_3

    move v1, v2

    .line 416
    .local v1, showPlay:Z
    :goto_0
    iget-boolean v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    if-eqz v4, :cond_0

    .line 417
    const/4 v1, 0x0

    .line 420
    :cond_0
    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/elements/ButtonScreenElement;

    invoke-virtual {v4, v1}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 421
    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;

    if-nez v1, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v4, v3}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 423
    iget v3, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStatus:I

    packed-switch v3, :pswitch_data_0

    .line 432
    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    const/high16 v2, 0x41f0

    :goto_2
    invoke-virtual {p0, v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 433
    return-void

    .end local v1           #showPlay:Z
    :cond_3
    move v1, v3

    .line 415
    goto :goto_0

    .line 426
    .restart local v1       #showPlay:Z
    :pswitch_0
    if-eqz v0, :cond_4

    const/4 v2, 0x2

    :cond_4
    iput v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 427
    iget-boolean v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_2

    .line 428
    iget-object v4, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz v0, :cond_5

    const-wide/high16 v2, 0x3ff0

    :goto_3
    invoke-virtual {v4, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 432
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    invoke-direct {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 337
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 340
    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 279
    invoke-super {p0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 281
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 283
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    .line 284
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.miui.player.refreshprogress"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.miui.player.playstatechanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->safeRegisterReceiver()V

    .line 290
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioOutputHelper;->hasActiveReceivers(Landroid/content/Context;)Z

    move-result v0

    .line 291
    .local v0, isMusicActive:Z
    if-eqz v0, :cond_0

    .line 292
    const/4 v1, 0x2

    iput v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 294
    iget-boolean v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAutoShow:Z

    if-eqz v1, :cond_0

    .line 295
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->show(Z)V

    .line 298
    :cond_0
    iget-boolean v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_1

    .line 299
    iget-object v3, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz v0, :cond_2

    const-wide/high16 v1, 0x3ff0

    :goto_0
    invoke-virtual {v3, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 301
    :cond_1
    return-void

    .line 299
    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, keyCode:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 387
    :goto_0
    return v1

    .line 385
    :cond_0
    invoke-direct {p0, v1, v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->sendMediaButtonBroadcast(II)V

    .line 387
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 444
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 445
    .local v1, keyCode:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 446
    const/4 v2, 0x0

    .line 480
    :goto_0
    return v2

    .line 447
    :cond_0
    invoke-direct {p0, v2, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->sendMediaButtonBroadcast(II)V

    .line 448
    move-object v0, p1

    .line 449
    .local v0, _name:Ljava/lang/String;
    iget-object v3, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v4, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;

    invoke-direct {v4, p0, v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;-><init>(Lmiui/app/screenelement/elements/MusicControlScreenElement;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->isPaused:Z

    .line 306
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    invoke-direct {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 308
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 311
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 314
    invoke-super {p0}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->isPaused:Z

    .line 316
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    invoke-direct {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->safeRegisterReceiver()V

    .line 320
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/ElementGroup;->show(Z)V

    .line 145
    if-nez p1, :cond_1

    .line 146
    iput v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 147
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    invoke-direct {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 149
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 152
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-direct {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->updateMusic()V

    .line 155
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    invoke-direct {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->safeRegisterReceiver()V

    goto :goto_0
.end method

.method protected updateSpectrumVisualizer()V
    .locals 3

    .prologue
    .line 436
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 437
    .local v0, isMusicActive:Z
    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    if-eqz v1, :cond_0

    .line 438
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->isPaused:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 440
    :cond_0
    return-void

    .line 438
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
