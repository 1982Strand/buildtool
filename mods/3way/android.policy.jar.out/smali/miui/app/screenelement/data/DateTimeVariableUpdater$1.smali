.class Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;
.super Ljava/lang/Object;
.source "DateTimeVariableUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/DateTimeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/data/DateTimeVariableUpdater;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;->this$0:Lmiui/app/screenelement/data/DateTimeVariableUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;->this$0:Lmiui/app/screenelement/data/DateTimeVariableUpdater;

    #calls: Lmiui/app/screenelement/data/DateTimeVariableUpdater;->checkUpdateTime()V
    invoke-static {v0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->access$000(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)V

    .line 58
    return-void
.end method
