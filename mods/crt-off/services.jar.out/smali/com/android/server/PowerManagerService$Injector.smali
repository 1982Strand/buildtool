.class Lcom/android/server/PowerManagerService$Injector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static FALSE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/PowerManagerService$Injector;->FALSE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static animateTo(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;III)V
    .locals 2
    .parameter "service"
    .parameter "animator"
    .parameter "target"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    .line 114
    monitor-enter p1

    .line 115
    :try_start_0
    iput p2, p1, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iput p2, p1, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    .line 116
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->getScreenBrightnessHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static sleepIfProximitySensorActive(Lcom/android/server/PowerManagerService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->getProximitySensorActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->getPowerState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService;->callGoToSleepLocked(JI)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->setProxIgnoredBecauseScreenTurnedOff(Z)V

    .line 111
    :cond_0
    return-void
.end method
