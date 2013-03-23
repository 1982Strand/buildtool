.class Lmiui/app/screenelement/elements/BitmapProvider$VirtualScreenProvider;
.super Lmiui/app/screenelement/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualScreenProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/BitmapProvider;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "src"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .parameter "src"

    .prologue
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/BitmapProvider;->init(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/app/screenelement/elements/BitmapProvider$VirtualScreenProvider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    .local v0, se:Lmiui/app/screenelement/elements/ScreenElement;
    instance-of v1, v0, Lmiui/app/screenelement/elements/VirtualScreen;

    if-eqz v1, :cond_0

    check-cast v0, Lmiui/app/screenelement/elements/VirtualScreen;

    .end local v0           #se:Lmiui/app/screenelement/elements/ScreenElement;
    iput-object v0, p0, Lmiui/app/screenelement/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;

    :cond_0
    return-void
.end method
