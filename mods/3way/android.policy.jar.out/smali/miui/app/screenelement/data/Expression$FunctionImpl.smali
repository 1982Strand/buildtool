.class public abstract Lmiui/app/screenelement/data/Expression$FunctionImpl;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FunctionImpl"
.end annotation


# instance fields
.field public params:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "p"

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput p1, p0, Lmiui/app/screenelement/data/Expression$FunctionImpl;->params:I

    .line 425
    return-void
.end method


# virtual methods
.method public abstract evaluate([Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Variables;)D
.end method

.method public abstract evaluateStr([Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
.end method
