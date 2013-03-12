.class Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;
.super Ljava/lang/Object;
.source "LockScreenRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryInfo"
.end annotation


# instance fields
.field public batteryLevel:I

.field public pluggedIn:Z

.field public showBatteryInfo:Z


# direct methods
.method public constructor <init>(ZZI)V
    .locals 0
    .parameter "s"
    .parameter "p"
    .parameter "l"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-boolean p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->showBatteryInfo:Z

    .line 130
    iput-boolean p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->pluggedIn:Z

    .line 131
    iput p3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->batteryLevel:I

    .line 132
    return-void
.end method
