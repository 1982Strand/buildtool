.class public final Lmiui/content/res/ThemeResourcesPackage;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field private static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/content/res/ThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 0
    .parameter "wrapped"
    .parameter "resources"
    .parameter "packageName"
    .parameter "metaData"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    return-void
.end method

.method public static getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .locals 5
    .parameter "resources"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .local v1, themeResources:Lmiui/content/res/ThemeResourcesPackage;
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    check-cast v1, Lmiui/content/res/ThemeResourcesPackage;

    .restart local v1       #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    :cond_0
    if-nez v1, :cond_3

    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmiui/content/res/ThemeResourcesPackage;

    move-object v1, v0

    :cond_1
    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v3

    :cond_3
    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .locals 4
    .parameter "resources"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .local v1, themeResources:Lmiui/content/res/ThemeResourcesPackage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v2, Lmiui/content/res/ThemeResourcesPackage;

    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, p1, v3}, Lmiui/content/res/ThemeResourcesPackage;-><init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .end local v1           #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    .local v2, themeResources:Lmiui/content/res/ThemeResourcesPackage;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2           #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    .restart local v1       #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"

    .prologue
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, ret:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResourcesSystem;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .parameter "cookieType"
    .parameter "fileName"

    .prologue
    const/4 v0, 0x0

    .local v0, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-miui-res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lmiui/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .parameter "id"

    .prologue
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, ret:Ljava/lang/Integer;
    if-nez v0, :cond_0

    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResourcesSystem;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/content/res/ThemeResourcesSystem;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
