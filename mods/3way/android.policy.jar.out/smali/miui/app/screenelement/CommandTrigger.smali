.class public Lmiui/app/screenelement/CommandTrigger;
.super Ljava/lang/Object;
.source "CommandTrigger.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Trigger"


# instance fields
.field private mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

.field private mActionString:Ljava/lang/String;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/ActionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mPropertyCommand:Lmiui/app/screenelement/ActionCommand$PropertyCommand;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Other:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/CommandTrigger;->load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 39
    return-void
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/CommandTrigger;
    .locals 3
    .parameter "ele"
    .parameter "root"

    .prologue
    const/4 v1, 0x0

    .line 55
    if-nez p0, :cond_0

    .line 58
    :goto_0
    return-object v1

    .line 55
    :cond_0
    :try_start_0
    new-instance v2, Lmiui/app/screenelement/CommandTrigger;

    invoke-direct {v2, p0, p1}, Lmiui/app/screenelement/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromParentElement(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/CommandTrigger;
    .locals 1
    .parameter "parent"
    .parameter "root"

    .prologue
    .line 50
    const-string v0, "Trigger"

    invoke-static {p0, v0}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/app/screenelement/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/CommandTrigger;

    move-result-object v0

    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 10
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p1, :cond_8

    .line 65
    const-string v8, "target"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, target:Ljava/lang/String;
    const-string v8, "property"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, property:Ljava/lang/String;
    const-string v8, "value"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, value:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8, v7}, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->create(Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/ActionCommand$PropertyCommand;

    move-result-object v8

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mPropertyCommand:Lmiui/app/screenelement/ActionCommand$PropertyCommand;

    .line 73
    :cond_0
    const-string v8, "action"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mActionString:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 76
    const-string v8, "down"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 77
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Down:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    .line 91
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 92
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_8

    .line 93
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 94
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 95
    .local v4, item:Lorg/w3c/dom/Element;
    invoke-static {v4, p2}, Lmiui/app/screenelement/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/ActionCommand;

    move-result-object v2

    .line 96
    .local v2, command:Lmiui/app/screenelement/ActionCommand;
    if-eqz v2, :cond_2

    .line 97
    iget-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v2           #command:Lmiui/app/screenelement/ActionCommand;
    .end local v4           #item:Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v3           #i:I
    :cond_3
    const-string v8, "up"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 79
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Up:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 80
    :cond_4
    const-string v8, "double"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 81
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Double:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 82
    :cond_5
    const-string v8, "long"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 83
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Long:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 84
    :cond_6
    const-string v8, "cancel"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 85
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Cancel:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 87
    :cond_7
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Other:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 102
    .end local v0           #action:Ljava/lang/String;
    .end local v5           #property:Ljava/lang/String;
    .end local v6           #target:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_8
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 121
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 122
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->finish()V

    goto :goto_0

    .line 124
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method

.method public getAction()Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    return-object v0
.end method

.method public getActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mActionString:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 115
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 116
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->init()V

    goto :goto_0

    .line 118
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 127
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 128
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->pause()V

    goto :goto_0

    .line 130
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method

.method public perform()V
    .locals 3

    .prologue
    .line 105
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mPropertyCommand:Lmiui/app/screenelement/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mPropertyCommand:Lmiui/app/screenelement/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->perform()V

    .line 109
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 110
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->perform()V

    goto :goto_0

    .line 112
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 133
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 134
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->resume()V

    goto :goto_0

    .line 136
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method
