.class Lmiui/app/screenelement/data/OrientationSensorBinder$1;
.super Ljava/lang/Object;
.source "OrientationSensorBinder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/OrientationSensorBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/data/OrientationSensorBinder;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/data/OrientationSensorBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lmiui/app/screenelement/data/OrientationSensorBinder$1;->this$0:Lmiui/app/screenelement/data/OrientationSensorBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 33
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 25
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, -0x4080

    mul-float v0, v1, v2

    .line 26
    .local v0, direction:F
    iget-object v1, p0, Lmiui/app/screenelement/data/OrientationSensorBinder$1;->this$0:Lmiui/app/screenelement/data/OrientationSensorBinder;

    iget-object v2, p0, Lmiui/app/screenelement/data/OrientationSensorBinder$1;->this$0:Lmiui/app/screenelement/data/OrientationSensorBinder;

    #calls: Lmiui/app/screenelement/data/OrientationSensorBinder;->normalizeDegree(F)F
    invoke-static {v2, v0}, Lmiui/app/screenelement/data/OrientationSensorBinder;->access$100(Lmiui/app/screenelement/data/OrientationSensorBinder;F)F

    move-result v2

    #setter for: Lmiui/app/screenelement/data/OrientationSensorBinder;->mTargetDirection:F
    invoke-static {v1, v2}, Lmiui/app/screenelement/data/OrientationSensorBinder;->access$002(Lmiui/app/screenelement/data/OrientationSensorBinder;F)F

    .line 27
    iget-object v1, p0, Lmiui/app/screenelement/data/OrientationSensorBinder$1;->this$0:Lmiui/app/screenelement/data/OrientationSensorBinder;

    #getter for: Lmiui/app/screenelement/data/OrientationSensorBinder;->mDirectionVar:Lmiui/app/screenelement/util/IndexedNumberVariable;
    invoke-static {v1}, Lmiui/app/screenelement/data/OrientationSensorBinder;->access$200(Lmiui/app/screenelement/data/OrientationSensorBinder;)Lmiui/app/screenelement/util/IndexedNumberVariable;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/data/OrientationSensorBinder$1;->this$0:Lmiui/app/screenelement/data/OrientationSensorBinder;

    #getter for: Lmiui/app/screenelement/data/OrientationSensorBinder;->mTargetDirection:F
    invoke-static {v2}, Lmiui/app/screenelement/data/OrientationSensorBinder;->access$000(Lmiui/app/screenelement/data/OrientationSensorBinder;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 28
    iget-object v1, p0, Lmiui/app/screenelement/data/OrientationSensorBinder$1;->this$0:Lmiui/app/screenelement/data/OrientationSensorBinder;

    invoke-virtual {v1}, Lmiui/app/screenelement/data/OrientationSensorBinder;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    .line 29
    return-void
.end method
