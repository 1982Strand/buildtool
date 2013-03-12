.class public Lmiui/app/screenelement/elements/ElementGroup;
.super Lmiui/app/screenelement/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field private mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 27
    const-string v0, "clip"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/screenelement/elements/ElementGroup;->mClip:Z

    .line 28
    invoke-virtual {p0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 29
    return-void
.end method


# virtual methods
.method public addElement(Lmiui/app/screenelement/elements/ScreenElement;)V
    .locals 1
    .parameter "newElement"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Lmiui/app/screenelement/elements/ScreenElement;->setParent(Lmiui/app/screenelement/elements/ElementGroup;)V

    .line 54
    iget-object v0, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    .line 98
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->isVisible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 116
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->getX()F

    move-result v5

    .line 102
    .local v5, x:F
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->getY()F

    move-result v6

    .line 103
    .local v6, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 104
    .local v3, rs:I
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->getWidth()F

    move-result v4

    .line 106
    .local v4, w:F
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->getHeight()F

    move-result v1

    .line 107
    .local v1, h:F
    cmpl-float v7, v4, v8

    if-lez v7, :cond_1

    cmpl-float v7, v1, v8

    if-lez v7, :cond_1

    iget-boolean v7, p0, Lmiui/app/screenelement/elements/ElementGroup;->mClip:Z

    if-eqz v7, :cond_1

    .line 108
    invoke-virtual {p1, v8, v8, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 111
    :cond_1
    iget-object v7, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 112
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 113
    iget-object v7, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v7, p1}, Lmiui/app/screenelement/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    .line 173
    .local v1, ele:Lmiui/app/screenelement/elements/ScreenElement;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 183
    :goto_0
    return-object v3

    .line 176
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 177
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 178
    iget-object v3, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/app/screenelement/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 180
    goto :goto_0

    .line 177
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    .prologue
    .line 146
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->finish()V

    .line 148
    iget-object v3, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 149
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 152
    :try_start_0
    iget-object v3, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v3}, Lmiui/app/screenelement/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LockScreen_ElementGroup"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->init()V

    .line 62
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 63
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ScreenElement;->init()V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 8
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    const-string v6, "LockScreen_ElementGroup"

    const-string v7, "node is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v6, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v7, "node is null"

    invoke-direct {v6, v7}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 36
    :cond_0
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v6

    iget-object v2, v6, Lmiui/app/screenelement/ScreenContext;->mFactory:Lmiui/app/screenelement/elements/ScreenElementFactory;

    .line 37
    .local v2, factory:Lmiui/app/screenelement/elements/ScreenElementFactory;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 38
    .local v1, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 39
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 40
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 41
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 42
    .local v4, item:Lorg/w3c/dom/Element;
    invoke-virtual {v2, v4, p2}, Lmiui/app/screenelement/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v5

    .line 43
    .local v5, newElement:Lmiui/app/screenelement/elements/ScreenElement;
    if-eqz v5, :cond_1

    .line 44
    invoke-virtual {v5, p0}, Lmiui/app/screenelement/elements/ScreenElement;->setParent(Lmiui/app/screenelement/elements/ElementGroup;)V

    .line 45
    iget-object v6, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v4           #item:Lorg/w3c/dom/Element;
    .end local v5           #newElement:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 132
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    const/4 v2, 0x0

    .line 141
    :cond_0
    return v2

    .line 135
    :cond_1
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 136
    .local v2, ret:Z
    iget-object v3, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 137
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 138
    iget-object v3, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/app/screenelement/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    const/4 v2, 0x1

    .line 137
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 192
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 193
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 194
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 195
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->pause()V

    .line 81
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 82
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 83
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ScreenElement;->pause()V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->reset(J)V

    .line 72
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 73
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 74
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->reset(J)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->resume()V

    .line 90
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 91
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 92
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ScreenElement;->resume()V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "show"

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 164
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 165
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 166
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->tick(J)V

    .line 121
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 126
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->tick(J)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
