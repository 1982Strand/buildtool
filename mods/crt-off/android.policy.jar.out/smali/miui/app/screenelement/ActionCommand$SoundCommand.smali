.class Lmiui/app/screenelement/ActionCommand$SoundCommand;
.super Lmiui/app/screenelement/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SoundCommand"


# instance fields
.field private mKeepCur:Z

.field private mLoop:Z

.field private mSound:Ljava/lang/String;

.field private mVolumeExp:Lmiui/app/screenelement/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ActionCommand;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 907
    const-string v0, "sound"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    .line 908
    const-string v0, "keepCur"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mKeepCur:Z

    .line 909
    const-string v0, "loop"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mLoop:Z

    .line 910
    const-string v0, "volume"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/app/screenelement/data/Expression;

    .line 911
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/app/screenelement/data/Expression;

    if-nez v0, :cond_0

    .line 912
    const-string v0, "ActionCommand"

    const-string v1, "invalid expression in SoundCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .prologue
    .line 918
    const/4 v0, 0x0

    .line 919
    .local v0, volume:F
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_0

    .line 920
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    double-to-float v0, v1

    .line 922
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    new-instance v3, Lmiui/app/screenelement/SoundManager$SoundOptions;

    iget-boolean v4, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mKeepCur:Z

    iget-boolean v5, p0, Lmiui/app/screenelement/ActionCommand$SoundCommand;->mLoop:Z

    invoke-direct {v3, v4, v5, v0}, Lmiui/app/screenelement/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/screenelement/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/app/screenelement/SoundManager$SoundOptions;)V

    .line 923
    return-void
.end method
