.class Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
.super Landroid/hardware/TriggerEventListener;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerSensor"
.end annotation


# instance fields
.field final mConfigured:Z

.field private mDisabled:Z

.field final mPulseReason:I

.field private mRegistered:Z

.field private mRequested:Z

.field final mSensor:Landroid/hardware/Sensor;

.field final mSetting:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeSensors;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "configured"    # Z
    .param p5, "pulseReason"    # I

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 216
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    .line 217
    iput-object p3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 218
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 219
    iput p5, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    .line 220
    return-void
.end method

.method private enabledBySetting()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 247
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    return v0

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->-get6(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 251
    const/4 v4, -0x2

    .line 250
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/16 v6, 0x2c

    const/4 v2, 0x0

    .line 293
    if-nez p1, :cond_0

    return-object v2

    .line 294
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TriggerEvent["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    iget-wide v4, p1, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 294
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    iget-object v3, p1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p1, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v2, :cond_1

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Landroid/hardware/TriggerEvent;->values:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 299
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/TriggerEvent;->values:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_doze_DozeSensors$TriggerSensor_9261(Landroid/hardware/TriggerEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/4 v5, 0x0

    .line 267
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DozeSensors"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTrigger: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    const/4 v0, 0x0

    .line 269
    .local v0, "sensorPerformsProxCheck":Z
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x19

    if-ne v2, v3, :cond_1

    .line 270
    iget-object v2, p1, Landroid/hardware/TriggerEvent;->values:[F

    aget v2, v2, v5

    float-to-int v1, v2

    .line 272
    .local v1, "subType":I
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->-get2(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x19b

    .line 271
    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 275
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->-get3(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupSubtypePerformsProxCheck(I)Z

    move-result v0

    .line 278
    .end local v0    # "sensorPerformsProxCheck":Z
    .end local v1    # "subType":I
    :cond_1
    iput-boolean v5, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 279
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->-get1(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IZ)V

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    return-void
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get4(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->-get10(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/doze/-$Lambda$BM21sPB1vu7O8NCmlw98aiyQGSU$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/doze/-$Lambda$BM21sPB1vu7O8NCmlw98aiyQGSU$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method

.method public registerSettingsObserver(Landroid/database/ContentObserver;)V
    .locals 5
    .param p1, "settingsObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get6(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->-get9(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;

    move-result-object v2

    .line 287
    const/4 v3, 0x0

    .line 288
    const/4 v4, -0x1

    .line 286
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 290
    :cond_0
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 230
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    .line 232
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listen"    # Z

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 224
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    const-string/jumbo v1, ", mRequested="

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 258
    const-string/jumbo v1, ", mDisabled="

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 258
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    const-string/jumbo v1, ", mConfigured="

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    const-string/jumbo v1, ", mSensor="

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    const-string/jumbo v1, "}"

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateListener()V
    .locals 4

    .prologue
    .line 235
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 236
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->enabledBySetting()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->-get7(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 238
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "DozeSensors"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2
    :goto_0
    return-void

    .line 239
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->-get7(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    .line 241
    .local v0, "rt":Z
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->-get0()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "DozeSensors"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    goto :goto_0
.end method
