.class Lmiui/app/screenelement/elements/MusicControlScreenElement$4;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/elements/MusicControlScreenElement;->onButtonUp(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

.field final synthetic val$_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/elements/MusicControlScreenElement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    iput-object p2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->val$_name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 452
    const-string v0, "music_pause"

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->val$_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$900(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 454
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/elements/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1000(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 455
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #setter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v0, v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1102(Lmiui/app/screenelement/elements/MusicControlScreenElement;I)I

    .line 456
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    iget-boolean v0, v0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1200(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/util/IndexedNumberVariable;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 459
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 472
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1300(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1300(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$800(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$800(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 477
    return-void

    .line 460
    :cond_2
    const-string v0, "music_play"

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->val$_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/elements/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1000(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 462
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$900(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 463
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    const/4 v1, 0x2

    #setter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1102(Lmiui/app/screenelement/elements/MusicControlScreenElement;I)I

    .line 464
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    iget-boolean v0, v0, Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1200(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/util/IndexedNumberVariable;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 467
    :cond_3
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 468
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum()V
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$200(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V

    goto :goto_0
.end method
