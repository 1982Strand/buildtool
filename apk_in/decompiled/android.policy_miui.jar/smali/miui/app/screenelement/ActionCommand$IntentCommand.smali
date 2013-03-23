.class Lmiui/app/screenelement/ActionCommand$IntentCommand;
.super Lmiui/app/screenelement/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"

.field private static sComponentNameMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mTask:Lmiui/app/screenelement/util/Task;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "root"
    .parameter "ele"

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ActionCommand;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    invoke-static {p2}, Lmiui/app/screenelement/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    return-void
.end method

.method static tryReplaceComponentName(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lmiui/app/screenelement/ActionCommand$IntentCommand;->sComponentNameMapping:Ljava/util/Map;

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lmiui/app/screenelement/ActionCommand$IntentCommand;->sComponentNameMapping:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x606000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, items:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v3

    if-ge v1, v8, :cond_1

    aget-object v8, v3, v1

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, item:[Ljava/lang/String;
    array-length v8, v2

    if-ne v8, v12, :cond_0

    const-string v8, "IntentCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "component name map: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lmiui/app/screenelement/ActionCommand$IntentCommand;->sComponentNameMapping:Ljava/util/Map;

    aget-object v9, v2, v7

    aget-object v10, v2, v6

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #item:[Ljava/lang/String;
    .end local v3           #items:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    sget-object v8, Lmiui/app/screenelement/ActionCommand$IntentCommand;->sComponentNameMapping:Ljava/util/Map;

    const-string v9, "%s/%s"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, mapName:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, names:[Ljava/lang/String;
    array-length v8, v5

    if-ne v8, v12, :cond_2

    new-instance v8, Landroid/content/ComponentName;

    aget-object v7, v5, v7

    aget-object v9, v5, v6

    invoke-direct {v8, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .end local v4           #mapName:Ljava/lang/String;
    .end local v5           #names:[Ljava/lang/String;
    :goto_1
    return v6

    :cond_2
    move v6, v7

    goto :goto_1
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e1:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lmiui/app/screenelement/ActionCommand$IntentCommand;->tryReplaceComponentName(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iput-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "ActionCommand"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public init()V
    .locals 5

    .prologue
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    .local v0, configTask:Lmiui/app/screenelement/util/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v1, v1, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v1, v1, Lmiui/app/screenelement/util/Task;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v1, v1, Lmiui/app/screenelement/util/Task;->category:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v1, v1, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v1, v1, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v3, v3, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v4, v4, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_4
    return-void
.end method
