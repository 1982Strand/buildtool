.class public Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;
.super Ljava/lang/Object;
.source "UnlockSimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnlockSimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnlockSimResult"
.end annotation


# instance fields
.field attemptsRemaining:I

.field unlockSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->unlockSuccess:Z

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->attemptsRemaining:I

    .line 19
    return-void
.end method
