.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;
.super Lmiui/app/screenelement/elements/ScreenElementFactory;
.source "LockScreenElementFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ScreenElementFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 2
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, tag:Ljava/lang/String;
    const-string v1, "Unlocker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    check-cast p2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    .end local p2
    invoke-direct {v1, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V

    .line 20
    :goto_0
    return-object v1

    .line 17
    .restart local p2
    :cond_0
    const-string v1, "Wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;

    invoke-direct {v1, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    goto :goto_0
.end method
