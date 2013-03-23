.class public Lmiui/app/screenelement/elements/FramerateController;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mCurFramerate:F

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v3, p0}, Lmiui/app/screenelement/ScreenElementRoot;->addFramerateController(Lmiui/app/screenelement/elements/FramerateController;)V

    const-string v3, "loop"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mLoop:Z

    const-string v3, "ControlPoint"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .local v0, e:Lorg/w3c/dom/Element;
    iget-object v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v4, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;

    invoke-direct {v4, v0}, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #e:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;

    iget-wide v3, v3, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mTimeRange:J

    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/ScreenElement;->onVisibilityChange(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/FramerateController;->getFramerate()F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/FramerateController;->mCurFramerate:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/elements/FramerateController;->requestFramerate(F)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lmiui/app/screenelement/elements/FramerateController;->mCurFramerate:F

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/elements/FramerateController;->requestFramerate(F)V

    goto :goto_0
.end method

.method public reset(J)V
    .locals 4
    .parameter "time"

    .prologue
    iget-object v1, p0, Lmiui/app/screenelement/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lmiui/app/screenelement/elements/FramerateController;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/elements/FramerateController;->mStopped:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/app/screenelement/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/app/screenelement/elements/FramerateController;->mNextUpdateInterval:J

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/FramerateController;->requestUpdate()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFramerate(J)J
    .locals 13
    .parameter "currentTime"

    .prologue
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/FramerateController;->isVisible()Z

    move-result v8

    if-nez v8, :cond_0

    const-wide v8, 0x7fffffffffffffffL

    :goto_0
    return-wide v8

    :cond_0
    iget-object v10, p0, Lmiui/app/screenelement/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-boolean v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mStopped:Z

    if-eqz v8, :cond_1

    const-wide v8, 0x7fffffffffffffffL

    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_1
    :try_start_1
    iget-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v11, 0x0

    cmp-long v8, v8, v11

    if-lez v8, :cond_2

    iget-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mLastUpdateTime:J

    sub-long v1, p1, v8

    .local v1, elapsedTime:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-ltz v8, :cond_2

    iget-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v8, v1, v8

    if-gez v8, :cond_2

    iget-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mNextUpdateInterval:J

    sub-long/2addr v8, v1

    iput-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mNextUpdateInterval:J

    iput-wide p1, p0, Lmiui/app/screenelement/elements/FramerateController;->mLastUpdateTime:J

    iget-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v10

    goto :goto_0

    .end local v1           #elapsedTime:J
    :cond_2
    iget-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mStartTime:J

    sub-long v1, p1, v8

    .restart local v1       #elapsedTime:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-gez v8, :cond_3

    const-wide/16 v1, 0x0

    :cond_3
    iget-boolean v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mLoop:Z

    if-eqz v8, :cond_5

    iget-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mTimeRange:J

    rem-long v6, v1, v8

    .local v6, time:J
    :goto_1
    const-wide/16 v4, 0x0

    .local v4, nextUpdateTime:J
    iget-object v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_8

    iget-object v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;

    .local v0, cp:Lmiui/app/screenelement/elements/FramerateController$ControlPoint;
    iget-wide v8, v0, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_7

    iget v8, v0, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v8, v8

    invoke-virtual {p0, v8}, Lmiui/app/screenelement/elements/FramerateController;->requestFramerate(F)V

    iget-boolean v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mLoop:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_4

    const/4 v8, 0x1

    iput-boolean v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mStopped:Z

    :cond_4
    iput-wide p1, p0, Lmiui/app/screenelement/elements/FramerateController;->mLastUpdateTime:J

    iget-boolean v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mStopped:Z

    if-eqz v8, :cond_6

    const-wide v8, 0x7fffffffffffffffL

    :goto_3
    iput-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mNextUpdateInterval:J

    iget-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v10

    goto/16 :goto_0

    .end local v0           #cp:Lmiui/app/screenelement/elements/FramerateController$ControlPoint;
    .end local v3           #i:I
    .end local v4           #nextUpdateTime:J
    .end local v6           #time:J
    :cond_5
    move-wide v6, v1

    goto :goto_1

    .restart local v0       #cp:Lmiui/app/screenelement/elements/FramerateController$ControlPoint;
    .restart local v3       #i:I
    .restart local v4       #nextUpdateTime:J
    .restart local v6       #time:J
    :cond_6
    sub-long v8, v4, v6

    goto :goto_3

    :cond_7
    iget-wide v4, v0, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;->mTime:J

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v0           #cp:Lmiui/app/screenelement/elements/FramerateController$ControlPoint;
    :cond_8
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v8, 0x7fffffffffffffffL

    goto/16 :goto_0
.end method
