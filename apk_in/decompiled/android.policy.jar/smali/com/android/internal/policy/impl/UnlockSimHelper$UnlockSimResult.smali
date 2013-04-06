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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->unlockSuccess:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;->attemptsRemaining:I

    return-void
.end method
