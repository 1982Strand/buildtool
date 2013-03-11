.class Lcom/android/server/location/GpsLocationProvider$Injector;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendUidExtra(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 3
    .parameter "provider"
    .parameter "intent"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->getNavigating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->getClientUids()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->getClientUids()Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    :cond_0
    return-void
.end method
