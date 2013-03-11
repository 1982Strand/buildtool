.class Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
.super Lmiui/app/screenelement/data/VariableBinder$Variable;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# instance fields
.field public mColumn:Ljava/lang/String;

.field public mRow:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Variables;)V
    .locals 0
    .parameter "node"
    .parameter "var"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Variables;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 166
    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 167
    const-string v0, "row"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mRow:I

    .line 168
    return-void
.end method
