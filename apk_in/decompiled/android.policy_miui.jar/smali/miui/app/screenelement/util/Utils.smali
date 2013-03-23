.class public Lmiui/app/screenelement/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/util/Utils$XmlTraverseListener;,
        Lmiui/app/screenelement/util/Utils$Point;,
        Lmiui/app/screenelement/util/Utils$GetChildWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dist(Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/util/Utils$Point;Z)D
    .locals 8
    .parameter "a"
    .parameter "b"
    .parameter "sqr"

    .prologue
    iget-wide v4, p0, Lmiui/app/screenelement/util/Utils$Point;->x:D

    iget-wide v6, p1, Lmiui/app/screenelement/util/Utils$Point;->x:D

    sub-double v0, v4, v6

    .local v0, x:D
    iget-wide v4, p0, Lmiui/app/screenelement/util/Utils$Point;->y:D

    iget-wide v6, p1, Lmiui/app/screenelement/util/Utils$Point;->y:D

    sub-double v2, v4, v6

    .local v2, y:D
    if-eqz p2, :cond_0

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    :goto_0
    return-wide v4

    :cond_0
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    goto :goto_0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"
    .parameter "suffix"

    .prologue
    const-string v0, "_"

    invoke-static {p0, v0, p1}, Lmiui/app/screenelement/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "src"
    .parameter "separator"
    .parameter "suffix"

    .prologue
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, dot:I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static asserts(Z)V
    .locals 1
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v0, "assert error"

    invoke-static {p0, v0}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .locals 1
    .parameter "t"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .local v0, str:Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0           #str:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .locals 2
    .parameter "ele"
    .parameter "name"
    .parameter "def"

    .prologue
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsFloatThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)F
    .locals 6
    .parameter "ele"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v2, "fail to get attribute name: %s of Element %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 2
    .parameter "ele"
    .parameter "name"
    .parameter "def"

    .prologue
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 6
    .parameter "ele"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v2, "fail to get attribute name: %s of Element %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 2
    .parameter "ele"
    .parameter "name"
    .parameter "def"

    .prologue
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J
    .locals 6
    .parameter "ele"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v2, "fail to get attribute name: %s of Element %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6
    .parameter "ele"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .local v2, nl:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, item:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #item:Lorg/w3c/dom/Node;
    :cond_2
    move-object v1, v3

    goto :goto_0
.end method

.method public static getVariableNumber(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)D
    .locals 3
    .parameter "object"
    .parameter "property"
    .parameter "vars"

    .prologue
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-direct {v0, p0, p1, p2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .local v0, tmp:Lmiui/app/screenelement/util/IndexedNumberVariable;
    invoke-virtual {v0}, Lmiui/app/screenelement/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static getVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)D
    .locals 2
    .parameter "property"
    .parameter "vars"

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lmiui/app/screenelement/util/Utils;->getVariableNumber(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "object"
    .parameter "property"
    .parameter "vars"

    .prologue
    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-direct {v0, p0, p1, p2}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .local v0, tmp:Lmiui/app/screenelement/util/IndexedStringVariable;
    invoke-virtual {v0}, Lmiui/app/screenelement/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVariableString(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "vars"

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lmiui/app/screenelement/util/Utils;->getVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mixAlpha(II)I
    .locals 2
    .parameter "a1"
    .parameter "a2"

    .prologue
    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    if-lt p1, v0, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    mul-int v0, p0, p1

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0
.end method

.method public static pointProjectionOnSegment(Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/util/Utils$Point;Z)Lmiui/app/screenelement/util/Utils$Point;
    .locals 11
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "nearestEnd"

    .prologue
    invoke-virtual {p1, p0}, Lmiui/app/screenelement/util/Utils$Point;->minus(Lmiui/app/screenelement/util/Utils$Point;)Lmiui/app/screenelement/util/Utils$Point;

    move-result-object v0

    .local v0, AB:Lmiui/app/screenelement/util/Utils$Point;
    invoke-virtual {p2, p0}, Lmiui/app/screenelement/util/Utils$Point;->minus(Lmiui/app/screenelement/util/Utils$Point;)Lmiui/app/screenelement/util/Utils$Point;

    move-result-object v1

    .local v1, AC:Lmiui/app/screenelement/util/Utils$Point;
    iget-wide v5, v0, Lmiui/app/screenelement/util/Utils$Point;->x:D

    iget-wide v7, v1, Lmiui/app/screenelement/util/Utils$Point;->x:D

    mul-double/2addr v5, v7

    iget-wide v7, v0, Lmiui/app/screenelement/util/Utils$Point;->y:D

    iget-wide v9, v1, Lmiui/app/screenelement/util/Utils$Point;->y:D

    mul-double/2addr v7, v9

    add-double v3, v5, v7

    .local v3, r:D
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Lmiui/app/screenelement/util/Utils;->Dist(Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/util/Utils$Point;Z)D

    move-result-wide v5

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-ltz v5, :cond_0

    const-wide/high16 v5, 0x3ff0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_3

    :cond_0
    if-nez p3, :cond_2

    const/4 p0, 0x0

    .end local p0
    :cond_1
    :goto_0
    move-object v2, p0

    :goto_1
    return-object v2

    .restart local p0
    :cond_2
    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-ltz v5, :cond_1

    move-object p0, p1

    goto :goto_0

    :cond_3
    move-object v2, v0

    .local v2, D:Lmiui/app/screenelement/util/Utils$Point;
    iget-wide v5, v2, Lmiui/app/screenelement/util/Utils$Point;->x:D

    mul-double/2addr v5, v3

    iput-wide v5, v2, Lmiui/app/screenelement/util/Utils$Point;->x:D

    iget-wide v5, v2, Lmiui/app/screenelement/util/Utils$Point;->y:D

    mul-double/2addr v5, v3

    iput-wide v5, v2, Lmiui/app/screenelement/util/Utils$Point;->y:D

    invoke-virtual {v2, p0}, Lmiui/app/screenelement/util/Utils$Point;->Offset(Lmiui/app/screenelement/util/Utils$Point;)V

    goto :goto_1
.end method

.method public static putVariableNumber(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V
    .locals 1
    .parameter "object"
    .parameter "property"
    .parameter "vars"
    .parameter "value"

    .prologue
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-direct {v0, p0, p1, p2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .local v0, tmp:Lmiui/app/screenelement/util/IndexedNumberVariable;
    invoke-virtual {v0, p3}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    return-void
.end method

.method public static putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V
    .locals 1
    .parameter "property"
    .parameter "vars"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "property"
    .parameter "vars"
    .parameter "str"

    .prologue
    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-direct {v0, p0, p1, p2}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .local v0, tmp:Lmiui/app/screenelement/util/IndexedStringVariable;
    invoke-virtual {v0, p3}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "vars"
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    return-void
.end method

.method public static stringToDouble(Ljava/lang/String;D)D
    .locals 1
    .parameter "value"
    .parameter "def"

    .prologue
    if-nez p0, :cond_0

    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/util/Utils$XmlTraverseListener;)V
    .locals 5
    .parameter "parent"
    .parameter "tag"
    .parameter "l"

    .prologue
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .local v2, node:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2           #node:Lorg/w3c/dom/Node;
    invoke-interface {p2, v2}, Lmiui/app/screenelement/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
