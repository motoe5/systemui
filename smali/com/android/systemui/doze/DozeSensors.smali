.class public Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeSensors$1;,
        Lcom/android/systemui/doze/DozeSensors$Callback;,
        Lcom/android/systemui/doze/DozeSensors$ProxSensor;,
        Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private final mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mProxCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/doze/DozeSensors;)[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "dozeParameters"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p4, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .param p5, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p6, "callback"    # Lcom/android/systemui/doze/DozeSensors$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/hardware/SensorManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/internal/hardware/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeSensors$Callback;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p7, "proxCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$1;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 74
    iput-object p4, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 75
    iput-object p5, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 76
    iput-object p7, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    .line 79
    const/4 v0, 0x3

    new-array v6, v0, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 80
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 81
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 83
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v4

    .line 82
    const/4 v3, 0x0

    .line 84
    const/4 v5, 0x2

    move-object v1, p0

    .line 80
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZI)V

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 85
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 87
    const-string/jumbo v3, "doze_pulse_on_pick_up"

    .line 88
    invoke-virtual {p4}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v4

    .line 89
    const/4 v5, 0x3

    move-object v1, p0

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x1

    aput-object v0, v6, v1

    .line 90
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 91
    invoke-virtual {p4}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    .line 92
    const-string/jumbo v3, "doze_pulse_on_double_tap"

    .line 93
    const/4 v4, 0x1

    .line 94
    const/4 v5, 0x4

    move-object v1, p0

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZI)V

    const/4 v1, 0x2

    aput-object v0, v6, v1

    .line 79
    iput-object v6, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 97
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    .line 98
    iput-object p6, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    .line 99
    return-void
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    return-object v5

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 106
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 107
    .local v0, "s":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    return-object v0

    .line 111
    .end local v0    # "s":Landroid/hardware/Sensor;
    :cond_2
    return-object v5
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 163
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 164
    .local v0, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    const-string/jumbo v4, "Sensor: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_0
    return-void
.end method

.method public onUserSwitched()V
    .locals 4

    .prologue
    .line 136
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 137
    .local v0, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_0
    return-void
.end method

.method public reregisterAllSensors()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 128
    .local v0, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 131
    .restart local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_1
    return-void
.end method

.method public setDisableSensorsInterferingWithProximity(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setDisabled(Z)V

    .line 159
    return-void
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listen"    # Z

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 116
    .local v0, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->registerSettingsObserver(Landroid/database/ContentObserver;)V

    .line 115
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_1
    if-nez p1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 124
    :cond_2
    return-void
.end method

.method public setProxListening(Z)V
    .locals 1
    .param p1, "listen"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRegistered(Z)V

    .line 143
    return-void
.end method
