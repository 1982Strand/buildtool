.class Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;
.super Landroid/widget/LinearLayout;
.source "FaceVoiceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FaceVoiceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceUnlockView"
.end annotation


# instance fields
.field private mErrorShowed:Z

.field private mMainView:Landroid/widget/RelativeLayout;

.field private mMsg:Landroid/widget/TextView;

.field private mMsg2:Landroid/widget/TextView;

.field private mResId:I

.field private mStatusImg:Landroid/widget/ImageView;

.field private mVolumeImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Landroid/content/Context;Landroid/content/res/Configuration;Z)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "configuration"
    .parameter "isPattern"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mResId:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mErrorShowed:Z

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/LayoutInflater;
    if-eqz p4, :cond_1

    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    const v1, 0x109008f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    const v1, 0x1020384

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    const v1, 0x1020385

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x1020388

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x1020387

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x1020386

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView$1;-><init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;Lcom/android/internal/policy/impl/FaceVoiceUnlock;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    const v1, 0x109008e

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :cond_1
    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

    const v1, 0x1090091

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :cond_2
    const v1, 0x1090090

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isErrorShowed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mErrorShowed:Z

    return v0
.end method

.method public setErrorMsg()V
    .locals 2

    .prologue
    const-string v0, "FULLockscreen"

    const-string v1, "setErrorMsg() mErrorShowed=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mErrorShowed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x10406f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x1080427

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setPrepareMsg()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mErrorShowed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x10406f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x10406f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x1080425

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setRecognitionMsg()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x10406f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x1080425

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSuccessMsg()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x10406f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x1080426

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public updateVolumeBg(I)V
    .locals 1
    .parameter "resId"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mResId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mResId:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
