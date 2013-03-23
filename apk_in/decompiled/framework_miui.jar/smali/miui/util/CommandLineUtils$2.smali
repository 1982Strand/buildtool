.class final Lmiui/util/CommandLineUtils$2;
.super Ljava/lang/Thread;
.source "CommandLineUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/CommandLineUtils;->runInner(Z[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$br2:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Ljava/io/BufferedReader;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/util/CommandLineUtils$2;->val$br2:Ljava/io/BufferedReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmiui/util/CommandLineUtils$2;->val$br2:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
