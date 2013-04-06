.class abstract Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$CheckSimPin;
.super Ljava/lang/Thread;
.source "MiuiSimPINUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pin"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V
.end method

.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockSimHelper;->checkPin(Ljava/lang/String;)Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$CheckSimPin;->onSimLockChangedResponse(Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V

    return-void
.end method
