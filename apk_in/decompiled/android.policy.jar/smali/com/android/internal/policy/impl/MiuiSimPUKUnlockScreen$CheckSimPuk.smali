.class abstract Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;
.super Ljava/lang/Thread;
.source "MiuiSimPUKUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field protected final mPin:Ljava/lang/String;

.field protected final mPuk:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "puk"
    .parameter "pin"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;->mPin:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;->mPuk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V
.end method

.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->mSubscription:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/UnlockSimHelper;->checkPuk(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiSimPUKUnlockScreen$CheckSimPuk;->onSimLockChangedResponse(Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V

    return-void
.end method
