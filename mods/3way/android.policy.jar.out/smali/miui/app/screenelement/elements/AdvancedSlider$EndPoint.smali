.class Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
.super Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field public mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/AdvancedSlider$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mPathX:Lmiui/app/screenelement/data/Expression;

.field private mPathY:Lmiui/app/screenelement/data/Expression;

.field private mRawTolerance:I

.field private mTolerance:F

.field final synthetic this$0:Lmiui/app/screenelement/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 730
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    .line 731
    const-string v0, "EndPoint"

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 728
    const/16 v0, 0x96

    iput v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 732
    invoke-direct {p0, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->load(Lorg/w3c/dom/Element;)V

    .line 733
    return-void
.end method

.method static synthetic access$1000(Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;FF)Lmiui/app/screenelement/util/Utils$Point;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 715
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lmiui/app/screenelement/util/Utils$Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 715
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getNearestPoint(FF)Lmiui/app/screenelement/util/Utils$Point;
    .locals 22
    .parameter "x"
    .parameter "y"

    .prologue
    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 774
    new-instance v12, Lmiui/app/screenelement/util/Utils$Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    move-object/from16 v18, v0

    #getter for: Lmiui/app/screenelement/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static/range {v18 .. v18}, Lmiui/app/screenelement/elements/AdvancedSlider;->access$600(Lmiui/app/screenelement/elements/AdvancedSlider;)F

    move-result v18

    sub-float v18, p1, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    move-object/from16 v20, v0

    #getter for: Lmiui/app/screenelement/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static/range {v20 .. v20}, Lmiui/app/screenelement/elements/AdvancedSlider;->access$700(Lmiui/app/screenelement/elements/AdvancedSlider;)F

    move-result v20

    sub-float v20, p2, v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v12, v0, v1, v2, v3}, Lmiui/app/screenelement/util/Utils$Point;-><init>(DD)V

    .line 794
    :cond_0
    return-object v12

    .line 777
    :cond_1
    const/4 v12, 0x0

    .line 778
    .local v12, pos:Lmiui/app/screenelement/util/Utils$Point;
    const-wide v6, 0x7fefffffffffffffL

    .line 779
    .local v6, dist:D
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    move-object/from16 v18, v0

    #getter for: Lmiui/app/screenelement/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static/range {v18 .. v18}, Lmiui/app/screenelement/elements/AdvancedSlider;->access$600(Lmiui/app/screenelement/elements/AdvancedSlider;)F

    move-result v18

    sub-float v16, p1, v18

    .line 781
    .local v16, x0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    move-object/from16 v18, v0

    #getter for: Lmiui/app/screenelement/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static/range {v18 .. v18}, Lmiui/app/screenelement/elements/AdvancedSlider;->access$700(Lmiui/app/screenelement/elements/AdvancedSlider;)F

    move-result v18

    sub-float v17, p2, v18

    .line 782
    .local v17, y0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/app/screenelement/elements/AdvancedSlider$Position;

    .line 783
    .local v14, pt1:Lmiui/app/screenelement/elements/AdvancedSlider$Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/app/screenelement/elements/AdvancedSlider$Position;

    .line 784
    .local v15, pt2:Lmiui/app/screenelement/elements/AdvancedSlider$Position;
    new-instance v10, Lmiui/app/screenelement/util/Utils$Point;

    invoke-virtual {v14}, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual {v14}, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lmiui/app/screenelement/util/Utils$Point;-><init>(DD)V

    .line 785
    .local v10, p1:Lmiui/app/screenelement/util/Utils$Point;
    new-instance v11, Lmiui/app/screenelement/util/Utils$Point;

    invoke-virtual {v15}, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual {v15}, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v11, v0, v1, v2, v3}, Lmiui/app/screenelement/util/Utils$Point;-><init>(DD)V

    .line 786
    .local v11, p2:Lmiui/app/screenelement/util/Utils$Point;
    new-instance v9, Lmiui/app/screenelement/util/Utils$Point;

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v9, v0, v1, v2, v3}, Lmiui/app/screenelement/util/Utils$Point;-><init>(DD)V

    .line 787
    .local v9, p0:Lmiui/app/screenelement/util/Utils$Point;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v10, v11, v9, v0}, Lmiui/app/screenelement/util/Utils;->pointProjectionOnSegment(Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/util/Utils$Point;Z)Lmiui/app/screenelement/util/Utils$Point;

    move-result-object v13

    .line 788
    .local v13, pt:Lmiui/app/screenelement/util/Utils$Point;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v9, v0}, Lmiui/app/screenelement/util/Utils;->Dist(Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/util/Utils$Point;Z)D

    move-result-wide v4

    .line 789
    .local v4, d:D
    cmpg-double v18, v4, v6

    if-gez v18, :cond_2

    .line 790
    move-wide v6, v4

    .line 791
    move-object v12, v13

    .line 779
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    .line 737
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    .line 738
    return-void
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 818
    const-string v4, "Path"

    invoke-static {p1, v4}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 819
    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_1

    .line 820
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 833
    :cond_0
    return-void

    .line 823
    :cond_1
    const-string v4, "tolerance"

    const/16 v5, 0x96

    invoke-static {v0, v4, v5}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 825
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 826
    const-string v4, "x"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPathX:Lmiui/app/screenelement/data/Expression;

    .line 827
    const-string v4, "y"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPathY:Lmiui/app/screenelement/data/Expression;

    .line 828
    const-string v4, "Position"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 829
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 830
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 831
    .local v2, item:Lorg/w3c/dom/Element;
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    new-instance v5, Lmiui/app/screenelement/elements/AdvancedSlider$Position;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v7, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPathX:Lmiui/app/screenelement/data/Expression;

    iget-object v8, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPathY:Lmiui/app/screenelement/data/Expression;

    invoke-direct {v5, v6, v2, v7, v8}, Lmiui/app/screenelement/elements/AdvancedSlider$Position;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Expression;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "node"

    .prologue
    .line 836
    const-string v4, "Intent"

    invoke-static {p1, v4}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 837
    .local v2, intentEle:Lorg/w3c/dom/Element;
    const-string v4, "Command"

    invoke-static {p1, v4}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 838
    .local v0, commandEle:Lorg/w3c/dom/Element;
    const-string v4, "Trigger"

    invoke-static {p1, v4}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 839
    .local v3, triggerEle:Lorg/w3c/dom/Element;
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    new-instance v4, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lmiui/app/screenelement/elements/AdvancedSlider$1;)V

    iput-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    .line 843
    if-eqz v2, :cond_2

    .line 844
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    invoke-static {v2}, Lmiui/app/screenelement/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/util/Task;

    move-result-object v5

    iput-object v5, v4, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    goto :goto_0

    .line 845
    :cond_2
    if-eqz v0, :cond_3

    .line 846
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, v5, Lmiui/app/screenelement/elements/AdvancedSlider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-static {v0, v5}, Lmiui/app/screenelement/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/ActionCommand;

    move-result-object v5

    iput-object v5, v4, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    .line 847
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    iget-object v4, v4, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-nez v4, :cond_0

    .line 848
    const-string v4, "LockScreen_AdvancedSlider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid Command element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 850
    :cond_3
    if-eqz v3, :cond_0

    .line 852
    :try_start_0
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    new-instance v5, Lmiui/app/screenelement/CommandTrigger;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v6, v6, Lmiui/app/screenelement/elements/AdvancedSlider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v5, v3, v6}, Lmiui/app/screenelement/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v5, v4, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :goto_1
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    iget-object v4, v4, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-nez v4, :cond_0

    .line 857
    const-string v4, "LockScreen_AdvancedSlider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid Trigger element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    :catch_0
    move-exception v1

    .line 854
    .local v1, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 751
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->finish()V

    .line 752
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->finish()V

    .line 755
    :cond_0
    return-void
