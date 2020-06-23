.class Lcom/android/systemui/doze/DozeSensors$ProxSensor;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxSensor"
.end annotation


# instance fields
.field mCurrentlyFar:Ljava/lang/Boolean;

.field mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeSensors;
    .param p2, "-this1"    # Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_doze_DozeSensors$ProxSensor_6021()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get5(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 202
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x0

    .line 196
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get5(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method setRegistered(Z)V
    .locals 4
    .param p1, "register"    # Z

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    if-ne v0, p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get4(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$BM21sPB1vu7O8NCmlw98aiyQGSU;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$Lambda$BM21sPB1vu7O8NCmlw98aiyQGSU;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void

    .line 183
    :cond_0
    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get7(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->-get7(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->-get4(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    .line 184
    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get7(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    goto :goto_0
.end method
