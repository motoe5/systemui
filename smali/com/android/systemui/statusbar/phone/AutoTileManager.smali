.class public Lcom/android/systemui/statusbar/phone/AutoTileManager;
.super Ljava/lang/Object;
.source "AutoTileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/AutoTileManager$1;,
        Lcom/android/systemui/statusbar/phone/AutoTileManager$2;,
        Lcom/android/systemui/statusbar/phone/AutoTileManager$3;,
        Lcom/android/systemui/statusbar/phone/AutoTileManager$4;,
        Lcom/android/systemui/statusbar/phone/AutoTileManager$5;,
        Lcom/android/systemui/statusbar/phone/AutoTileManager$6;
    }
.end annotation


# instance fields
.field private mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field final mNightDisplayCallback:Lcom/android/internal/app/NightDisplayController$Callback;

.field private final mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

.field private final mProjectorModReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/SecureSetting;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProjectorModReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    .line 124
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 143
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    .line 155
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 169
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    .line 168
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 194
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProjectorModReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 64
    new-instance v1, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 65
    const-string/jumbo v0, "QsHotspotAdded"

    invoke-static {p1, v0, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-class v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 68
    :cond_0
    const-string/jumbo v0, "QsDataSaverAdded"

    invoke-static {p1, v0, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addCallback(Ljava/lang/Object;)V

    .line 71
    :cond_1
    const-string/jumbo v0, "QsInvertColorsAdded"

    invoke-static {p1, v0, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$7;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 73
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 72
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AutoTileManager$7;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 85
    :cond_2
    const-string/jumbo v0, "QsWorkAdded"

    invoke-static {p1, v0, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    const-class v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->addCallback(Ljava/lang/Object;)V

    .line 89
    :cond_3
    const-string/jumbo v0, "QsNightDisplayAdded"

    invoke-static {p1, v0, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 91
    const-class v0, Lcom/android/internal/app/NightDisplayController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/NightDisplayController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 94
    :cond_4
    const-string/jumbo v0, "QsMotoModAdded"

    invoke-static {p1, v0, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 96
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.motorola.mod.action.MOD_ATTACH"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.motorola.mod.permission.MOD_INTERNAL"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    :cond_5
    const-string/jumbo v0, "QsProjectorModAdded"

    invoke-static {p1, v0, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProjectorModReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 103
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.motorola.mod.action.MOD_ATTACH"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.motorola.mod.permission.MOD_INTERNAL"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    :cond_6
    const-string/jumbo v0, "QsDolbyAdded"

    invoke-static {p1, v0, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.dolby.dax2appUI"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->addDolbyToQs()V

    .line 114
    :cond_7
    return-void
.end method

.method private addDolbyToQs()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->hasContainDolby()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "QsDolbyAdded"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 293
    return-void

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->caculateDolbyPosition()I

    move-result v0

    .line 297
    .local v0, "dolbyPosition":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    const-string/jumbo v2, "custom(com.dolby.dax2appUI/com.motorola.dlbafx.AudioEffectTileService)"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;I)V

    .line 299
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "QsDolbyAdded"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 300
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v1, :cond_1

    .line 301
    const-string/jumbo v1, "AutoTileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add Dolby to Qs at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    return-void
.end method

.method private caculateDolbyPosition()I
    .locals 13

    .prologue
    .line 247
    const/4 v2, -0x1

    .line 249
    .local v2, "index":I
    const/4 v0, 0x0

    .line 250
    .local v0, "currentIndex":I
    const/4 v4, 0x0

    .line 251
    .local v4, "modPositionChanged":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 252
    .local v7, "res":Landroid/content/res/Resources;
    const v11, 0x7f0b0040

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 253
    .local v3, "modBatteryPosition":I
    add-int/lit8 v6, v3, 0x1

    .line 255
    .local v6, "projectorPosition":I
    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v11, "com.motorola.projectormod"

    .line 256
    const-string/jumbo v12, "com.motorola.projectormod.app.ProjectorQSTile"

    .line 255
    invoke-direct {v5, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v5, "projectorComponent":Landroid/content/ComponentName;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v10

    .line 258
    .local v10, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "tile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/plugins/qs/QSTile;

    .line 259
    .local v8, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    instance-of v11, v8, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v11, :cond_0

    move-object v11, v8

    .line 261
    check-cast v11, Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v11}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v11

    if-nez v11, :cond_1

    .line 262
    move v2, v0

    .line 263
    if-eq v0, v6, :cond_0

    .line 264
    const/4 v4, 0x1

    .line 275
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "mod_battery"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 268
    move v2, v0

    .line 269
    if-eq v0, v3, :cond_0

    .line 270
    const/4 v4, 0x1

    goto :goto_1

    .line 279
    .end local v8    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_2
    if-nez v4, :cond_3

    const/4 v11, -0x1

    if-eq v2, v11, :cond_3

    .line 280
    add-int/lit8 v1, v2, 0x1

    .line 287
    .local v1, "dolbyPosition":I
    :goto_2
    return v1

    .line 281
    .end local v1    # "dolbyPosition":I
    :cond_3
    if-eqz v4, :cond_4

    .line 282
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .restart local v1    # "dolbyPosition":I
    goto :goto_2

    .line 284
    .end local v1    # "dolbyPosition":I
    :cond_4
    move v1, v3

    .restart local v1    # "dolbyPosition":I
    goto :goto_2
.end method

.method private hasContainDolby()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 232
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.dolby.dax2appUI"

    .line 233
    const-string/jumbo v5, "com.motorola.dlbafx.AudioEffectTileService"

    .line 232
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v0, "dolbyComponent":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v3

    .line 235
    .local v3, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 236
    .local v1, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    instance-of v4, v1, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v4, :cond_0

    .line 237
    check-cast v1, Lcom/android/systemui/qs/external/CustomTile;

    .end local v1    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-virtual {v1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v4

    if-nez v4, :cond_0

    .line 238
    const/4 v4, 0x1

    return v4

    .line 243
    :cond_1
    return v6
.end method
