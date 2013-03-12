.class Lmiui/app/screenelement/elements/BitmapProvider$ScreenshotProvider;
.super Lmiui/app/screenelement/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenshotProvider"
.end annotation


# static fields
.field private static final KEYGUARD_LAYER:I = 0xb

.field public static final TAG_NAME:Ljava/lang/String; = "Screenshot"

.field private static final TYPE_LAYER_MULTIPLIER:I = 0x2710


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/BitmapProvider;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 130
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    .line 138
    invoke-super {p0}, Lmiui/app/screenelement/elements/BitmapProvider;->reset()V

    .line 139
    const v0, 0x1adaf

    .line 140
    .local v0, maxLayer:I
    iget-object v1, p0, Lmiui/app/screenelement/elements/BitmapProvider$ScreenshotProvider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementRoot;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/app/screenelement/elements/BitmapProvider$ScreenshotProvider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getScreenHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/BitmapProvider$ScreenshotProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 141
    return-void
.end method
