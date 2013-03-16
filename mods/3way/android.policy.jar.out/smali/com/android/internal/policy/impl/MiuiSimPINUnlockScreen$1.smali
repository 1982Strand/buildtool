.class Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;
.super Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$CheckSimPin;
.source "MiuiSimPINUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1$1;-><init>(Lcom/android/internal/policy/impl/MiuiSimPINUnlockScreen$1;Lcom/android/internal/policy/impl/UnlockSimHelper$UnlockSimResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method
