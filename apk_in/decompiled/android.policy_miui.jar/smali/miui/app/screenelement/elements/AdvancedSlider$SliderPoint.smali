.class Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderPoint"
.end annotation


# instance fields
.field private mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

.field protected mCurrentX:F

.field protected mCurrentY:F

.field private mHeight:Lmiui/app/screenelement/data/Expression;

.field protected mName:Ljava/lang/String;

.field protected mNormalSound:Ljava/lang/String;

.field protected mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

.field private mPointStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field protected mPressedSound:Ljava/lang/String;

.field protected mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

.field protected mReachedSound:Ljava/lang/String;

.field private mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

.field private mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

.field private mWidth:Lmiui/app/screenelement/data/Expression;

.field protected mX:Lmiui/app/screenelement/data/Expression;

.field protected mY:Lmiui/app/screenelement/data/Expression;

.field final synthetic this$0:Lmiui/app/screenelement/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Invalid:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {p0, p2, p3}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method private loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/app/screenelement/elements/ElementGroup;
    .locals 3
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    invoke-static {p1, p2}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    new-instance v1, Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/app/screenelement/elements/AdvancedSlider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    :cond_2
    return-void
.end method

.method public getCurrentX()F
    .locals 1

    .prologue
    iget v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    return v0
.end method

.method public getCurrentY()F
    .locals 1

    .prologue
    iget v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    return v0
.end method

.method public getState()Lmiui/app/screenelement/elements/AdvancedSlider$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    return-object v0
.end method

.method public getX()F
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ElementGroup;->show(Z)V

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/elements/ElementGroup;->show(Z)V

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/elements/ElementGroup;->show(Z)V

    :cond_2
    sget-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Normal:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "wrong node name"

    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    const-string v0, "normalSound"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalSound:Ljava/lang/String;

    const-string v0, "pressedSound"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedSound:Ljava/lang/String;

    const-string v0, "reachedSound"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedSound:Ljava/lang/String;

    const-string v0, "x"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    const-string v0, "y"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    const-string v0, "w"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mWidth:Lmiui/app/screenelement/data/Expression;

    const-string v0, "h"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mHeight:Lmiui/app/screenelement/data/Expression;

    const-string v0, "NormalState"

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/app/screenelement/elements/ElementGroup;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v0, "PressedState"

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/app/screenelement/elements/ElementGroup;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v0, "ReachedState"

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/app/screenelement/elements/ElementGroup;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    const-string v2, "state"

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v3}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    :cond_0
    return-void
.end method

.method public moveTo(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    iput p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    iput p2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    return-void
.end method

.method protected onStateChange(Lmiui/app/screenelement/elements/AdvancedSlider$State;Lmiui/app/screenelement/elements/AdvancedSlider$State;)V
    .locals 0
    .parameter "pre"
    .parameter "s"

    .prologue
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    :cond_2
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "c"

    .prologue
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v5}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v1

    .local v1, x:F
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v5}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v2

    .local v2, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .local v0, rs:I
    iget v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    sub-float/2addr v3, v1

    iget v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    sub-float/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/app/screenelement/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->reset(J)V

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->reset(J)V

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->reset(J)V

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    :cond_2
    return-void
.end method

.method public setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    if-ne v6, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    .local v1, preState:Lmiui/app/screenelement/elements/AdvancedSlider$State;
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    const/4 v0, 0x0

    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    const/4 v2, 0x0

    .local v2, reset:Z
    const/4 v3, 0x0

    .local v3, state:I
    sget-object v6, Lmiui/app/screenelement/elements/AdvancedSlider$1;->$SwitchMap$miui$app$screenelement$elements$AdvancedSlider$State:[I

    invoke-virtual {p1}, Lmiui/app/screenelement/elements/AdvancedSlider$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_1
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    if-eq v6, v0, :cond_3

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v6, v5}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    :cond_2
    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ScreenElement;->reset()V

    :cond_4
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v5, v3

    invoke-virtual {v4, v5, v6}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    :cond_5
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {p0, v1, v4}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/app/screenelement/elements/AdvancedSlider$State;Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v6, :cond_6

    move v2, v4

    :goto_2
    goto :goto_1

    :cond_6
    move v2, v5

    goto :goto_2

    :pswitch_1
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v6, :cond_7

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    :goto_3
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    #getter for: Lmiui/app/screenelement/elements/AdvancedSlider;->mPressed:Z
    invoke-static {v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->access$500(Lmiui/app/screenelement/elements/AdvancedSlider;)Z

    move-result v6

    if-nez v6, :cond_8

    move v2, v4

    :goto_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    goto :goto_3

    :cond_8
    move v2, v5

    goto :goto_4

    :pswitch_2
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v6, :cond_9

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    :goto_5
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v6, :cond_b

    move v2, v4

    :goto_6
    const/4 v3, 0x2

    goto :goto_1

    :cond_9
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v6, :cond_a

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    goto :goto_5

    :cond_b
    move v2, v5

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->tick(J)V

    :cond_0
    return-void
.end method

.method public touched(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v2

    .local v2, cx:F
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mWidth:Lmiui/app/screenelement/data/Expression;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v1

    .local v1, cw:F
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v3

    .local v3, cy:F
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mHeight:Lmiui/app/screenelement/data/Expression;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    .local v0, ch:F
    cmpl-float v4, p1, v2

    if-ltz v4, :cond_0

    add-float v4, v2, v1

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    cmpl-float v4, p2, v3

    if-ltz v4, :cond_0

    add-float v4, v3, v0

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
