.class public Lcom/android/systemui/doze/DozeFactory;
.super Ljava/lang/Object;
.source "DozeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHostDelegate;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;)Lcom/android/systemui/doze/DozeTriggers;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "host"    # Lcom/android/systemui/doze/DozeHostDelegate;
    .param p4, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .param p5, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p8, "machine"    # Lcom/android/systemui/doze/DozeMachine;

    .prologue
    .line 64
    const/4 v9, 0x1

    .line 65
    .local v9, "allowPulseTriggers":Z
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers;

    move-object v1, p1

    move-object/from16 v2, p8

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHostDelegate;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Z)V

    return-object v0
.end method

.method private createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHostDelegate;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/systemui/doze/DozeHostDelegate;
    .param p3, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p4, "machine"    # Lcom/android/systemui/doze/DozeMachine;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "alarmManager"    # Landroid/app/AlarmManager;

    .prologue
    .line 72
    new-instance v0, Lcom/android/systemui/doze/DozeUi;

    move-object v1, p1

    move-object v2, p6

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHostDelegate;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHostDelegate;
    .locals 1
    .param p0, "service"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 81
    new-instance v0, Lcom/android/systemui/doze/DozeHostDelegate;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeHostDelegate;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public assembleMachine(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeMachine;
    .locals 19
    .param p1, "dozeService"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 37
    move-object/from16 v17, p1

    .line 38
    .local v17, "context":Landroid/content/Context;
    const-class v1, Landroid/hardware/SensorManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 39
    .local v3, "sensorManager":Landroid/hardware/SensorManager;
    const-class v1, Landroid/app/AlarmManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/AlarmManager;

    .line 41
    .local v16, "alarmManager":Landroid/app/AlarmManager;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHostDelegate;

    move-result-object v4

    .line 42
    .local v4, "host":Lcom/android/systemui/doze/DozeHostDelegate;
    new-instance v5, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 43
    .local v5, "config":Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    new-instance v6, Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    .line 44
    .local v6, "params":Lcom/android/systemui/statusbar/phone/DozeParameters;
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 45
    .local v7, "handler":Landroid/os/Handler;
    const-string/jumbo v1, "Doze"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v8

    .line 47
    .local v8, "wakeLock":Lcom/android/systemui/util/wakelock/WakeLock;
    new-instance v9, Lcom/android/systemui/doze/DozeMachine;

    .line 48
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v1

    .line 47
    invoke-direct {v9, v1, v5, v8}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .line 51
    .local v9, "machine":Lcom/android/systemui/doze/DozeMachine;
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/android/systemui/doze/DozeMachine$Part;

    move-object/from16 v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 52
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/doze/DozeFactory;->createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHostDelegate;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;)Lcom/android/systemui/doze/DozeTriggers;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v18, v2

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v4

    move-object v13, v8

    move-object v14, v9

    move-object v15, v7

    .line 54
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/doze/DozeFactory;->createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHostDelegate;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v18, v2

    .line 51
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/doze/DozeMachine;->setParts([Lcom/android/systemui/doze/DozeMachine$Part;)V

    .line 57
    return-object v9
.end method
