.class abstract Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;
.super Lmiui/app/screenelement/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StatefulActionCommand"
.end annotation


# instance fields
.field private mVar:Lmiui/app/screenelement/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "stateName"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ActionCommand;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 64
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, p2, v1}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;->mVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 65
    return-void
.end method


# virtual methods
.method protected final updateState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;->mVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;->mVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 71
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    goto :goto_0
.end method
