.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;
.super Lmiui/app/screenelement/ResourceLoader;
.source "LockScreenResourceLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lmiui/app/screenelement/ResourceLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 4
    .parameter "path"
    .parameter "size"

    .prologue
    .line 19
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 20
    .local v0, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v0, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 25
    :goto_0
    return-object v1

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    const/4 v1, 0x0

    iget-wide v2, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mSize:J

    aput-wide v2, p2, v1

    .line 25
    :cond_1
    iget-object v1, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    goto :goto_0
.end method

.method protected resourceExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 14
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
