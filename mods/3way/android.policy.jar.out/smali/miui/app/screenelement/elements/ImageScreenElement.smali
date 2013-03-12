.class public Lmiui/app/screenelement/elements/ImageScreenElement;
.super Lmiui/app/screenelement/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/ImageScreenElement$1;,
        Lmiui/app/screenelement/elements/ImageScreenElement$pair;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"


# instance fields
.field private mAniHeight:F

.field private mAniWidth:F

.field private mAntiAlias:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapProvider:Lmiui/app/screenelement/elements/BitmapProvider;

.field private mBmpHeight:F

.field private mBmpSizeHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mBmpSizeWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mBmpWidth:F

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field protected mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mHeight:F

.field private mKey:Ljava/lang/String;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/animation/AnimatedElement;",
            ">;"
        }
    .end annotation
.end field

.field protected mPaint:Landroid/graphics/Paint;

.field private mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/app/screenelement/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcH:Lmiui/app/screenelement/data/Expression;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:Lmiui/app/screenelement/data/Expression;

.field private mSrcX:Lmiui/app/screenelement/data/Expression;

.field private mSrcY:Lmiui/app/screenelement/data/Expression;

.field private mWidth:F

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 6
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 36
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 92
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 94
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAntiAlias:Z

    .line 95
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 96
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 97
    const-string v2, "srcX"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    .line 98
    const-string v2, "srcY"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    .line 99
    const-string v2, "srcW"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    .line 100
    const-string v2, "srcH"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    .line 101
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_0

    .line 102
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 106
    :cond_0
    const-string v2, "useVirtualScreen"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 107
    .local v1, useVirtualScreen:Z
    const-string v2, "srcType"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, srcType:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v0, "VirtualScreen"

    .end local v0           #srcType:Ljava/lang/String;
    :cond_1
    invoke-static {p2, v0}, Lmiui/app/screenelement/elements/BitmapProvider;->create(Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;)Lmiui/app/screenelement/elements/BitmapProvider;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapProvider:Lmiui/app/screenelement/elements/BitmapProvider;

    .line 110
    iget-boolean v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHasName:Z

    if-eqz v2, :cond_2

    .line 111
    new-instance v2, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v4, "bmp_width"

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 112
    new-instance v2, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v4, "bmp_height"

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getVariables()Lmiui/app/screenelement/data/Variables;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 114
    :cond_2
    return-void
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 280
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    .line 281
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 129
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 131
    const-string v2, "Mask"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 132
    .local v1, images:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 133
    iget-object v3, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v4, Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v4, v2, v5}, Lmiui/app/screenelement/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lmiui/app/screenelement/animation/AnimatedElement;II)V
    .locals 46
    .parameter "bufferCanvas"
    .parameter "mask"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 307
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 308
    .local v38, rawMask:Landroid/graphics/Bitmap;
    if-nez v38, :cond_0

    .line 360
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getX()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v30, v0

    .line 312
    .local v30, maskX:D
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getY()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v32, v0

    .line 313
    .local v32, maskY:D
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getRotationAngle()F

    move-result v29

    .line 314
    .local v29, maskAngle:F
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->isAlignAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getRotation()F

    move-result v17

    .line 316
    .local v17, angle:F
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-nez v2, :cond_4

    .line 317
    move/from16 v0, p3

    int-to-double v9, v0

    sub-double v30, v30, v9

    .line 318
    move/from16 v0, p4

    int-to-double v9, v0

    sub-double v32, v32, v9

    .line 346
    .end local v17           #angle:F
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getPivotX()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v9, v9, v30

    double-to-float v2, v9

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getPivotY()F

    move-result v9

    float-to-double v9, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v9

    float-to-double v9, v9

    add-double v9, v9, v32

    double-to-float v9, v9

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 348
    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v34, v0

    .line 349
    .local v34, mx:I
    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v35, v0

    .line 350
    .local v35, my:I
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getWidth()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v43

    .line 351
    .local v43, width:I
    if-gez v43, :cond_2

    .line 352
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v43

    .line 353
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getHeight()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v28

    .line 354
    .local v28, height:I
    if-gez v28, :cond_3

    .line 355
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    .line 356
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int v9, v34, v43

    add-int v10, v35, v28

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v2, v0, v1, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getAlpha()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 358
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 320
    .end local v28           #height:I
    .end local v34           #mx:I
    .end local v35           #my:I
    .end local v43           #width:I
    .restart local v17       #angle:F
    :cond_4
    sub-float v29, v29, v17

    .line 321
    const-wide v36, 0x400921fb54442c46L

    .line 322
    .local v36, pi:D
    move/from16 v0, v17

    float-to-double v9, v0

    const-wide v11, 0x400921fb54442c46L

    mul-double/2addr v9, v11

    const-wide v11, 0x4066800000000000L

    div-double v7, v9, v11

    .line 323
    .local v7, angleA:D
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getPivotX()F

    move-result v2

    float-to-double v3, v2

    .line 324
    .local v3, cx:D
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getPivotY()F

    move-result v2

    float-to-double v5, v2

    .line 325
    .local v5, cy:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    if-nez v2, :cond_5

    .line 326
    new-instance v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lmiui/app/screenelement/elements/ImageScreenElement$pair;-><init>(Lmiui/app/screenelement/elements/ImageScreenElement$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    .line 328
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lmiui/app/screenelement/elements/ImageScreenElement;->rotateXY(DDDLmiui/app/screenelement/elements/ImageScreenElement$pair;)V

    .line 330
    move/from16 v0, p3

    int-to-double v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double v39, v9, v11

    .line 331
    .local v39, rx:D
    move/from16 v0, p4

    int-to-double v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double v41, v9, v11

    .line 334
    .local v41, ry:D
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getPivotX()F

    move-result v2

    float-to-double v10, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getPivotY()F

    move-result v2

    float-to-double v12, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getRotationAngle()F

    move-result v2

    float-to-double v14, v2

    const-wide v44, 0x400921fb54442c46L

    mul-double v14, v14, v44

    const-wide v44, 0x4066800000000000L

    div-double v14, v14, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Lmiui/app/screenelement/elements/ImageScreenElement;->rotateXY(DDDLmiui/app/screenelement/elements/ImageScreenElement$pair;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v30, v30, v9

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v32, v32, v9

    .line 337
    sub-double v24, v30, v39

    .line 338
    .local v24, dx:D
    sub-double v26, v32, v41

    .line 339
    .local v26, dy:D
    mul-double v9, v24, v24

    mul-double v11, v26, v26

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 340
    .local v22, dm:D
    div-double v9, v24, v22

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    .line 341
    .local v18, angleB:D
    const-wide/16 v9, 0x0

    cmpl-double v2, v26, v9

    if-lez v2, :cond_6

    add-double v20, v7, v18

    .line 342
    .local v20, angleC:D
    :goto_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v30, v22, v9

    .line 343
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v32, v22, v9

    goto/16 :goto_1

    .line 341
    .end local v20           #angleC:D
    :cond_6
    const-wide v9, 0x400921fb54442c46L

    add-double/2addr v9, v7

    sub-double v20, v9, v18

    goto :goto_2
.end method

.method private rotateXY(DDDLmiui/app/screenelement/elements/ImageScreenElement$pair;)V
    .locals 13
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lmiui/app/screenelement/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p7, pr:Lmiui/app/screenelement/elements/ImageScreenElement$pair;,"Lmiui/app/screenelement/elements/ImageScreenElement$pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    mul-double v9, p1, p1

    mul-double v11, p3, p3

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 292
    .local v5, cm:D
    const-wide/16 v9, 0x0

    cmpl-double v9, v5, v9

    if-lez v9, :cond_0

    .line 293
    const-wide v7, 0x400921fb54442c46L

    .line 294
    .local v7, pi:D
    div-double v9, p1, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 295
    .local v1, angle1:D
    const-wide v9, 0x400921fb54442c46L

    sub-double/2addr v9, v1

    sub-double v3, v9, p5

    .line 296
    .local v3, angle2:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    add-double/2addr v9, p1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 297
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    sub-double v9, p3, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 302
    .end local v1           #angle1:D
    .end local v3           #angle2:D
    .end local v7           #pi:D
    :goto_0
    return-void

    .line 299
    :cond_0
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 300
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateBitmap()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 410
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 411
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 415
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 417
    :cond_0
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAniWidth:F

    .line 418
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpWidth:F

    .line 419
    iget v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAniWidth:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 420
    iget v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAniWidth:F

    iput v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mWidth:F

    .line 424
    :goto_0
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAniHeight:F

    .line 425
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpHeight:F

    .line 426
    iget v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAniHeight:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 427
    iget v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAniHeight:F

    iput v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHeight:F

    .line 431
    :goto_1
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getX()F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mX:F

    .line 432
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getY()F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mY:F

    .line 433
    return-void

    .line 422
    :cond_1
    iget v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpWidth:F

    iput v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mWidth:F

    goto :goto_0

    .line 429
    :cond_2
    iget v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpHeight:F

    iput v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHeight:F

    goto :goto_1
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "c"

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 184
    .local v6, bmp:Landroid/graphics/Bitmap;
    if-nez v6, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getAlpha()I

    move-result v5

    .line 188
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v14

    .line 190
    .local v14, oldDensity:I
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 192
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mWidth:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHeight:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mWidth:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->getLeft(FF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 196
    .local v20, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHeight:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->getTop(FF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 197
    .local v21, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_7

    .line 200
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v22

    if-eqz v22, :cond_3

    .line 201
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lmiui/app/screenelement/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v13

    .line 202
    .local v13, np:Landroid/graphics/NinePatch;
    if-eqz v13, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mWidth:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 259
    .end local v13           #np:Landroid/graphics/NinePatch;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 260
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->setDensity(I)V

    goto/16 :goto_0

    .line 206
    .restart local v13       #np:Landroid/graphics/NinePatch;
    :cond_2
    const-string v22, "ImageScreenElement"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 210
    .end local v13           #np:Landroid/graphics/NinePatch;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAniWidth:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-gtz v22, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAniHeight:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-gtz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 211
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mWidth:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->evaluate(Lmiui/app/screenelement/data/Expression;)D

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 214
    .local v17, sX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->evaluate(Lmiui/app/screenelement/data/Expression;)D

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 215
    .local v18, sY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->evaluate(Lmiui/app/screenelement/data/Expression;)D

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 216
    .local v16, sW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->evaluate(Lmiui/app/screenelement/data/Expression;)D

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v22

    move/from16 v0, v22

    float-to-int v15, v0

    .line 217
    .local v15, sH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    add-int v23, v17, v16

    add-int v24, v18, v15

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    .end local v15           #sH:I
    .end local v16           #sW:I
    .end local v17           #sX:I
    .end local v18           #sY:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 221
    :cond_6
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 225
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getMaxWidth()F

    move-result v12

    .line 226
    .local v12, maxWidth:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getMaxHeight()F

    move-result v11

    .line 227
    .local v11, maxHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mWidth:F

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHeight:F

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 229
    float-to-double v0, v12

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v8, v0

    .line 230
    .local v8, bufferWidth:I
    float-to-double v0, v11

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v7, v0

    .line 231
    .local v7, bufferHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    if-gt v8, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    if-le v7, v0, :cond_9

    .line 232
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move-object/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getKey()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v7, v1}, Lmiui/app/screenelement/ResourceManager;->getMaskBufferBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 234
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 236
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmiui/app/screenelement/ScreenElementRoot;->getScale()F

    move-result v19

    .line 239
    .local v19, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAniWidth:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-gtz v22, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAniHeight:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-gtz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    .line 240
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mWidth:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHeight:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 242
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->evaluate(Lmiui/app/screenelement/data/Expression;)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v17, v0

    .line 243
    .restart local v17       #sX:I
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->evaluate(Lmiui/app/screenelement/data/Expression;)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v18, v0

    .line 244
    .restart local v18       #sY:I
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->evaluate(Lmiui/app/screenelement/data/Expression;)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v16, v0

    .line 245
    .restart local v16       #sW:I
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->evaluate(Lmiui/app/screenelement/data/Expression;)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v15, v0

    .line 246
    .restart local v15       #sH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    add-int v23, v17, v16

    add-int v24, v18, v15

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    .end local v15           #sH:I
    .end local v16           #sW:I
    .end local v17           #sX:I
    .end local v18           #sY:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 253
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 254
    .local v10, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v10, v2, v3}, Lmiui/app/screenelement/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lmiui/app/screenelement/animation/AnimatedElement;II)V

    goto :goto_3

    .line 250
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #mask:Lmiui/app/screenelement/animation/AnimatedElement;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 257
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->finish()V

    .line 381
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapProvider:Lmiui/app/screenelement/elements/BitmapProvider;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapProvider:Lmiui/app/screenelement/elements/BitmapProvider;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/BitmapProvider;->finish()V

    .line 385
    :cond_0
    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 386
    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 387
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 275
    :goto_0
    return-object v0

    .line 273
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapProvider:Lmiui/app/screenelement/elements/BitmapProvider;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapProvider:Lmiui/app/screenelement/elements/BitmapProvider;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/BitmapProvider;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapHeight()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mY:F

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->init()V

    .line 141
    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 142
    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 144
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 146
    .local v1, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->init()V

    goto :goto_0

    .line 149
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/app/screenelement/animation/AnimatedElement;
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapProvider:Lmiui/app/screenelement/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapProvider:Lmiui/app/screenelement/elements/BitmapProvider;

    iget-object v3, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v3}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 152
    :cond_1
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->updateBitmap()V

    .line 153
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const-string v0, "ImageScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    .line 123
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 403
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 404
    if-eqz p1, :cond_0

    .line 405
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->updateBitmap()V

    .line 407
    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 391
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->reset(J)V

    .line 392
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 394
    .local v1, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/animation/AnimatedElement;->reset(J)V

    goto :goto_0

    .line 397
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/app/screenelement/animation/AnimatedElement;
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapProvider:Lmiui/app/screenelement/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 398
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapProvider:Lmiui/app/screenelement/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/BitmapProvider;->reset()V

    .line 400
    :cond_1
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 264
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 265
    iput-object p1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 266
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->updateBitmap()V

    .line 268
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 364
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->tick(J)V

    .line 365
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 370
    .local v1, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/animation/AnimatedElement;->tick(J)V

    goto :goto_1

    .line 374
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/app/screenelement/animation/AnimatedElement;
    :cond_1
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->updateBitmap()V

    goto :goto_0
.end method
