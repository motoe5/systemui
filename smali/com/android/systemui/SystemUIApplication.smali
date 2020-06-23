.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/SysUiServiceProvider;


# instance fields
.field private final SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final SERVICES_PER_USER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SystemUIApplication;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SystemUIApplication;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SystemUIApplication;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/SystemUIApplication;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/SystemUIApplication;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 71
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Class;

    .line 72
    const-class v1, Lcom/android/systemui/Dependency;

    aput-object v1, v0, v3

    .line 73
    const-class v1, Lcom/android/systemui/util/NotificationChannels;

    aput-object v1, v0, v4

    .line 74
    const-class v1, Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;

    aput-object v1, v0, v5

    .line 75
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    aput-object v1, v0, v6

    .line 76
    const-class v1, Lcom/android/systemui/recents/Recents;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 77
    const-class v1, Lcom/android/systemui/volume/VolumeUI;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 78
    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 79
    const-class v1, Lcom/android/systemui/SystemBars;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 80
    const-class v1, Lcom/android/systemui/usb/StorageNotification;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 81
    const-class v1, Lcom/android/systemui/power/PowerUI;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 82
    const-class v1, Lcom/android/systemui/media/RingtonePlayer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 83
    const-class v1, Lcom/android/systemui/keyboard/KeyboardUI;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 84
    const-class v1, Lcom/android/systemui/pip/PipUI;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 85
    const-class v1, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 86
    const-class v1, Lcom/android/systemui/VendorServices;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 87
    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor$Service;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 88
    const-class v1, Lcom/android/systemui/LatencyTester;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 89
    const-class v1, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 90
    const-class v1, Lcom/android/systemui/RoundedCorners;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 71
    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    .line 97
    new-array v0, v6, [Ljava/lang/Class;

    .line 98
    const-class v1, Lcom/android/systemui/Dependency;

    aput-object v1, v0, v3

    .line 99
    const-class v1, Lcom/android/systemui/util/NotificationChannels;

    aput-object v1, v0, v4

    .line 100
    const-class v1, Lcom/android/systemui/recents/Recents;

    aput-object v1, v0, v5

    .line 97
    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    .line 63
    return-void
.end method

.method private startServicesIfNeeded([Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    .line 178
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v6, :cond_0

    .line 179
    return-void

    .line 182
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-nez v6, :cond_1

    .line 185
    const-string/jumbo v6, "1"

    const-string/jumbo v7, "sys.boot_completed"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    iput-boolean v9, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    .line 191
    :cond_1
    const-string/jumbo v6, "SystemUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting SystemUI services for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 192
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 191
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 192
    const-string/jumbo v8, "."

    .line 191
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    array-length v0, p1

    .line 194
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 195
    aget-object v1, p1, v4

    .line 198
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/systemui/SystemUIFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 199
    .local v5, "newService":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    :goto_1
    check-cast v6, Lcom/android/systemui/SystemUI;

    aput-object v6, v7, v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    iput-object p0, v6, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 207
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v7, v6, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 209
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->start()V

    .line 211
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v6, :cond_2

    .line 212
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 194
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v5

    .line 199
    goto :goto_1

    .line 202
    .end local v5    # "newService":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 203
    .local v3, "ex":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 200
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 201
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 215
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :cond_4
    const-class v6, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/plugins/PluginManager;

    .line 216
    new-instance v7, Lcom/android/systemui/SystemUIApplication$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/SystemUIApplication$2;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    .line 244
    const-class v8, Lcom/android/systemui/plugins/OverlayPlugin;

    .line 215
    invoke-interface {v6, v7, v8, v9}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 246
    iput-boolean v9, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    .line 247
    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 251
    iget-boolean v2, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v1, v2

    .line 253
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 254
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 117
    const v3, 0x7f12025c

    invoke-virtual {p0, v3}, Lcom/android/systemui/SystemUIApplication;->setTheme(I)V

    .line 119
    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 124
    new-instance v3, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 145
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    return-void

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    invoke-direct {p0, v3}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    goto :goto_0
.end method

.method startSecondaryUserServicesIfNeeded()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    .line 175
    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    .line 165
    return-void
.end method
