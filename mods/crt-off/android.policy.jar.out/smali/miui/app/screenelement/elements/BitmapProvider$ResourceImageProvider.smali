.class Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;
.super Lmiui/app/screenelement/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceImageProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ResourceImage"


# instance fields
.field private mCachedBitmapName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/BitmapProvider;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 84
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lmiui/app/screenelement/elements/BitmapProvider;->finish()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "src"

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 95
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/BitmapProvider$ResourceImageProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
