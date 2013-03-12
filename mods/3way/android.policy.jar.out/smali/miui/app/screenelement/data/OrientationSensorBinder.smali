.class public Lmiui/app/screenelement/data/OrientationSensorBinder;
.super Lmiui/app/screenelement/data/SensorBinder;
.source "OrientationSensorBinder.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "OrientationSensorBinder"


# instance fields
.field private mDirectionVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mTargetDirection:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 3
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 21
    new-instance v1, Lmiui/app/screenelement/data/OrientationSensorBinder$1;

    invoke-direct {v1, p0}, Lmiui/app/screenelement/data/OrientationSensorBinder$1;-><init>(Lmiui/app/screenelement/data/OrientationSensorBinder;)V

    iput-object v1, p0, Lmiui/app/screenelement/data/OrientationSensorBinder;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 42
    iget-object v1, p0, Lmiui/app/screenelement/data/OrientationSensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/data/OrientationSensorBinder;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 43
    const-string v1, "varDirection"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, varName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "OrientationSensorBinder"

    const-string v2, "no direction variable name"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {p2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v1, p0, Lmiui/app/screenelement/data/OrientationSensorBinder;->mDirectionVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/app/screenelement/data/OrientationSensorBinder;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lmiui/app/screenelement/data/OrientationSensorBinder;->mTargetDirection:F

    return v0
.end method

.method static synthetic access$002(Lmiui/app/screenelement/data/OrientationSensorBinder;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lmiui/app/screenelement/data/OrientationSensorBinder;->mTargetDirection:F

    return p1
.end method

.method static synthetic access$100(Lmiui/app/screenelement/data/OrientationSensorBinder;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/OrientationSensorBinder;->normalizeDegree(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lmiui/app/screenelement/data/OrientationSensorBinder;)Lmiui/app/screenelement/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/app/screenelement/data/OrientationSensorBinder;->mDirectionVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    return-object v0
.end method

.method private normalizeDegree(F)F
    .locals 2
    .parameter "degree"

    .prologue
    .line 52
    const/high16 v0, 0x4434

    add-float/2addr v0, p1

    const/high16 v1, 0x43b4

    rem-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected getListener()Landroid/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/app/screenelement/data/OrientationSensorBinder;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method protected getSensor()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/app/screenelement/data/OrientationSensorBinder;->mOrientationSensor:Landroid/hardware/Sensor;

    return-object v0
.end method
