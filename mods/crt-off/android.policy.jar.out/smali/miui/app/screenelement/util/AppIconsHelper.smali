.class public Lmiui/app/screenelement/util/AppIconsHelper;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"


# static fields
.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60

.field private static mRendererCoreCache:Lmiui/app/screenelement/util/RendererCoreCache;

.field private static mThemeChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lmiui/app/screenelement/util/RendererCoreCache;

    invoke-direct {v0}, Lmiui/app/screenelement/util/RendererCoreCache;-><init>()V

    sput-object v0, Lmiui/app/screenelement/util/AppIconsHelper;->mRendererCoreCache:Lmiui/app/screenelement/util/RendererCoreCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 73
    .local v0, con:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v1, v2, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 74
    .local v1, version:I
    sget v2, Lmiui/app/screenelement/util/AppIconsHelper;->mThemeChanged:I

    if-le v1, v2, :cond_0

    .line 75
    invoke-static {}, Lmiui/app/screenelement/util/AppIconsHelper;->clearCache()V

    .line 76
    sput v1, Lmiui/app/screenelement/util/AppIconsHelper;->mThemeChanged:I

    .line 78
    :cond_0
    return-void
.end method

.method public static cleanUp()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lmiui/app/screenelement/RenderThread;->globalThreadStop()V

    .line 30
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lmiui/app/screenelement/util/AppIconsHelper;->mRendererCoreCache:Lmiui/app/screenelement/util/RendererCoreCache;

    invoke-virtual {v0}, Lmiui/app/screenelement/util/RendererCoreCache;->clear()V

    .line 82
    return-void
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/app/screenelement/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "info"
    .parameter "pm"
    .parameter "cacheTime"

    .prologue
    .line 46
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 47
    .local v2, packageName:Ljava/lang/String;
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 48
    .local v0, activityName:Ljava/lang/String;
    invoke-static {p0, v2, v0, p3, p4}, Lmiui/app/screenelement/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 49
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 51
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/app/screenelement/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"
    .parameter "cacheTime"

    .prologue
    .line 37
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 38
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    invoke-static {p0, v0, p2, p3, p4}, Lmiui/app/screenelement/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 37
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/app/screenelement/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "cacheTime"

    .prologue
    .line 60
    invoke-static {p0}, Lmiui/app/screenelement/util/AppIconsHelper;->checkVersion(Landroid/content/Context;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, key:Ljava/lang/String;
    sget-object v0, Lmiui/app/screenelement/util/AppIconsHelper;->mRendererCoreCache:Lmiui/app/screenelement/util/RendererCoreCache;

    invoke-virtual {v0, v1, p3, p4}, Lmiui/app/screenelement/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v6

    .line 63
    .local v6, ri:Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;
    if-nez v6, :cond_0

    .line 64
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getFancyIconFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, fancyIconPath:Ljava/lang/String;
    sget-object v0, Lmiui/app/screenelement/util/AppIconsHelper;->mRendererCoreCache:Lmiui/app/screenelement/util/RendererCoreCache;

    move-object v2, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/app/screenelement/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;J)Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v6

    .line 68
    .end local v3           #fancyIconPath:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    iget-object v0, v6, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/app/screenelement/RendererCore;

    if-eqz v0, :cond_1

    new-instance v0, Lmiui/app/screenelement/FancyDrawable;

    iget-object v2, v6, Lmiui/app/screenelement/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/app/screenelement/RendererCore;

    invoke-direct {v0, v2}, Lmiui/app/screenelement/FancyDrawable;-><init>(Lmiui/app/screenelement/RendererCore;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
