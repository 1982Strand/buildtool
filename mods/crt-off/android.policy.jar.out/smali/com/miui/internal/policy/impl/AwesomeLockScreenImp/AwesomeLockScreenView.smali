.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;
.super Lmiui/app/screenelement/MiAdvancedView;
.source "AwesomeLockScreenView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AwesomeLockScreenView"

.field private static final MOVING_THRESHOLD:I = 0x19


# instance fields
.field private mLastTouchTime:J

.field private mPreX:I

.field private mPreY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 1
    .parameter "context"
    .parameter "root"

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setFocusable(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setFocusableInTouchMode(Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;Lmiui/app/screenelement/RenderThread;)V
    .locals 1
    .parameter "context"
    .parameter "root"
    .parameter "t"

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RenderThread;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setFocusable(Z)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setFocusableInTouchMode(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 36
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 37
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 38
    .local v4, y:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mLastTouchTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 40
    iget v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPreX:I

    sub-int v1, v3, v5

    .line 41
    .local v1, dx:I
    iget v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPreY:I

    sub-int v2, v4, v5

    .line 42
    .local v2, dy:I
    mul-int v5, v1, v1

    mul-int v6, v2, v2

    add-int/2addr v5, v6

    const/16 v6, 0x19

    if-le v5, v6, :cond_0

    .line 43
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    check-cast v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->pokeWakelock()V

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mLastTouchTime:J

    .line 45
    iput v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPreX:I

    .line 46
    iput v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPreY:I

    .line 54
    .end local v1           #dx:I
    .end local v2           #dy:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lmiui/app/screenelement/MiAdvancedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 49
    :cond_1
    if-nez v0, :cond_0

    .line 50
    iput v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPreX:I

    .line 51
    iput v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPreY:I

    goto :goto_0
.end method

.method public rebindRoot()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->setRenderController(Lmiui/app/screenelement/RendererController;)V

    .line 60
    return-void
.end method
