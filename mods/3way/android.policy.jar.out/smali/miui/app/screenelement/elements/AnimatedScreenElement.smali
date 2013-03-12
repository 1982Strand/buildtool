.class public abstract Lmiui/app/screenelement/elements/AnimatedScreenElement;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# instance fields
.field private mActualXVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mActualYVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field protected mAni:Lmiui/app/screenelement/animation/AnimatedElement;

.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPivotZ:Lmiui/app/screenelement/data/Expression;

.field private mRotationX:Lmiui/app/screenelement/data/Expression;

.field private mRotationY:Lmiui/app/screenelement/data/Expression;

.field private mRotationZ:Lmiui/app/screenelement/data/Expression;

.field private mScaleExpression:Lmiui/app/screenelement/data/Expression;

.field private mScaleXExpression:Lmiui/app/screenelement/data/Expression;

.field private mScaleYExpression:Lmiui/app/screenelement/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 5
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-direct {v0, p1, p2}, Lmiui/app/screenelement/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    .line 48
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_x"

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mActualXVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 50
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_y"

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mActualYVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 53
    :cond_0
    const-string v0, "scale"

    invoke-direct {p0, p1, v0, v4}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/app/screenelement/data/Expression;

    .line 54
    const-string v0, "scaleX"

    invoke-direct {p0, p1, v0, v4}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/app/screenelement/data/Expression;

    .line 55
    const-string v0, "scaleY"

    invoke-direct {p0, p1, v0, v4}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/app/screenelement/data/Expression;

    .line 57
    const-string v0, "angleX"

    const-string v1, "rotationX"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationX:Lmiui/app/screenelement/data/Expression;

    .line 58
    const-string v0, "angleY"

    const-string v1, "rotationY"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationY:Lmiui/app/screenelement/data/Expression;

    .line 59
    const-string v0, "angleZ"

    const-string v1, "rotationZ"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationZ:Lmiui/app/screenelement/data/Expression;

    .line 60
    const-string v0, "centerZ"

    const-string v1, "pivotZ"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mPivotZ:Lmiui/app/screenelement/data/Expression;

    .line 61
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationX:Lmiui/app/screenelement/data/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationY:Lmiui/app/screenelement/data/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationZ:Lmiui/app/screenelement/data/Expression;

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 64
    :cond_2
    return-void
.end method

.method private createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;
    .locals 2
    .parameter "node"
    .parameter "name"
    .parameter "compatibleName"

    .prologue
    .line 67
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    .line 68
    .local v0, exp:Lmiui/app/screenelement/data/Expression;
    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAlpha()I
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->getAlpha()I

    move-result v0

    .line 217
    .local v0, a:I
    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    if-nez v1, :cond_0

    .end local v0           #a:I
    :goto_0
    return v0

    .restart local v0       #a:I
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/app/screenelement/elements/ElementGroup;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->mixAlpha(II)I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getLeft()F
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getMaxHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getMaxWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getPivotX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getPivotY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getRotationAngle()F

    move-result v0

    return v0
.end method

.method protected getTop()F
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->init()V

    .line 154
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->init()V

    .line 155
    return-void
.end method

.method protected isVisibleInner()Z
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "c"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v13, 0x0

    .line 76
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->updateVisibility()V

    .line 77
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->isVisible()Z

    move-result v10

    if-nez v10, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 81
    const/4 v7, 0x0

    .line 82
    .local v7, set:Z
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getLeft()F

    move-result v10

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getPivotX()F

    move-result v11

    add-float v0, v10, v11

    .line 83
    .local v0, pivotX:F
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getTop()F

    move-result v10

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getPivotY()F

    move-result v11

    add-float v1, v10, v11

    .line 85
    .local v1, pivotY:F
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    if-eqz v10, :cond_6

    .line 86
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->save()V

    .line 87
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationX:Lmiui/app/screenelement/data/Expression;

    if-eqz v10, :cond_2

    .line 88
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v11, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationX:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->rotateX(F)V

    .line 89
    const/4 v7, 0x1

    .line 91
    :cond_2
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationY:Lmiui/app/screenelement/data/Expression;

    if-eqz v10, :cond_3

    .line 92
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v11, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationY:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->rotateY(F)V

    .line 93
    const/4 v7, 0x1

    .line 95
    :cond_3
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationZ:Lmiui/app/screenelement/data/Expression;

    if-eqz v10, :cond_4

    .line 96
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v11, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mRotationZ:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 97
    const/4 v7, 0x1

    .line 99
    :cond_4
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mPivotZ:Lmiui/app/screenelement/data/Expression;

    if-eqz v10, :cond_5

    .line 100
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v11, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mPivotZ:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v13, v13, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 102
    :cond_5
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v11, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 103
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v11, v0

    neg-float v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 104
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 105
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->restore()V

    .line 107
    :cond_6
    const/4 v3, 0x0

    .line 108
    .local v3, sc:I
    if-eqz v7, :cond_7

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 110
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 111
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 114
    :cond_7
    const/4 v8, 0x0

    .line 115
    .local v8, set1:Z
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getRotation()F

    move-result v2

    .line 116
    .local v2, rotation:F
    cmpl-float v10, v2, v13

    if-eqz v10, :cond_8

    .line 117
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v2, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 118
    const/4 v8, 0x1

    .line 120
    :cond_8
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v10, :cond_d

    .line 121
    iget-object v9, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v9

    double-to-float v4, v9

    .line 122
    .local v4, scale:F
    iget-object v9, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4, v4, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 123
    const/4 v8, 0x1

    .line 131
    .end local v4           #scale:F
    :cond_9
    :goto_1
    if-eqz v8, :cond_b

    .line 132
    if-nez v7, :cond_a

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 135
    :cond_a
    iget-object v9, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 137
    :cond_b
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 138
    if-nez v7, :cond_c

    if-eqz v8, :cond_0

    .line 139
    :cond_c
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 124
    :cond_d
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/app/screenelement/data/Expression;

    if-nez v10, :cond_e

    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v10, :cond_9

    .line 125
    :cond_e
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/app/screenelement/data/Expression;

    if-nez v10, :cond_f

    move v5, v9

    .line 126
    .local v5, scaleX:F
    :goto_2
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/app/screenelement/data/Expression;

    if-nez v10, :cond_10

    move v6, v9

    .line 127
    .local v6, scaleY:F
    :goto_3
    iget-object v9, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v5, v6, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 128
    const/4 v8, 0x1

    goto :goto_1

    .line 125
    .end local v5           #scaleX:F
    .end local v6           #scaleY:F
    :cond_f
    iget-object v10, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v10

    double-to-float v5, v10

    goto :goto_2

    .line 126
    .restart local v5       #scaleX:F
    :cond_10
    iget-object v9, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v9

    double-to-float v6, v9

    goto :goto_3
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->reset(J)V

    .line 160
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/AnimatedElement;->reset(J)V

    .line 161
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->updateVisibility()V

    .line 162
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->tick(J)V

    .line 167
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/AnimatedElement;->tick(J)V

    .line 168
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mActualXVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 170
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mActualYVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 172
    :cond_0
    return-void
.end method
