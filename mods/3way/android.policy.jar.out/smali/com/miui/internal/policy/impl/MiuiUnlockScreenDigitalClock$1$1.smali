.class Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1$1;
.super Ljava/lang/Object;
.source "MiuiUnlockScreenDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1;


# direct methods
.method constructor <init>(Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1$1;->this$1:Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1$1;->this$1:Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1;

    iget-object v0, v0, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock$1;->this$0:Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;

    #calls: Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;->access$100(Lcom/miui/internal/policy/impl/MiuiUnlockScreenDigitalClock;)V

    .line 62
    return-void
.end method
