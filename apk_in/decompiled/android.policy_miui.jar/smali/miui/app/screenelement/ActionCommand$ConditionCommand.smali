.class Lmiui/app/screenelement/ActionCommand$ConditionCommand;
.super Lmiui/app/screenelement/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConditionCommand"
.end annotation


# instance fields
.field private mCommand:Lmiui/app/screenelement/ActionCommand;

.field private mCondition:Lmiui/app/screenelement/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ActionCommand;Lmiui/app/screenelement/data/Expression;)V
    .locals 1
    .parameter "command"
    .parameter "condition"

    .prologue
    invoke-virtual {p1}, Lmiui/app/screenelement/ActionCommand;->getRoot()Lmiui/app/screenelement/ScreenElementRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/app/screenelement/ActionCommand;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object p1, p0, Lmiui/app/screenelement/ActionCommand$ConditionCommand;->mCommand:Lmiui/app/screenelement/ActionCommand;

    iput-object p2, p0, Lmiui/app/screenelement/ActionCommand$ConditionCommand;->mCondition:Lmiui/app/screenelement/data/Expression;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$ConditionCommand;->mCondition:Lmiui/app/screenelement/data/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$ConditionCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$ConditionCommand;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->perform()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$ConditionCommand;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->init()V

    return-void
.end method
