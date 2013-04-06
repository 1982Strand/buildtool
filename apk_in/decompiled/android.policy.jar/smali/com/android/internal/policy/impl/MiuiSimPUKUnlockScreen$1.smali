.class Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;
.super Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;
.source "MiuiSimPUKUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->checkPuk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;-><init>(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V
    .locals 2
    .parameter "result"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1$1;-><init>(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$1;Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
