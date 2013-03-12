.class public Lmiui/app/screenelement/animation/SizeAnimation;
.super Lmiui/app/screenelement/animation/BaseAnimation;
.source "SizeAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Size"

.field public static final TAG_NAME:Ljava/lang/String; = "SizeAnimation"


# instance fields
.field private mCurrentH:D

.field private mCurrentW:D

.field private mDelayH:D

.field private mDelayW:D

.field private mMaxH:D

.field private mMaxW:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 8
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 29
    const-string v2, "Size"

    invoke-direct {p0, p1, v2, p2}, Lmiui/app/screenelement/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 30
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SizeAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong tag name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 32
    iget-object v2, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    .line 33
    .local v0, ai:Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    invoke-virtual {v0, v6}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mMaxW:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 34
    invoke-virtual {v0, v6}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mMaxW:D

    .line 35
    :cond_1
    invoke-virtual {v0, v7}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mMaxH:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 36
    invoke-virtual {v0, v7}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mMaxH:D

    goto :goto_0

    .line 40
    .end local v0           #ai:Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    :cond_2
    invoke-virtual {p0, v6}, Lmiui/app/screenelement/animation/SizeAnimation;->getItem(I)Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    .line 41
    .restart local v0       #ai:Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    invoke-virtual {v0, v6}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mDelayW:D

    .line 42
    invoke-virtual {v0, v7}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mDelayH:D

    .line 43
    return-void
.end method


# virtual methods
.method public final getHeight()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mCurrentH:D

    return-wide v0
.end method

.method public final getMaxHeight()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mMaxH:D

    return-wide v0
.end method

.method public final getMaxWidth()D
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mMaxW:D

    return-wide v0
.end method

.method public final getWidth()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mCurrentW:D

    return-wide v0
.end method

.method protected onCreateItem()Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "w"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "h"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lmiui/app/screenelement/ScreenElementRoot;)V

    return-object v0
.end method

.method protected onTick(Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;F)V
    .locals 9
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 77
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    if-nez p1, :cond_1

    move-wide v0, v2

    .line 82
    .local v0, x1:D
    :goto_1
    if-nez p1, :cond_2

    .line 83
    .local v2, y1:D
    :goto_2
    invoke-virtual {p2, v4}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    sub-double/2addr v4, v0

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v0

    iput-wide v4, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mCurrentW:D

    .line 84
    invoke-virtual {p2, v8}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    sub-double/2addr v4, v2

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    iput-wide v4, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mCurrentH:D

    goto :goto_0

    .line 81
    .end local v0           #x1:D
    .end local v2           #y1:D
    :cond_1
    invoke-virtual {p1, v4}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_1

    .line 82
    .restart local v0       #x1:D
    :cond_2
    invoke-virtual {p1, v8}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    goto :goto_2
.end method

.method public reset(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/animation/BaseAnimation;->reset(J)V

    .line 70
    iget-wide v0, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mDelayW:D

    iput-wide v0, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mCurrentW:D

    .line 71
    iget-wide v0, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mDelayH:D

    iput-wide v0, p0, Lmiui/app/screenelement/animation/SizeAnimation;->mCurrentH:D

    .line 72
    return-void
.end method
