.class public Lmiui/app/screenelement/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field protected final mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/screenelement/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private mExtraResourceScreenWidth:I

.field private final mFailedBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mNinePatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/NinePatch;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceDensity:I

.field private final mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

.field private mTargetDensity:I


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ResourceLoader;)V
    .locals 1
    .parameter "resourceLoader"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    .line 56
    iput-object p1, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    .line 57
    return-void
.end method

.method private getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v5, 0x0

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v5

    .line 200
    :goto_0
    return-object v1

    .line 153
    :cond_0
    const/4 v1, 0x0

    .line 154
    .local v1, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    iget-object v6, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    monitor-enter v6

    .line 155
    :try_start_0
    iget-object v4, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-object v1, v0

    .line 156
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-eqz v1, :cond_1

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mLastVisitTime:J

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 162
    :cond_1
    iget-object v4, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v5

    .line 163
    goto :goto_0

    .line 166
    :cond_2
    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load image "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v3, 0x1

    .line 169
    .local v3, useDefaultResource:Z
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 170
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    const-string v4, ".9.png"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 171
    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 172
    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceScreenWidth:I

    if-eqz v4, :cond_3

    .line 173
    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceDensity:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 174
    iget-object v4, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lmiui/app/screenelement/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_3

    .line 176
    const/4 v3, 0x0

    .line 180
    :cond_3
    if-nez v1, :cond_4

    .line 181
    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mResourceDensity:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 182
    iget-object v4, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    invoke-virtual {v4, p1, v2}, Lmiui/app/screenelement/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v1

    .line 185
    :cond_4
    if-eqz v1, :cond_7

    .line 186
    if-nez v3, :cond_5

    .line 187
    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load image from extra resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_5
    iget-object v4, v1, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 192
    iget-object v5, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    monitor-enter v5

    .line 193
    :try_start_2
    iget-object v4, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 170
    :cond_6
    const/4 v4, 0x1

    goto :goto_1

    .line 196
    :cond_7
    iget-object v4, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to load image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 132
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    .line 133
    .local v0, bi:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    iget-object v2, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 137
    .end local v0           #bi:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 139
    .local v0, bi:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 141
    .end local v0           #bi:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 144
    :cond_3
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 145
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 146
    return-void
.end method

.method public finish(Z)V
    .locals 0
    .parameter "keepResource"

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    invoke-virtual {p0}, Lmiui/app/screenelement/ResourceManager;->clear()V

    .line 226
    :cond_0
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "src"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 92
    .local v0, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "src"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v2

    .line 97
    .local v2, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 98
    :cond_0
    const/4 v3, 0x0

    .line 112
    :goto_0
    return-object v3

    .line 100
    :cond_1
    iget-object v0, v2, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 101
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    if-eqz v4, :cond_2

    .line 105
    new-instance v3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    iget-object v5, v2, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v3, v0, v4, v5, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 106
    .local v3, ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    goto :goto_0

    .line 110
    .end local v3           #ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    move-object v3, v1

    .line 112
    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1
    .parameter "src"

    .prologue
    .line 87
    iget-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    invoke-virtual {v0}, Lmiui/app/screenelement/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getMaskBufferBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "key"

    .prologue
    .line 64
    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 65
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    .line 68
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 69
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v3, p2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 70
    :cond_1
    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 72
    .local v2, bw:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 73
    .local v0, bh:I
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 74
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    .end local v0           #bh:I
    .end local v2           #bw:I
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mResourceDensity:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 80
    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    return-object v1
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 4
    .parameter "src"

    .prologue
    .line 116
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/NinePatch;

    .line 117
    .local v1, ret:Landroid/graphics/NinePatch;
    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    new-instance v1, Landroid/graphics/NinePatch;

    .end local v1           #ret:Landroid/graphics/NinePatch;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 121
    .restart local v1       #ret:Landroid/graphics/NinePatch;
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    return-object v1
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public setExtraResource(I)V
    .locals 2
    .parameter "sw"

    .prologue
    .line 212
    iput p1, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceScreenWidth:I

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 214
    mul-int/lit16 v0, p1, 0xf0

    div-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceDensity:I

    .line 215
    return-void
.end method

.method public setResourceDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 204
    iput p1, p0, Lmiui/app/screenelement/ResourceManager;->mResourceDensity:I

    .line 205
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 208
    iput p1, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    .line 209
    return-void
.end method
