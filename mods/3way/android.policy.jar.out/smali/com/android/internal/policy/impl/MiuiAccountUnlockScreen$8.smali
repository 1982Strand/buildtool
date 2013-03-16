.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;
.super Ljava/lang/Object;
.source "MiuiAccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->updateLockDevice()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    .line 626
    return-void
.end method
