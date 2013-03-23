.class public abstract Lmiui/app/screenelement/data/SensorBinder;
.super Lmiui/app/screenelement/data/VariableBinder;
.source "SensorBinder.java"


# static fields
.field private static final DEFAULT_DELAY:I = 0x30d40


# instance fields
.field protected mRate:I

.field private mRegistered:Z

.field protected mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 2
    .parameter "node"
    .parameter "root"

    .prologue
    invoke-direct {p0, p2}, Lmiui/app/screenelement/data/VariableBinder;-><init>(Lmiui/app/screenelement/ScreenElementRoot;)V

    invoke-virtual {p0}, Lmiui/app/screenelement/data/SensorBinder;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/app/screenelement/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v0, "rate"

    const v1, 0x30d40

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/data/SensorBinder;->mRate:I

    return-void
.end method

.method private registerListener()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lmiui/app/screenelement/data/SensorBinder;->mRegistered:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lmiui/app/screenelement/data/SensorBinder;->getListener()Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/app/screenelement/data/SensorBinder;->getSensor()Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lmiui/app/screenelement/data/SensorBinder;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/data/SensorBinder;->mRegistered:Z

    goto :goto_0
.end method

.method private unregisterListener()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lmiui/app/screenelement/data/SensorBinder;->mRegistered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lmiui/app/screenelement/data/SensorBinder;->getListener()Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/data/SensorBinder;->mRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/data/SensorBinder;->unregisterListener()V

    return-void
.end method

.method protected abstract getListener()Landroid/hardware/SensorEventListener;
.end method

.method protected abstract getSensor()Landroid/hardware/Sensor;
.end method

.method public init()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/data/SensorBinder;->registerListener()V

    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/data/SensorBinder;->unregisterListener()V

    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/data/SensorBinder;->registerListener()V

    return-void
.end method
