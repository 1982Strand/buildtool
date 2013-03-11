.class public abstract Lmiui/app/screenelement/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/BitmapProvider$ScreenshotProvider;,
        Lmiui/app/screenelement/elements/BitmapProvider$VirtualScreenProvider;,
        Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;,
        Lmiui/app/screenelement/elements/BitmapProvider$AppIconProvider;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mRoot:Lmiui/app/screenelement/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmiui/app/screenelement/elements/BitmapProvider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 35
    return-void
.end method

.method public static create(Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;)Lmiui/app/screenelement/elements/BitmapProvider;
    .locals 1
    .parameter "root"
    .parameter "type"

    .prologue
    .line 20
    const-string v0, "ResourceImage"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 30
    :goto_0
    return-object v0

    .line 22
    :cond_0
    const-string v0, "VirtualScreen"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Lmiui/app/screenelement/elements/BitmapProvider$VirtualScreenProvider;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 24
    :cond_1
    const-string v0, "ApplicationIcon"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    new-instance v0, Lmiui/app/screenelement/elements/BitmapProvider$AppIconProvider;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/elements/BitmapProvider$AppIconProvider;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 26
    :cond_2
    const-string v0, "Screenshot"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    new-instance v0, Lmiui/app/screenelement/elements/BitmapProvider$ScreenshotProvider;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/elements/BitmapProvider$ScreenshotProvider;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 30
    :cond_3
    new-instance v0, Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/elements/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "src"

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/app/screenelement/elements/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 38
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/BitmapProvider;->reset()V

    .line 39
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
