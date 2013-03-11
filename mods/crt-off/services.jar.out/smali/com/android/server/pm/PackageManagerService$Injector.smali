.class Lcom/android/server/pm/PackageManagerService$Injector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addMiuiSharedUids(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/MiuiSharedUids;->add(Lcom/android/server/pm/Settings;Z)V

    .line 191
    return-void
.end method

.method static addPackageToSlice(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/PackageInfo;I)Z
    .locals 2
    .parameter
    .parameter "pi"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 234
    const/high16 v0, 0x2

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 236
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 246
    :cond_0
    :goto_0
    const/high16 v0, 0x4

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 249
    :cond_2
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 250
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 256
    :cond_3
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/content/pm/ParceledListSlice;->append(Landroid/os/Parcelable;)Z

    move-result v0

    :goto_2
    return v0

    .line 238
    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    .line 252
    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    .line 256
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static checkApk(Lcom/android/server/pm/PackageManagerService;Landroid/os/Message;)Z
    .locals 5
    .parameter "service"
    .parameter "msg"

    .prologue
    .line 166
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 167
    .local v1, params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    instance-of v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 168
    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 169
    .local v0, insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/provider/ExtraGuard;->checkApk(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v2, :cond_0

    .line 172
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    const/4 v3, 0x0

    const/16 v4, -0x16

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 179
    .end local v0           #insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 173
    .restart local v0       #insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static doHandleMessage(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageHandler;Landroid/os/Message;)V
    .locals 2
    .parameter "service"
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 183
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerService$Injector;->checkApk(Lcom/android/server/pm/PackageManagerService;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method static ignoreMiuiFrameworkRes(Lcom/android/server/pm/PackageManagerService;Ljava/util/HashSet;)V
    .locals 2
    .parameter "service"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/framework-miui-res.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method static setAccessControl(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .locals 10
    .parameter "service"
    .parameter "packageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    const v9, 0x7fffffff

    const v8, -0x40000001

    const/high16 v7, 0x4000

    const/high16 v6, -0x8000

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .line 199
    .local v0, packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 200
    .local v3, settings:Lcom/android/server/pm/Settings;
    monitor-enter v0

    .line 201
    if-eq p2, v6, :cond_0

    if-eq p2, v7, :cond_0

    .line 202
    const/4 v4, 0x0

    :try_start_0
    monitor-exit v0

    .line 225
    :goto_0
    return v4

    .line 203
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 204
    .local v1, pkg:Landroid/content/pm/PackageParser$Package;
    iget-object v4, v3, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 205
    .local v2, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 206
    if-ne p2, v6, :cond_4

    .line 207
    if-ne p3, v6, :cond_3

    .line 208
    iget v4, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v4, v6

    iput v4, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 209
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 223
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 225
    :cond_2
    const/4 v4, 0x1

    monitor-exit v0

    goto :goto_0

    .line 226
    .end local v1           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v2           #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 211
    .restart local v1       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v2       #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_3
    :try_start_1
    iget v4, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v4, v9

    iput v4, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 212
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v9

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    .line 214
    :cond_4
    if-ne p2, v7, :cond_1

    .line 215
    if-ne p3, v7, :cond_5

    .line 216
    iget v4, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v4, v7

    iput v4, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 217
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v5, v7

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    .line 219
    :cond_5
    iget v4, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v4, v8

    iput v4, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 220
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v8

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
