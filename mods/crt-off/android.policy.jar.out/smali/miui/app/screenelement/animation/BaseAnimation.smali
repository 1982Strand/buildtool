.class public abstract Lmiui/app/screenelement/animation/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    }
.end annotation


# static fields
.field private static final INFINITE_TIME:J = 0xe8d4a51000L

.field private static final LOG_TAG:Ljava/lang/String; = "BaseAnimation"


# instance fields
.field private mDelay:J

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrame:Z

.field private mRealTimeRange:J

.field protected mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mStartTime:J

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "tag"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 75
    iput-object p3, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 76
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 9
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 80
    iget-object v5, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 81
    const-string v5, "delay"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, strDelay:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 85
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mDelay:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 92
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 93
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 94
    .local v1, ele:Lorg/w3c/dom/Element;
    iget-object v5, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiui/app/screenelement/animation/BaseAnimation;->onCreateItem()Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    move-result-object v7

    invoke-virtual {v7, v1}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v1           #ele:Lorg/w3c/dom/Element;
    .end local v2           #i:I
    .end local v3           #nodeList:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "BaseAnimation"

    const-string v7, "invalid delay attribute"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #i:I
    .restart local v3       #nodeList:Lorg/w3c/dom/NodeList;
    :cond_1
    iget-object v5, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    move v5, v6

    :goto_2
    const-string v7, "BaseAnimation: empty items"

    invoke-static {v5, v7}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 97
    iget-object v5, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    iget-wide v7, v5, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v7, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mTimeRange:J

    .line 99
    iget-object v5, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 100
    iget-object v5, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    iget-wide v5, v5, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v5, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mRealTimeRange:J

    .line 101
    :cond_2
    return-void

    .line 96
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected getItem(I)Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 104
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method protected abstract onCreateItem()Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
.end method

.method protected abstract onTick(Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;F)V
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 115
    iput-wide p1, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mStartTime:J

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/animation/BaseAnimation;->mLastFrame:Z

    .line 117
    return-void
.end method

.method public final tick(J)V
    .locals 22
    .parameter "currentTime"

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/app/screenelement/animation/BaseAnimation;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v7, p1, v18

    .line 121
    .local v7, elapsedTime:J
    const-wide/16 v18, 0x0

    cmp-long v18, v7, v18

    if-gez v18, :cond_0

    .line 122
    const-wide/16 v7, 0x0

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/app/screenelement/animation/BaseAnimation;->mDelay:J

    move-wide/from16 v18, v0

    cmp-long v18, v7, v18

    if-gez v18, :cond_2

    .line 124
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lmiui/app/screenelement/animation/BaseAnimation;->onTick(Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;F)V

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/app/screenelement/animation/BaseAnimation;->mDelay:J

    move-wide/from16 v18, v0

    sub-long v7, v7, v18

    .line 129
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/app/screenelement/animation/BaseAnimation;->mTimeRange:J

    move-wide/from16 v18, v0

    const-wide v20, 0xe8d4a51000L

    cmp-long v18, v18, v20

    if-ltz v18, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/app/screenelement/animation/BaseAnimation;->mRealTimeRange:J

    move-wide/from16 v18, v0

    cmp-long v18, v7, v18

    if-lez v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/app/screenelement/animation/BaseAnimation;->mLastFrame:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 134
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/app/screenelement/animation/BaseAnimation;->mTimeRange:J

    move-wide/from16 v18, v0

    rem-long v16, v7, v18

    .line 135
    .local v16, time:J
    const/4 v10, 0x0

    .local v10, item1:Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    const/4 v11, 0x0

    .line 136
    .local v11, item2:Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 137
    .local v4, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v4, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    .line 139
    .local v12, pos:Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    iget-wide v0, v12, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v16, v18

    if-gtz v18, :cond_7

    .line 140
    move-object v11, v12

    .line 142
    const-wide/16 v5, 0x0

    .line 143
    .local v5, base:J
    if-nez v9, :cond_4

    .line 144
    iget-wide v14, v12, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 151
    .local v14, range:J
    :goto_2
    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_5

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/app/screenelement/animation/BaseAnimation;->mLastFrame:Z

    .line 152
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-nez v18, :cond_6

    const/high16 v18, 0x3f80

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v11, v1}, Lmiui/app/screenelement/animation/BaseAnimation;->onTick(Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;F)V

    goto :goto_0

    .line 146
    .end local v14           #range:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v9, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    .line 147
    .local v13, pos1:Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    move-object v10, v13

    .line 148
    iget-wide v0, v12, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v18, v0

    iget-wide v0, v13, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v20, v0

    sub-long v14, v18, v20

    .line 149
    .restart local v14       #range:J
    iget-wide v5, v13, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_2

    .line 151
    .end local v13           #pos1:Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 152
    :cond_6
    sub-long v18, v16, v5

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    long-to-float v0, v14

    move/from16 v19, v0

    div-float v18, v18, v19

    goto :goto_4

    .line 137
    .end local v5           #base:J
    .end local v14           #range:J
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method
