.class public Lmiui/app/screenelement/data/BaseFunctions;
.super Lmiui/app/screenelement/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/BaseFunctions$1;,
        Lmiui/app/screenelement/data/BaseFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private fun:Lmiui/app/screenelement/data/BaseFunctions$Fun;


# direct methods
.method private constructor <init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V
    .locals 0
    .parameter "f"
    .parameter "i"

    .prologue
    .line 88
    invoke-direct {p0, p2}, Lmiui/app/screenelement/data/Expression$FunctionImpl;-><init>(I)V

    .line 89
    iput-object p1, p0, Lmiui/app/screenelement/data/BaseFunctions;->fun:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    .line 90
    return-void
.end method

.method private digit(II)I
    .locals 3
    .parameter "number"
    .parameter "n"

    .prologue
    const/4 v1, -0x1

    .line 207
    if-gtz p2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    if-nez p1, :cond_2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 210
    const/4 v1, 0x0

    goto :goto_0

    .line 211
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lez p1, :cond_3

    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_3

    .line 212
    div-int/lit8 p1, p1, 0xa

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_3
    if-lez p1, :cond_0

    rem-int/lit8 v1, p1, 0xa

    goto :goto_0
.end method

.method public static load()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 53
    const-string v0, "rand"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->RAND:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 54
    const-string v0, "sin"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->SIN:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 55
    const-string v0, "cos"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->COS:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 56
    const-string v0, "tan"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->TAN:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 57
    const-string v0, "asin"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->ASIN:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 58
    const-string v0, "acos"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->ACOS:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 59
    const-string v0, "atan"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->ATAN:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 60
    const-string v0, "sinh"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->SINH:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 61
    const-string v0, "cosh"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->COSH:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 62
    const-string v0, "sqrt"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->SQRT:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 63
    const-string v0, "abs"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->ABS:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 64
    const-string v0, "len"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->LEN:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 65
    const-string v0, "round"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->ROUND:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 66
    const-string v0, "int"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->INT:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 68
    const-string v0, "isnull"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->ISNULL:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 69
    const-string v0, "not"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->NOT:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 71
    const-string v0, "min"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->MIN:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 72
    const-string v0, "max"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->MAX:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 73
    const-string v0, "digit"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->DIGIT:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 75
    const-string v0, "eq"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->EQ:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 76
    const-string v0, "ne"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->NE:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 77
    const-string v0, "ge"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->GE:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 78
    const-string v0, "gt"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->GT:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 79
    const-string v0, "le"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->LE:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 80
    const-string v0, "lt"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->LT:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 81
    const-string v0, "ifelse"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->IFELSE:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 83
    const-string v0, "eqs"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->EQS:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 84
    const-string v0, "substr"

    new-instance v1, Lmiui/app/screenelement/data/BaseFunctions;

    sget-object v2, Lmiui/app/screenelement/data/BaseFunctions$Fun;->SUBSTR:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/app/screenelement/data/BaseFunctions;-><init>(Lmiui/app/screenelement/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V

    .line 85
    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Variables;)D
    .locals 12
    .parameter "mParaExps"
    .parameter "var"

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v4, 0x3ff0

    const/4 v10, 0x1

    const-wide/16 v6, 0x0

    .line 94
    sget-object v8, Lmiui/app/screenelement/data/BaseFunctions$1;->$SwitchMap$miui$app$screenelement$data$BaseFunctions$Fun:[I

    iget-object v9, p0, Lmiui/app/screenelement/data/BaseFunctions;->fun:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-virtual {v9}, Lmiui/app/screenelement/data/BaseFunctions$Fun;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 99
    aget-object v8, p1, v11

    invoke-virtual {v8, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    .line 100
    .local v2, value0:D
    sget-object v8, Lmiui/app/screenelement/data/BaseFunctions$1;->$SwitchMap$miui$app$screenelement$data$BaseFunctions$Fun:[I

    iget-object v9, p0, Lmiui/app/screenelement/data/BaseFunctions;->fun:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-virtual {v9}, Lmiui/app/screenelement/data/BaseFunctions$Fun;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 167
    const-string v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lmiui/app/screenelement/data/BaseFunctions;->fun:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-virtual {v8}, Lmiui/app/screenelement/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    .line 168
    .end local v2           #value0:D
    :cond_0
    :goto_0
    return-wide v4

    .line 96
    :pswitch_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    goto :goto_0

    .line 102
    .restart local v2       #value0:D
    :pswitch_1
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    goto :goto_0

    .line 104
    :pswitch_2
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    goto :goto_0

    .line 106
    :pswitch_3
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    goto :goto_0

    .line 108
    :pswitch_4
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    goto :goto_0

    .line 110
    :pswitch_5
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    goto :goto_0

    .line 112
    :pswitch_6
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    goto :goto_0

    .line 114
    :pswitch_7
    invoke-static {v2, v3}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v4

    goto :goto_0

    .line 116
    :pswitch_8
    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v4

    goto :goto_0

    .line 118
    :pswitch_9
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_0

    .line 120
    :pswitch_a
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    goto :goto_0

    .line 122
    :pswitch_b
    aget-object v4, p1, v11

    invoke-virtual {v4, p2}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-double v4, v4

    goto :goto_0

    .line 124
    :pswitch_c
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    goto :goto_0

    .line 126
    :pswitch_d
    double-to-int v4, v2

    int-to-double v4, v4

    goto :goto_0

    .line 128
    :pswitch_e
    aget-object v8, p1, v11

    invoke-virtual {v8, p2}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v8

    if-nez v8, :cond_0

    move-wide v4, v6

    goto :goto_0

    .line 130
    :pswitch_f
    cmpl-double v8, v2, v6

    if-lez v8, :cond_1

    :goto_1
    move-wide v4, v6

    goto :goto_0

    :cond_1
    move-wide v6, v4

    goto :goto_1

    .line 132
    :pswitch_10
    aget-object v4, p1, v10

    invoke-virtual {v4, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    goto :goto_0

    .line 134
    :pswitch_11
    aget-object v4, p1, v10

    invoke-virtual {v4, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_0

    .line 136
    :pswitch_12
    double-to-int v4, v2

    aget-object v5, p1, v10

    invoke-virtual {v5, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lmiui/app/screenelement/data/BaseFunctions;->digit(II)I

    move-result v4

    int-to-double v4, v4

    goto/16 :goto_0

    .line 138
    :pswitch_13
    aget-object v8, p1, v10

    invoke-virtual {v8, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpl-double v8, v2, v8

    if-eqz v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 140
    :pswitch_14
    aget-object v8, p1, v10

    invoke-virtual {v8, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpl-double v8, v2, v8

    if-nez v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 142
    :pswitch_15
    aget-object v8, p1, v10

    invoke-virtual {v8, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpl-double v8, v2, v8

    if-gez v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 144
    :pswitch_16
    aget-object v8, p1, v10

    invoke-virtual {v8, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpl-double v8, v2, v8

    if-gtz v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 146
    :pswitch_17
    aget-object v8, p1, v10

    invoke-virtual {v8, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpg-double v8, v2, v8

    if-lez v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 148
    :pswitch_18
    aget-object v8, p1, v10

    invoke-virtual {v8, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpg-double v8, v2, v8

    if-ltz v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 150
    :pswitch_19
    array-length v1, p1

    .line 151
    .local v1, len:I
    rem-int/lit8 v4, v1, 0x2

    if-eq v4, v10, :cond_2

    .line 152
    const-string v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "function parameter number should be 2*n+1: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lmiui/app/screenelement/data/BaseFunctions;->fun:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-virtual {v8}, Lmiui/app/screenelement/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    .line 153
    goto/16 :goto_0

    .line 155
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    add-int/lit8 v4, v1, -0x1

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_4

    .line 156
    mul-int/lit8 v4, v0, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v4, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 157
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    goto/16 :goto_0

    .line 155
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 159
    :cond_4
    add-int/lit8 v4, v1, -0x1

    aget-object v4, p1, v4

    invoke-virtual {v4, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    goto/16 :goto_0

    .line 162
    .end local v0           #i:I
    .end local v1           #len:I
    :pswitch_1a
    aget-object v8, p1, v11

    invoke-virtual {v8, p2}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, p1, v10

    invoke-virtual {v9, p2}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 164
    :pswitch_1b
    invoke-virtual {p0, p1, p2}, Lmiui/app/screenelement/data/BaseFunctions;->evaluateStr([Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6, v7}, Lmiui/app/screenelement/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v4

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 100
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public evaluateStr([Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 9
    .parameter "mParaExps"
    .parameter "var"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 172
    sget-object v6, Lmiui/app/screenelement/data/BaseFunctions$1;->$SwitchMap$miui$app$screenelement$data$BaseFunctions$Fun:[I

    iget-object v7, p0, Lmiui/app/screenelement/data/BaseFunctions;->fun:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-virtual {v7}, Lmiui/app/screenelement/data/BaseFunctions$Fun;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 202
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lmiui/app/screenelement/data/BaseFunctions;->evaluate([Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lmiui/app/screenelement/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_0
    return-object v5

    .line 174
    :pswitch_1
    array-length v1, p1

    .line 175
    .local v1, len:I
    rem-int/lit8 v6, v1, 0x2

    if-eq v6, v8, :cond_1

    .line 176
    const-string v6, "Expression"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "function parameter number should be 2*n+1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmiui/app/screenelement/data/BaseFunctions;->fun:Lmiui/app/screenelement/data/BaseFunctions$Fun;

    invoke-virtual {v8}, Lmiui/app/screenelement/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v5, v1, -0x1

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_3

    .line 180
    mul-int/lit8 v5, v0, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v5, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    .line 181
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v5, p2}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 179
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_3
    add-int/lit8 v5, v1, -0x1

    aget-object v5, p1, v5

    invoke-virtual {v5, p2}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 186
    .end local v0           #i:I
    .end local v1           #len:I
    :pswitch_2
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6, p2}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 189
    array-length v2, p1

    .line 190
    .local v2, size:I
    aget-object v6, p1, v8

    invoke-virtual {v6, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v6

    double-to-int v3, v6

    .line 192
    .local v3, start:I
    const/4 v6, 0x3

    if-lt v2, v6, :cond_4

    .line 193
    const/4 v6, 0x2

    :try_start_0
    aget-object v6, p1, v6

    invoke-virtual {v6, p2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v6

    double-to-int v1, v6

    .line 194
    .restart local v1       #len:I
    add-int v6, v3, v1

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 196
    .end local v1           #len:I
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 197
    :catch_0
    move-exception v6

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
