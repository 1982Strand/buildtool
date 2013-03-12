.class public Lmiui/app/screenelement/gadget/GadgetScreenElement;
.super Lmiui/app/screenelement/ScreenElementRoot;
.source "GadgetScreenElement.java"


# static fields
.field public static final VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field public static final VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private mHeight:I

.field private mRect:Landroid/graphics/RectF;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    .line 23
    return-void
.end method


# virtual methods
.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 4
    .parameter "root"

    .prologue
    const/4 v1, 0x0

    .line 77
    const-string v0, "width"

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mWidth:I

    .line 78
    const-string v0, "height"

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mHeight:I

    .line 79
    const-string v0, "view_width"

    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget v2, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 80
    const-string v0, "view_height"

    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget v2, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 66
    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v2, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 70
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 71
    .local v0, ret:Z
    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 53
    .local v1, rs:I
    const/4 v0, 0x0

    .line 54
    .local v0, inScreen:Z
    iget-object v2, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 55
    iget-object v2, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v0

    .line 57
    :cond_0
    if-eqz v0, :cond_1

    .line 58
    iget-object v2, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 61
    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 62
    return-void
.end method

.method public setPosition(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    int-to-double v1, p1

    invoke-virtual {p0, v1, v2}, Lmiui/app/screenelement/gadget/GadgetScreenElement;->scale(D)F

    move-result v1

    int-to-double v2, p2

    invoke-virtual {p0, v2, v3}, Lmiui/app/screenelement/gadget/GadgetScreenElement;->scale(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 33
    return-void
.end method

.method public setRect(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    int-to-double v1, p1

    invoke-virtual {p0, v1, v2}, Lmiui/app/screenelement/gadget/GadgetScreenElement;->scale(D)F

    move-result v1

    int-to-double v2, p2

    invoke-virtual {p0, v2, v3}, Lmiui/app/screenelement/gadget/GadgetScreenElement;->scale(D)F

    move-result v2

    add-int v3, p1, p3

    int-to-double v3, v3

    invoke-virtual {p0, v3, v4}, Lmiui/app/screenelement/gadget/GadgetScreenElement;->scale(D)F

    move-result v3

    add-int v4, p2, p4

    int-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Lmiui/app/screenelement/gadget/GadgetScreenElement;->scale(D)F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    const-string v0, "view_width"

    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    int-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 28
    const-string v0, "view_height"

    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    int-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 29
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-double v2, p1

    invoke-virtual {p0, v2, v3}, Lmiui/app/screenelement/gadget/GadgetScreenElement;->scale(D)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 37
    iget-object v0, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-double v2, p2

    invoke-virtual {p0, v2, v3}, Lmiui/app/screenelement/gadget/GadgetScreenElement;->scale(D)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 38
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 42
    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/app/screenelement/elements/ElementGroup;->getX()F

    move-result v0

    .line 44
    .local v0, x:F
    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget v2, p0, Lmiui/app/screenelement/gadget/GadgetScreenElement;->mScreenWidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 45
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/ScreenElementRoot;->tick(J)V

    .line 48
    .end local v0           #x:F
    :cond_0
    return-void
.end method
