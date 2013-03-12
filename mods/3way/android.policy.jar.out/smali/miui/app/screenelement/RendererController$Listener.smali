.class public interface abstract Lmiui/app/screenelement/RendererController$Listener;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lmiui/app/screenelement/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/RendererController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract init()V
.end method

.method public abstract onTouch(Landroid/view/MotionEvent;)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract tick(J)V
.end method

.method public abstract updateFramerate(J)J
.end method
