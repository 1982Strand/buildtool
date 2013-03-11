.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.super Lmiui/app/screenelement/elements/AdvancedSlider;
.source "UnlockerScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_UnlockerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Unlocker"


# instance fields
.field private mAlwaysShow:Z

.field private mDelay:I

.field private mNoUnlock:Z

.field private mUnlockingHide:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 2
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 30
    const-string v0, "alwaysShow"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    .line 33
    const-string v0, "noUnlock"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mNoUnlock:Z

    .line 34
    const-string v0, "delay"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mDelay:I

    .line 35
    return-void
.end method

.method private getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    return-object v0
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 48
    if-eq p1, p0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    .line 50
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->finish()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    .line 41
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancel()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->onCancel()V

    .line 74
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 75
    return-void
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 3
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    .line 82
    iget-boolean v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mNoUnlock:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->pokeWakelock()V

    .line 84
    const/4 v1, 0x0

    .line 93
    :goto_0
    return v1

    .line 88
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v1

    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mDelay:I

    invoke-virtual {v1, p2, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->unlocked(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "LockScreen_UnlockerScreenElement"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->onStart()V

    .line 63
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 64
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->pokeWakelock()V

    .line 65
    return-void
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 53
    if-eq p1, p0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    .line 56
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->resetInner()V

    .line 58
    :cond_0
    return-void
.end method
