.class public Lmiui/app/screenelement/SoundManager$SoundOptions;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundOptions"
.end annotation


# instance fields
.field public mKeepCur:Z

.field public mLoop:Z

.field public mVolume:F


# direct methods
.method public constructor <init>(ZZF)V
    .locals 3
    .parameter "keepCur"
    .parameter "loop"
    .parameter "volume"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmiui/app/screenelement/SoundManager$SoundOptions;->mKeepCur:Z

    iput-boolean p2, p0, Lmiui/app/screenelement/SoundManager$SoundOptions;->mLoop:Z

    cmpg-float v0, p3, v1

    if-gez v0, :cond_0

    iput v1, p0, Lmiui/app/screenelement/SoundManager$SoundOptions;->mVolume:F

    :goto_0
    return-void

    :cond_0
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    iput v2, p0, Lmiui/app/screenelement/SoundManager$SoundOptions;->mVolume:F

    goto :goto_0

    :cond_1
    iput p3, p0, Lmiui/app/screenelement/SoundManager$SoundOptions;->mVolume:F

    goto :goto_0
.end method
