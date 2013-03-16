.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2$1;
.super Landroid/os/AsyncTask;
.source "MiuiAccountUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "args"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 172
    .local v0, wifiMgr:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 173
    const/4 v1, 0x0

    return-object v1
.end method
