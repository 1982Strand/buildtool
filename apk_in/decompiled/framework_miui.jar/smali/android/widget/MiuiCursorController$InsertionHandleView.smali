.class Landroid/widget/MiuiCursorController$InsertionHandleView;
.super Landroid/widget/MiuiCursorController$MiuiHandleView;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xbb8

.field private static final DELAY_WHEN_HANDLE_INVISIBLE:I = 0xc8

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field mDelayed:Z

.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/MiuiCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/MiuiCursorController;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "tv"
    .parameter "drawable"

    .prologue
    iput-object p1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->this$0:Landroid/widget/MiuiCursorController;

    invoke-direct {p0, p1, p2, p3, p3}, Landroid/widget/MiuiCursorController$MiuiHandleView;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private hideAfterDelay(I)V
    .locals 4
    .parameter "delay"

    .prologue
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$InsertionHandleView;->removeHiderCallback()V

    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/MiuiCursorController$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/MiuiCursorController$InsertionHandleView$1;-><init>(Landroid/widget/MiuiCursorController$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDelayed:Z

    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDelayed:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "MiuiHandleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hide the HandleView and remove from PositionListener, mVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDelayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDelayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->hide()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "MiuiHandleView"

    const-string v1, "To hide the HandleView when invisible, just delay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Landroid/widget/MiuiCursorController$InsertionHandleView;->hideAfterDelay(I)V

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onDetached()V

    invoke-direct {p0}, Landroid/widget/MiuiCursorController$InsertionHandleView;->removeHiderCallback()V

    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onHandleMoved()V

    invoke-direct {p0}, Landroid/widget/MiuiCursorController$InsertionHandleView;->removeHiderCallback()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDownPositionY:F

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xbb8

    invoke-direct {p0, v1}, Landroid/widget/MiuiCursorController$InsertionHandleView;->hideAfterDelay(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->show()V

    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasMagnifierController()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mVisible:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDelayed:Z

    :goto_0
    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mVisible:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Landroid/widget/MiuiCursorController$InsertionHandleView;->hideAfterDelay(I)V

    :cond_0
    return-void

    :cond_1
    iput-boolean v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDelayed:Z

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/MiuiCursorController$InsertionHandleView;->positionAtCursorOffset(IZ)V

    return-void
.end method

.method public updateSelection(I)V
    .locals 1
    .parameter "offset"

    .prologue
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p1}, Landroid/widget/TextView;->setTextSelectionWrap(II)V

    return-void
.end method
