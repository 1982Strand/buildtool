.class Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;
.super Ljava/util/ArrayList;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyRequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CustomFrequencyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/CustomFrequencyManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/CustomFrequencyManagerService;Lcom/android/server/CustomFrequencyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/CustomFrequencyManagerService;)V

    return-void
.end method


# virtual methods
.method addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V
    .locals 2
    .parameter "req"

    .prologue
    iget-object v1, p1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .local v0, index:I
    if-gez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method getIndex(Landroid/os/IBinder;)I
    .locals 3
    .parameter "binder"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v1

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .end local v0           #i:I
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method getNextMaxGPURequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .locals 8

    .prologue
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .local v5, size:I
    const/4 v2, -0x1

    .local v2, indexMaxGPURequest:I
    const/4 v3, -0x1

    .local v3, maxFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    move v3, v0

    move v2, v1

    .end local v0           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v0       #frequency:I
    :cond_1
    if-le v0, v3, :cond_0

    move v3, v0

    move v2, v1

    goto :goto_1

    .end local v0           #frequency:I
    :cond_2
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .local v4, maxGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .end local v4           #maxGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #maxGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMaxSysBusRequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .locals 8

    .prologue
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .local v5, size:I
    const/4 v2, -0x1

    .local v2, indexMaxSysBusRequest:I
    const/4 v3, -0x1

    .local v3, maxFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    move v3, v0

    move v2, v1

    .end local v0           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v0       #frequency:I
    :cond_1
    if-le v0, v3, :cond_0

    move v3, v0

    move v2, v1

    goto :goto_1

    .end local v0           #frequency:I
    :cond_2
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .local v4, maxSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .end local v4           #maxSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #maxSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method removeRequest(Landroid/os/IBinder;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .locals 2
    .parameter "binder"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
