.class public Lmiui/app/screenelement/data/BroadcastBinder;
.super Lmiui/app/screenelement/data/VariableBinder;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/BroadcastBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BroadcastBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "BroadcastBinder"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mTrigger:Lmiui/app/screenelement/CommandTrigger;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/data/BroadcastBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 70
    invoke-direct {p0, p2}, Lmiui/app/screenelement/data/VariableBinder;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Lmiui/app/screenelement/data/BroadcastBinder$1;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/data/BroadcastBinder$1;-><init>(Lmiui/app/screenelement/data/BroadcastBinder;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/BroadcastBinder;->load(Lorg/w3c/dom/Element;)V

    .line 72
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    const-string v0, "BroadcastBinder"

    const-string v1, "ContentProviderBinder node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mName:Ljava/lang/String;

    .line 130
    const-string v0, "action"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mAction:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "BroadcastBinder"

    const-string v1, "no action in broadcast binder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no action in broadcast binder element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    .line 137
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-static {p1, v0}, Lmiui/app/screenelement/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    .line 138
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/BroadcastBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 139
    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 142
    const-string v0, "Variable"

    new-instance v1, Lmiui/app/screenelement/data/BroadcastBinder$2;

    invoke-direct {v1, p0}, Lmiui/app/screenelement/data/BroadcastBinder$2;-><init>(Lmiui/app/screenelement/data/BroadcastBinder;)V

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/util/Utils$XmlTraverseListener;)V

    .line 149
    return-void
.end method

.method private updateVariables(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 156
    if-nez p1, :cond_1

    .line 193
    :cond_0
    return-void

    .line 160
    :cond_1
    const-string v6, "BroadcastBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVariables: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v6, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;

    .line 164
    .local v2, v:Lmiui/app/screenelement/data/BroadcastBinder$Variable;
    const/4 v5, 0x0

    .line 165
    .local v5, valueStr:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 166
    .local v3, value:D
    invoke-virtual {v2}, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->isString()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    iget-object v6, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    :goto_1
    invoke-virtual {v2}, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->isString()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 181
    iget-object v7, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    if-nez v5, :cond_8

    iget-object v6, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v6}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 189
    :goto_3
    const-string v6, "name:%s type:%s value:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mName:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mType:Ljava/lang/String;

    aput-object v8, v7, v10

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, info:Ljava/lang/String;
    const-string v6, "BroadcastBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVariables: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v1           #info:Ljava/lang/String;
    :cond_2
    const-string v6, "double"

    iget-object v7, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    iget-object v6, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v7, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mDefNumberValue:D

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    goto :goto_1

    .line 170
    :cond_3
    const-string v6, "float"

    iget-object v7, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 171
    iget-object v6, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v7, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    float-to-double v3, v6

    goto :goto_1

    .line 172
    :cond_4
    const-string v6, "int"

    iget-object v7, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "integer"

    iget-object v7, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 173
    :cond_5
    iget-object v6, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v7, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-double v3, v6

    goto/16 :goto_1

    .line 174
    :cond_6
    const-string v6, "long"

    iget-object v7, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 175
    iget-object v6, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v7, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-long v7, v7

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-double v3, v6

    goto/16 :goto_1

    .line 177
    :cond_7
    const-string v6, "BroadcastBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalide type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    move-object v6, v5

    .line 181
    goto/16 :goto_2

    .line 183
    :cond_9
    iget-object v6, v2, Lmiui/app/screenelement/data/BroadcastBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v6, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 185
    const-string v6, "%f"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3
.end method


# virtual methods
.method protected addVariable(Lmiui/app/screenelement/data/BroadcastBinder$Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 152
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->finish()V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lmiui/app/screenelement/data/BroadcastBinder;->unregister()V

    .line 211
    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lmiui/app/screenelement/data/BroadcastBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->init()V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lmiui/app/screenelement/data/BroadcastBinder;->register()V

    .line 204
    return-void
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "object"

    .prologue
    .line 91
    invoke-direct {p0, p2}, Lmiui/app/screenelement/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 92
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->perform()V

    .line 95
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->requestUpdate()V

    .line 96
    return-void
.end method

.method protected onRegister()V
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lmiui/app/screenelement/data/BroadcastBinder;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lmiui/app/screenelement/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lmiui/app/screenelement/data/BroadcastBinder;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->pause()V

    .line 217
    :cond_0
    return-void
.end method

.method protected register()V
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lmiui/app/screenelement/data/BroadcastBinder;->onRegister()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mRegistered:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->resume()V

    .line 223
    :cond_0
    return-void
.end method

.method protected unregister()V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mRegistered:Z

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/app/screenelement/data/BroadcastBinder;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/data/BroadcastBinder;->mRegistered:Z

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_1
.end method
