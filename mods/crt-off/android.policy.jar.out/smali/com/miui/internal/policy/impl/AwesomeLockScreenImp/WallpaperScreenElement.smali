.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;
.super Lmiui/app/screenelement/elements/ImageScreenElement;
.source "WallpaperScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Wallpaper"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 0
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getHeight()F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getMaxHeight()F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getMaxWidth()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getWidth()F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->init()V

    .line 23
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 25
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    :cond_0
    return-void
.end method
