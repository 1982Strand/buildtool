.class Lmiui/app/screenelement/util/ConfigFile$2;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lmiui/app/screenelement/util/ConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/util/ConfigFile;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/util/ConfigFile;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lmiui/app/screenelement/util/ConfigFile$2;->this$0:Lmiui/app/screenelement/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "ele"

    .prologue
    .line 236
    iget-object v0, p0, Lmiui/app/screenelement/util/ConfigFile$2;->this$0:Lmiui/app/screenelement/util/ConfigFile;

    invoke-static {p1}, Lmiui/app/screenelement/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/util/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/util/ConfigFile;->putTask(Lmiui/app/screenelement/util/Task;)V

    .line 237
    return-void
.end method
