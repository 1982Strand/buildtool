.class public Lmiui/util/CommandLineUtils;
.super Ljava/lang/Object;
.source "CommandLineUtils.java"


# static fields
.field static sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/util/CommandLineUtils;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addQuoteMark(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "file"
    .parameter "mode"
    .parameter "user"

    .prologue
    const-string v0, "busybox chmod %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static chown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "file"
    .parameter "targetUser"
    .parameter "targetGroup"
    .parameter "user"

    .prologue
    const-string v0, "busybox chown %s.%s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p3, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static cp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "src"
    .parameter "dest"
    .parameter "user"

    .prologue
    const-string v0, "busybox cp -rf %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mkdir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"
    .parameter "user"

    .prologue
    const-string v0, "busybox mkdir -p %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "src"
    .parameter "dest"
    .parameter "user"

    .prologue
    const-string v0, "busybox mv -f %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static rm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "file"
    .parameter "user"

    .prologue
    const-string v0, "busybox rm -r %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .parameter "user"
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lmiui/util/CommandLineUtils;->run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 7
    .parameter "async"
    .parameter "user"
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v1, p3

    if-lez v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, cmd:Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "sh"

    aput-object v2, v1, v4

    const-string v2, "-c"

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    invoke-static {p0, v1}, Lmiui/util/CommandLineUtils;->runInner(Z[Ljava/lang/String;)Z

    move-result v1

    :goto_1
    return v1

    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0

    .restart local v0       #cmd:Ljava/lang/String;
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "/system/xbin/invoke-as"

    aput-object v2, v1, v4

    const-string v2, "-u %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    invoke-static {p0, v1}, Lmiui/util/CommandLineUtils;->runInner(Z[Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method

.method public static varargs runAndOutput(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 7
    .parameter "user"
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v1, p2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, cmd:Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "sh"

    aput-object v2, v1, v4

    const-string v2, "-c"

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    invoke-static {v1}, Lmiui/util/CommandLineUtils;->runAndOutputInner([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    return-object v1

    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0

    .restart local v0       #cmd:Ljava/lang/String;
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "/system/xbin/invoke-as"

    aput-object v2, v1, v4

    const-string v2, "-u %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    invoke-static {v1}, Lmiui/util/CommandLineUtils;->runAndOutputInner([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1
.end method

.method private static varargs runAndOutputInner([Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "cmd"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Ljava/io/InputStream;
    :try_start_0
    sget-object v4, Lmiui/util/CommandLineUtils;->sLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .local v1, p:Ljava/lang/Process;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    .end local v1           #p:Ljava/lang/Process;
    :cond_0
    :goto_0
    return-object v2

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static varargs runInner(Z[Ljava/lang/String;)Z
    .locals 7
    .parameter "async"
    .parameter "cmd"

    .prologue
    const/4 v4, 0x1

    .local v4, result:Z
    :try_start_0
    sget-object v6, Lmiui/util/CommandLineUtils;->sLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .local v3, p:Ljava/lang/Process;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, br1:Ljava/io/BufferedReader;
    new-instance v5, Lmiui/util/CommandLineUtils$1;

    invoke-direct {v5, v0}, Lmiui/util/CommandLineUtils$1;-><init>(Ljava/io/BufferedReader;)V

    invoke-virtual {v5}, Lmiui/util/CommandLineUtils$1;->start()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v1, br2:Ljava/io/BufferedReader;
    new-instance v5, Lmiui/util/CommandLineUtils$2;

    invoke-direct {v5, v1}, Lmiui/util/CommandLineUtils$2;-><init>(Ljava/io/BufferedReader;)V

    invoke-virtual {v5}, Lmiui/util/CommandLineUtils$2;->start()V

    if-nez p0, :cond_0

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    .end local v0           #br1:Ljava/io/BufferedReader;
    .end local v1           #br2:Ljava/io/BufferedReader;
    .end local v3           #p:Ljava/lang/Process;
    :cond_0
    :goto_0
    return v4

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static symlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "oldpath"
    .parameter "newpath"
    .parameter "user"

    .prologue
    const-string v0, "busybox ln -sf %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
