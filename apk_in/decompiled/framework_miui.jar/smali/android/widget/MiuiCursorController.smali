.class public abstract Landroid/widget/MiuiCursorController;
.super Ljava/lang/Object;
.source "MiuiCursorController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MiuiCursorController$SelectionEndHandleView;,
        Landroid/widget/MiuiCursorController$SelectionStartHandleView;,
        Landroid/widget/MiuiCursorController$InsertionHandleView;,
        Landroid/widget/MiuiCursorController$MiuiHandleView;,
        Landroid/widget/MiuiCursorController$SelectionModifierCursorController;,
        Landroid/widget/MiuiCursorController$InsertionPointCursorController;,
        Landroid/widget/MiuiCursorController$FloatPanelViewController;
    }
.end annotation


# static fields
.field public static final INSERT_CURSOR_TYPE:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "MiuiCursorController"

.field public static final MAX_CLIP_DATA_NUMBER:I = 0x3

.field public static final SELECT_CURSOR_TYPE:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mOwner:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0
    .parameter "owner"
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/MiuiCursorController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(J)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0, p1}, Landroid/widget/MiuiCursorController;->extractRangeStartFromLong(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(J)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0, p1}, Landroid/widget/MiuiCursorController;->extractRangeEndFromLong(J)I

    move-result v0

    return v0
.end method

.method static create(Landroid/widget/TextView;Landroid/content/Context;I)Landroid/widget/MiuiCursorController;
    .locals 1
    .parameter "owner"
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;

    invoke-direct {v0, p0, p1}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;-><init>(Landroid/widget/TextView;Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;

    invoke-direct {v0, p0, p1}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static extractRangeEndFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public abstract computePanelPosition([I)V
.end method

.method public abstract computePanelPositionOnBottom()I
.end method

.method public createFloatPanelViewController(I)Landroid/widget/MiuiCursorController$FloatPanelViewController;
    .locals 1
    .parameter "resId"

    .prologue
    new-instance v0, Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-direct {v0, p0, p0, p1}, Landroid/widget/MiuiCursorController$FloatPanelViewController;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/MiuiCursorController;I)V

    return-object v0
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public abstract hide()V
.end method

.method initHandleView(Landroid/widget/TextView;ILandroid/widget/MiuiCursorController;)Landroid/widget/MiuiCursorController$MiuiHandleView;
    .locals 5
    .parameter "textview"
    .parameter "type"
    .parameter "cc"

    .prologue
    const/4 v0, 0x0

    .local v0, handle:Landroid/widget/MiuiCursorController$MiuiHandleView;
    if-nez p2, :cond_1

    new-instance v0, Landroid/widget/MiuiCursorController$InsertionHandleView;

    .end local v0           #handle:Landroid/widget/MiuiCursorController$MiuiHandleView;
    iget-object v3, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectHandleCenterRes()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, p0, p1, v3}, Landroid/widget/MiuiCursorController$InsertionHandleView;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .restart local v0       #handle:Landroid/widget/MiuiCursorController$MiuiHandleView;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    const-string v3, "MiuiCursorController"

    const-string v4, "Failed to init handle view."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    :cond_1
    iget-object v3, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectHandleRightRes()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, right:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectHandleLeftRes()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, left:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    new-instance v0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;

    .end local v0           #handle:Landroid/widget/MiuiCursorController$MiuiHandleView;
    invoke-direct {v0, p0, p1, v1, v2}, Landroid/widget/MiuiCursorController$SelectionStartHandleView;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .restart local v0       #handle:Landroid/widget/MiuiCursorController$MiuiHandleView;
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    new-instance v0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;

    .end local v0           #handle:Landroid/widget/MiuiCursorController$MiuiHandleView;
    invoke-direct {v0, p0, p1, v2, v1}, Landroid/widget/MiuiCursorController$SelectionEndHandleView;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .restart local v0       #handle:Landroid/widget/MiuiCursorController$MiuiHandleView;
    goto :goto_0

    .end local v1           #left:Landroid/graphics/drawable/Drawable;
    .end local v2           #right:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v0, p3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->setCursorController(Landroid/widget/MiuiCursorController;)V

    invoke-virtual {v0, p2}, Landroid/widget/MiuiCursorController$MiuiHandleView;->setType(I)V

    goto :goto_1
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isShowing()Z
.end method

.method public onDetached()V
    .locals 0

    .prologue
    return-void
