.class public Lmiui/app/screenelement/SingleRootListener;
.super Ljava/lang/Object;
.source "SingleRootListener.java"

# interfaces
.implements Lmiui/app/screenelement/RendererController$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SingleRootListener"


# instance fields
.field private mRenderable:Lmiui/app/screenelement/RendererController$IRenderable;

.field private mRoot:Lmiui/app/screenelement/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RendererController$IRenderable;)V
    .locals 2
    .parameter "root"
    .parameter "renderable"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-nez p2, :cond_0

    .line 15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "renderable is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    iput-object p2, p0, Lmiui/app/screenelement/SingleRootListener;->mRenderable:Lmiui/app/screenelement/RendererController$IRenderable;

    .line 17
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/SingleRootListener;->setRoot(Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 18
    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmiui/app/screenelement/SingleRootListener;->mRenderable:Lmiui/app/screenelement/RendererController$IRenderable;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$IRenderable;->doRender()V

    .line 73
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/app/screenelement/SingleRootListener;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->finish()V

    .line 29
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/app/screenelement/SingleRootListener;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->init()V

    .line 34
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/SingleRootListener;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const-string v1, "SingleRootListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 46
    const-string v1, "SingleRootListener"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/app/screenelement/SingleRootListener;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->pause()V

    .line 53
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/app/screenelement/SingleRootListener;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->resume()V

    .line 58
    return-void
.end method

.method public setRoot(Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "root is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lmiui/app/screenelement/SingleRootListener;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 24
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/app/screenelement/SingleRootListener;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElementRoot;->tick(J)V

    .line 63
    return-void
.end method

.method public updateFramerate(J)J
    .locals 2
    .parameter "time"

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/app/screenelement/SingleRootListener;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElementRoot;->updateFramerate(J)J

    move-result-wide v0

    return-wide v0
.end method
