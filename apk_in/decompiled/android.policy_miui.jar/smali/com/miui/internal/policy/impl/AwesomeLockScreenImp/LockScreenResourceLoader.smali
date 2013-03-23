.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;
.super Lmiui/app/screenelement/ResourceLoader;
.source "LockScreenResourceLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/ResourceLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 4
    .parameter "path"
    .parameter "size"

    .prologue
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .local v0, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    iget-wide v2, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mSize:J

    aput-wide v2, p2, v1

    :cond_1
    iget-object v1, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    goto :goto_0
.end method

.method protected resourceExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