.end method

.method public abstract onHandleTouchEvent(Landroid/widget/MiuiCursorController$MiuiHandleView;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/MiuiCursorController;->hide()V

    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 0

    .prologue
    return-void
.end method

.method public selectCurrentRange()Z
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v15

    instance-of v15, v15, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->selectAllWrap()Z

    move-result v15

    :goto_0
    return v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .local v1, inputType:I
    and-int/lit8 v2, v1, 0xf

    .local v2, klass:I
    and-int/lit16 v13, v1, 0xff0

    .local v13, variation:I
    const/4 v15, 0x2

    if-eq v2, v15, :cond_1

    const/4 v15, 0x3

    if-eq v2, v15, :cond_1

    const/4 v15, 0x4

    if-eq v2, v15, :cond_1

    const/16 v15, 0x10

    if-eq v13, v15, :cond_1

    const/16 v15, 0x20

    if-eq v13, v15, :cond_1

    const/16 v15, 0xd0

    if-eq v13, v15, :cond_1

    const/16 v15, 0xb0

    if-ne v13, v15, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->selectAllWrap()Z

    move-result v15

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/MiuiCursorController;

    move-result-object v7

    .local v7, selectionController:Landroid/widget/MiuiCursorController;
    invoke-virtual {v7}, Landroid/widget/MiuiCursorController;->getMinTouchOffset()I

    move-result v4

    .local v4, minOffset:I
    invoke-virtual {v7}, Landroid/widget/MiuiCursorController;->getMaxTouchOffset()I

    move-result v3

    .local v3, maxOffset:I
    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->length()I

    move-result v15

    if-le v4, v15, :cond_4

    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    if-ltz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->length()I

    move-result v15

    if-le v3, v15, :cond_6

    :cond_5
    const/4 v15, 0x0

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, text:Ljava/lang/CharSequence;
    move-object v15, v10

    check-cast v15, Landroid/text/Spanned;

    const-class v16, Landroid/text/style/URLSpan;

    move-object/from16 v0, v16

    invoke-interface {v15, v4, v3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/URLSpan;

    .local v12, urlSpans:[Landroid/text/style/URLSpan;
    array-length v15, v12

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_8

    const/4 v15, 0x0

    aget-object v11, v12, v15

    .local v11, urlSpan:Landroid/text/style/URLSpan;
    move-object v15, v10

    check-cast v15, Landroid/text/Spanned;

    invoke-interface {v15, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .local v9, selectionStart:I
    move-object v15, v10

    check-cast v15, Landroid/text/Spanned;

    invoke-interface {v15, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .end local v11           #urlSpan:Landroid/text/style/URLSpan;
    .local v8, selectionEnd:I
    :cond_7
    :goto_1
    check-cast v10, Landroid/text/Spannable;

    .end local v10           #text:Ljava/lang/CharSequence;
    invoke-static {v10, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-le v8, v9, :cond_c

    const/4 v15, 0x1

    goto/16 :goto_0

    .end local v8           #selectionEnd:I
    .end local v9           #selectionStart:I
    .restart local v10       #text:Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v14

    .local v14, wordIterator:Landroid/text/method/WordIterator;
    invoke-virtual {v14, v10, v4, v3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v14, v4}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v9

    .restart local v9       #selectionStart:I
    invoke-virtual {v14, v3}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v8

    .restart local v8       #selectionEnd:I
    const/4 v15, -0x1

    if-eq v9, v15, :cond_9

    const/4 v15, -0x1

    if-ne v8, v15, :cond_a

    :cond_9
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ne v3, v15, :cond_b

    add-int/lit8 v9, v3, -0x1

    move v8, v3

    :cond_a
    :goto_2
    if-ne v9, v8, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->getCharRangeWrap(I)J

    move-result-wide v5

    .local v5, range:J
    invoke-static {v5, v6}, Landroid/widget/MiuiCursorController;->extractRangeStartFromLong(J)I

    move-result v9

    invoke-static {v5, v6}, Landroid/widget/MiuiCursorController;->extractRangeEndFromLong(J)I

    move-result v8

    goto :goto_1

    .end local v5           #range:J
    :cond_b
    move v9, v3

    add-int/lit8 v8, v3, 0x1

    goto :goto_2

    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v14           #wordIterator:Landroid/text/method/WordIterator;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract updatePosition()V
.end method
