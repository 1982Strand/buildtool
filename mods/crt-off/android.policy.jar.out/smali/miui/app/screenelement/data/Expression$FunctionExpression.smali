.class public Lmiui/app/screenelement/data/Expression$FunctionExpression;
.super Lmiui/app/screenelement/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionExpression"
.end annotation


# static fields
.field protected static sFunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/screenelement/data/Expression$FunctionImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFun:Lmiui/app/screenelement/data/Expression$FunctionImpl;

.field private mParaExps:[Lmiui/app/screenelement/data/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 439
    invoke-static {}, Lmiui/app/screenelement/data/FunctionsLoader;->load()V

    .line 440
    return-void
.end method

.method public constructor <init>([Lmiui/app/screenelement/data/Expression;Ljava/lang/String;)V
    .locals 0
    .parameter "params"
    .parameter "fun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0}, Lmiui/app/screenelement/data/Expression;-><init>()V

    .line 444
    iput-object p1, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    .line 445
    invoke-direct {p0, p2}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->parseFunction(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method private parseFunction(Ljava/lang/String;)V
    .locals 6
    .parameter "fun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 460
    sget-object v1, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/Expression$FunctionImpl;

    .line 461
    .local v0, fd:Lmiui/app/screenelement/data/Expression$FunctionImpl;
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid function:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 463
    iput-object v0, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/data/Expression$FunctionImpl;

    .line 464
    iget-object v1, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    array-length v1, v1

    iget v4, v0, Lmiui/app/screenelement/data/Expression$FunctionImpl;->params:I

    if-lt v1, v4, :cond_1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameters count not matching for function: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 465
    return-void

    :cond_0
    move v1, v3

    .line 461
    goto :goto_0

    :cond_1
    move v2, v3

    .line 464
    goto :goto_1
.end method

.method public static registerFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V
    .locals 4
    .parameter "f"
    .parameter "d"

    .prologue
    .line 449
    sget-object v1, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/Expression$FunctionImpl;

    .line 450
    .local v0, fun:Lmiui/app/screenelement/data/Expression$FunctionImpl;
    if-eqz v0, :cond_0

    .line 451
    const-string v1, "Expression"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicated function name registation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    return-void
.end method

.method public static removeFunction(Ljava/lang/String;Lmiui/app/screenelement/data/Expression$FunctionImpl;)V
    .locals 1
    .parameter "f"
    .parameter "d"

    .prologue
    .line 456
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    return-void
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/data/Variables;)D
    .locals 2
    .parameter "var"

    .prologue
    .line 469
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/data/Expression$FunctionImpl;

    iget-object v1, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, v1, p1}, Lmiui/app/screenelement/data/Expression$FunctionImpl;->evaluate([Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "var"

    .prologue
    .line 474
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/data/Expression$FunctionImpl;

    iget-object v1, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, v1, p1}, Lmiui/app/screenelement/data/Expression$FunctionImpl;->evaluateStr([Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
