.class Lmiui/app/screenelement/data/BroadcastBinder$2;
.super Ljava/lang/Object;
.source "BroadcastBinder.java"

# interfaces
.implements Lmiui/app/screenelement/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/data/BroadcastBinder;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/data/BroadcastBinder;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/data/BroadcastBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lmiui/app/screenelement/data/BroadcastBinder$2;->this$0:Lmiui/app/screenelement/data/BroadcastBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 145
    new-instance v0, Lmiui/app/screenelement/data/BroadcastBinder$Variable;

    iget-object v1, p0, Lmiui/app/screenelement/data/BroadcastBinder$2;->this$0:Lmiui/app/screenelement/data/BroadcastBinder;

    invoke-virtual {v1}, Lmiui/app/screenelement/data/BroadcastBinder;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/app/screenelement/data/BroadcastBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Variables;)V

    .line 146
    .local v0, v:Lmiui/app/screenelement/data/BroadcastBinder$Variable;
    iget-object v1, p0, Lmiui/app/screenelement/data/BroadcastBinder$2;->this$0:Lmiui/app/screenelement/data/BroadcastBinder;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/data/BroadcastBinder;->addVariable(Lmiui/app/screenelement/data/BroadcastBinder$Variable;)V

    .line 147
    return-void
.end method