.end method

.method public getTransformedDist(Lmiui/app/screenelement/util/Utils$Point;FF)F
    .locals 9
    .parameter "pt"
    .parameter "x"
    .parameter "y"

    .prologue
    const v3, 0x7f7fffff

    .line 801
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 802
    const v0, 0x7effffff

    .line 813
    :cond_0
    :goto_0
    return v0

    .line 804
    :cond_1
    if-nez p1, :cond_2

    move v0, v3

    .line 805
    goto :goto_0

    .line 807
    :cond_2
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    #getter for: Lmiui/app/screenelement/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static {v4}, Lmiui/app/screenelement/elements/AdvancedSlider;->access$600(Lmiui/app/screenelement/elements/AdvancedSlider;)F

    move-result v4

    sub-float v1, p2, v4

    .line 808
    .local v1, x0:F
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    #getter for: Lmiui/app/screenelement/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static {v4}, Lmiui/app/screenelement/elements/AdvancedSlider;->access$700(Lmiui/app/screenelement/elements/AdvancedSlider;)F

    move-result v4

    sub-float v2, p3, v4

    .line 809
    .local v2, y0:F
    new-instance v4, Lmiui/app/screenelement/util/Utils$Point;

    float-to-double v5, v1

    float-to-double v7, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lmiui/app/screenelement/util/Utils$Point;-><init>(DD)V

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lmiui/app/screenelement/util/Utils;->Dist(Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/util/Utils$Point;Z)D

    move-result-wide v4

    double-to-float v0, v4

    .line 810
    .local v0, dist:F
    iget v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mTolerance:F

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_0

    move v0, v3

    .line 813
    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 742
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->init()V

    .line 743
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->init()V

    .line 746
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mTolerance:F

    .line 747
    return-void
.end method

.method protected onStateChange(Lmiui/app/screenelement/elements/AdvancedSlider$State;Lmiui/app/screenelement/elements/AdvancedSlider$State;)V
    .locals 2
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 864
    sget-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Invalid:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_0

    .line 873
    :goto_0
    return-void

    .line 868
    :cond_0
    sget-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$1;->$SwitchMap$miui$app$screenelement$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Lmiui/app/screenelement/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 870
    :pswitch_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mReachedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->playSound(Ljava/lang/String;)V

    goto :goto_0

    .line 868
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 758
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->pause()V

    .line 759
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->pause()V

    .line 762
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 765
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->resume()V

    .line 766
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->resume()V

    .line 769
    :cond_0
    return-void
.end method
