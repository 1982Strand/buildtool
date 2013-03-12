.class public Lmiui/app/screenelement/elements/VariableElement;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

.field private mConst:Z

.field private mExpression:Lmiui/app/screenelement/data/Expression;

.field private mIsStringType:Z

.field private mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mOldNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mOldStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

.field private mOldValue:Ljava/lang/Double;

.field private mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

.field private mThreshold:D

.field private mTrigger:Lmiui/app/screenelement/CommandTrigger;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 6
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 43
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 55
    if-eqz p1, :cond_1

    .line 56
    const-string v2, "expression"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    .line 57
    const-string v2, "threshold"

    const/high16 v3, 0x3f80

    invoke-static {p1, v2, v3}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mThreshold:D

    .line 58
    const-string v2, "string"

    const-string v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mIsStringType:Z

    .line 59
    const-string v2, "const"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mConst:Z

    .line 60
    iget-boolean v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mIsStringType:Z

    if-eqz v2, :cond_2

    .line 61
    new-instance v2, Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 62
    new-instance v2, Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mName:Ljava/lang/String;

    const-string v4, "old_value"

    invoke-virtual {p2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v2, v3, v4, v5}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 68
    :goto_0
    const-string v2, "VariableAnimation"

    invoke-static {p1, v2}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 69
    .local v0, ani:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    new-instance v2, Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-direct {v2, v0, p2}, Lmiui/app/screenelement/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_1
    invoke-static {p1, p2}, Lmiui/app/screenelement/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/CommandTrigger;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    .line 80
    .end local v0           #ani:Lorg/w3c/dom/Element;
    :cond_1
    return-void

    .line 64
    :cond_2
    new-instance v2, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 65
    new-instance v2, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mName:Ljava/lang/String;

    const-string v4, "old_value"

    invoke-virtual {p2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v2, v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    goto :goto_0

    .line 72
    .restart local v0       #ani:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    goto :goto_1
.end method

.method private update()V
    .locals 8

    .prologue
    .line 114
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v4

    iget-object v3, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    .line 115
    .local v3, var:Lmiui/app/screenelement/data/Variables;
    iget-boolean v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mIsStringType:Z

    if-eqz v4, :cond_2

    .line 116
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    if-nez v4, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v4, v3}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, str:Ljava/lang/String;
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v4}, Lmiui/app/screenelement/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, oldStr:Ljava/lang/String;
    invoke-static {v1, v0}, Lmiui/app/screenelement/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v4, v0}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 122
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v4, v1}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 123
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v4, :cond_0

    .line 124
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v4}, Lmiui/app/screenelement/CommandTrigger;->perform()V

    goto :goto_0

    .line 128
    .end local v0           #oldStr:Ljava/lang/String;
    .end local v1           #str:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 129
    .local v2, value:Ljava/lang/Double;
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v4, :cond_6

    .line 130
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v4}, Lmiui/app/screenelement/animation/VariableAnimation;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 134
    :cond_3
    :goto_1
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v4, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 136
    if-eqz v2, :cond_0

    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v2, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    if-nez v4, :cond_4

    .line 138
    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 140
    :cond_4
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v5, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 141
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lmiui/app/screenelement/elements/VariableElement;->mThreshold:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    .line 142
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v4}, Lmiui/app/screenelement/CommandTrigger;->perform()V

    .line 144
    :cond_5
    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    goto :goto_0

    .line 131
    :cond_6
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v4, v3}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 132
    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v4, v3}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 85
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/VariableAnimation;->init()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableElement;->update()V

    .line 104
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/VariableAnimation;->reset(J)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableElement;->update()V

    .line 110
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->tick(J)V

    .line 90
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/VariableElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/VariableAnimation;->tick(J)V

    .line 96
    :cond_2
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mConst:Z

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableElement;->update()V

    goto :goto_0
.end method
