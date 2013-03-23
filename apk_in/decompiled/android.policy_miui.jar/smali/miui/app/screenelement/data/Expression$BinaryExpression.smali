.class Lmiui/app/screenelement/data/Expression$BinaryExpression;
.super Lmiui/app/screenelement/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinaryExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;
    }
.end annotation


# instance fields
.field private mExp1:Lmiui/app/screenelement/data/Expression;

.field private mExp2:Lmiui/app/screenelement/data/Expression;

.field private mOpe:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Expression;Ljava/lang/String;)V
    .locals 3
    .parameter "exp1"
    .parameter "exp2"
    .parameter "op"

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/data/Expression;-><init>()V

    sget-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    iput-object v0, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mOpe:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    iput-object p1, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/data/Expression;

    iput-object p2, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/data/Expression;

    invoke-static {p3}, Lmiui/app/screenelement/data/Expression$BinaryExpression;->parseOperator(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mOpe:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mOpe:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    sget-object v1, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    if-ne v0, v1, :cond_0

    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static parseOperator(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;
    .locals 1
    .parameter "op"

    .prologue
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->ADD:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->MIN:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    :cond_1
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->MUL:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->DIV:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    :cond_3
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->MOD:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    :cond_4
    sget-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/data/Variables;)D
    .locals 4
    .parameter "var"

    .prologue
    sget-object v0, Lmiui/app/screenelement/data/Expression$1;->$SwitchMap$miui$app$screenelement$data$Expression$BinaryExpression$Ope:[I

    iget-object v1, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mOpe:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v1}, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "Expression"

    const-string v1, "fail to evalute BinaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    rem-double/2addr v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 5
    .parameter "var"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v3, p1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .local v0, str1:Ljava/lang/String;
    iget-object v3, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v3, p1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .local v1, str2:Ljava/lang/String;
    sget-object v3, Lmiui/app/screenelement/data/Expression$1;->$SwitchMap$miui$app$screenelement$data$Expression$BinaryExpression$Ope:[I

    iget-object v4, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mOpe:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v4}, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string v3, "Expression"

    const-string v4, "fail to evalute string BinaryExpression, invalid operator"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v1           #str2:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1       #str2:Ljava/lang/String;
    :pswitch_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isNull(Lmiui/app/screenelement/data/Variables;)Z
    .locals 4
    .parameter "var"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lmiui/app/screenelement/data/Expression$1;->$SwitchMap$miui$app$screenelement$data$Expression$BinaryExpression$Ope:[I

    iget-object v3, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mOpe:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v3}, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
