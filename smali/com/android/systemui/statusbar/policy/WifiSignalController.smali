.class public Lcom/android/systemui/statusbar/policy/WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final PASS_POINT_EXTRA:Ljava/lang/String;

.field private final PASS_POINT_HOME:Ljava/lang/String;

.field private final PASS_POINT_ROAM:Ljava/lang/String;

.field private final mDefault:Ljava/lang/String;

.field private final mHasMobileData:Z

.field private final mIsSupportNewSpec:Z

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private mScoringUiEnabled:Z

.field private final mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/WifiSignalController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/WifiSignalController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoringUiEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/WifiSignalController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getWifiBadgeEnum()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasMobileData"    # Z
    .param p3, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p4, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p5, "networkScoreManager"    # Landroid/net/NetworkScoreManager;

    .prologue
    .line 66
    const-string/jumbo v2, "WifiSignalController"

    const/4 v4, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoringUiEnabled:Z

    .line 281
    const-string/jumbo v1, "PASSPOINT_EXTRA"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->PASS_POINT_EXTRA:Ljava/lang/String;

    .line 282
    const-string/jumbo v1, "HOME"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->PASS_POINT_HOME:Ljava/lang/String;

    .line 283
    const-string/jumbo v1, "ROAM"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->PASS_POINT_ROAM:Ljava/lang/String;

    .line 284
    const-string/jumbo v1, "DEFAULT"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefault:Ljava/lang/String;

    .line 288
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_DEFAULT:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    .line 68
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 69
    new-instance v1, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    .line 70
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileData:Z

    .line 71
    new-instance v11, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v11, p0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Looper;)V

    .line 72
    .local v11, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v12

    .line 74
    .local v12, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v12, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v11, v12}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIsSupportNewSpec:Z

    .line 80
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIsSupportNewSpec:Z

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    new-instance v1, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 82
    const-string/jumbo v2, "Wi-Fi Icons"

    .line 83
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_NEW_UI:[[I

    .line 84
    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 85
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 86
    const v6, 0x7f080468

    .line 87
    const v7, 0x7f0801e7

    .line 88
    const v8, 0x7f080468

    .line 89
    const v9, 0x7f0801e7

    .line 90
    const v10, 0x7f11007f

    .line 81
    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v1, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v1, v13, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 107
    :goto_0
    new-instance v1, Landroid/net/wifi/WifiNetworkScoreCache;

    new-instance v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;

    invoke-direct {v2, p0, v11}, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Handler;)V

    invoke-direct {v1, p1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 116
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->configureScoringGating()V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->registerScoreCache()V

    .line 119
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    new-instance v1, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 94
    const-string/jumbo v2, "Wi-Fi Icons"

    .line 95
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 96
    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 97
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 98
    const v6, 0x7f08033f

    .line 99
    const v7, 0x7f0801e7

    .line 100
    const v8, 0x7f08033f

    .line 101
    const v9, 0x7f0801e7

    .line 102
    const v10, 0x7f11007f

    .line 93
    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v1, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v1, v13, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_0
.end method

.method private configureScoringGating()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Handler;)V

    .line 131
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 132
    const-string/jumbo v2, "network_scoring_ui_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 137
    return-void
.end method

.method private getIconGroup([[I[[I)Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    .locals 10
    .param p1, "sysIcons"    # [[I
    .param p2, "qsIcons"    # [[I

    .prologue
    const v9, 0x7f11007f

    const v5, 0x7f080468

    const v8, 0x7f08033f

    const v6, 0x7f0801e7

    .line 331
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIsSupportNewSpec:Z

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 333
    const-string/jumbo v1, "Wi-Fi Icons"

    .line 336
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    move-object v2, p1

    move-object v3, p2

    move v7, v5

    move v8, v6

    .line 332
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    return-object v0

    .line 344
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 345
    const-string/jumbo v1, "Wi-Fi Icons"

    .line 348
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    move-object v2, p1

    move-object v3, p2

    move v5, v8

    move v7, v8

    move v8, v6

    .line 344
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    return-object v0
.end method

.method private getWifiBadgeEnum()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoringUiEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    if-nez v1, :cond_1

    .line 261
    :cond_0
    return v3

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v0

    .line 265
    .local v0, "score":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_2

    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    invoke-virtual {v0, v1}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v1

    return v1

    .line 268
    :cond_2
    return v3
.end method

.method private registerScoreCache()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Registered score cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 141
    invoke-virtual {v0, v2, v1, v2}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 145
    return-void
.end method

.method private updateScoreCacheIfNecessary(Landroid/net/NetworkKey;)V
    .locals 4
    .param p1, "previousNetworkKey"    # Landroid/net/NetworkKey;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    if-nez v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v0, p1}, Landroid/net/NetworkKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkScoreCache;->clearScores()V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/NetworkKey;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 252
    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-result-object v0

    return-object v0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;-><init>()V

    return-object v0
.end method

.method public getCurrentIconId()I
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->badgeEnum:I

    if-eqz v0, :cond_0

    .line 205
    sget-object v1, Lcom/android/settingslib/Utils;->WIFI_PIE_FOR_BADGING:[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    aget v0, v1, v0

    return v0

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getCurrentIconId()I

    move-result v0

    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v0, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    .line 216
    .local v0, "previousNetworkKey":Landroid/net/NetworkKey;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    .line 217
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateScoreCacheIfNecessary(Landroid/net/NetworkKey;)V

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-eq v1, v2, :cond_1

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ImsIconController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/ImsIconController;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v3, v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    .line 221
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ImsIconController;->onWifiConnectionStateChanged(ZZ)V

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 227
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 226
    :cond_2
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->rssi:I

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getWifiBadgeEnum()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->badgeEnum:I

    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onWifiConnectionStateChanged(ZZ)V

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    .line 237
    return-void

    .line 228
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connecting:Z

    goto :goto_0
.end method

.method public handleEPDGBroadcast(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->epdgState:Z

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    .line 429
    return-void
.end method

.method public handlePasspointBroadcast(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    const-string/jumbo v3, "PASSPOINT_EXTRA"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "extra":Ljava/lang/String;
    const/4 v1, 0x0

    .line 295
    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIsSupportNewSpec:Z

    if-eqz v3, :cond_3

    .line 296
    const-string/jumbo v3, "HOME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_H:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    .line 298
    .local v2, "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_H_NEW_UI:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_H:[[I

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getIconGroup([[I[[I)Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v1

    .line 322
    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    if-eq v2, v3, :cond_0

    .line 323
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    .line 324
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v1, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    .line 327
    :cond_0
    return-void

    .line 299
    .end local v2    # "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    :cond_1
    const-string/jumbo v3, "ROAM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_R:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    .line 301
    .restart local v2    # "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_R_NEW_UI:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_R:[[I

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getIconGroup([[I[[I)Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v1

    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    goto :goto_0

    .line 304
    .end local v2    # "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_DEFAULT:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    .line 305
    .restart local v2    # "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_NEW_UI:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getIconGroup([[I[[I)Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v1

    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    goto :goto_0

    .line 308
    .end local v2    # "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    :cond_3
    const-string/jumbo v3, "HOME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 309
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_H:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    .line 310
    .restart local v2    # "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_H:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_H:[[I

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getIconGroup([[I[[I)Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v1

    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    goto :goto_0

    .line 311
    .end local v2    # "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    :cond_4
    const-string/jumbo v3, "ROAM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 312
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_R:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    .line 313
    .restart local v2    # "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_R:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_R:[[I

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getIconGroup([[I[[I)Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v1

    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    goto :goto_0

    .line 316
    .end local v2    # "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_DEFAULT:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    .line 317
    .restart local v2    # "state":Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getIconGroup([[I[[I)Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v1

    .local v1, "iconGroup":Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    goto :goto_0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 12
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileData:Z

    xor-int/lit8 v11, v0, 0x1

    .line 157
    :goto_0
    if-eqz v11, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 158
    :goto_1
    if-eqz v11, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/4 v10, 0x1

    .line 159
    .local v10, "ssidPresent":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getContentDescription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "contentDescription":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    const v4, 0x7f1100bf

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 166
    :cond_0
    const/4 v8, 0x0

    .line 167
    .local v8, "extendedWifiInfo":Lcom/android/systemui/moto/ExtendedWifiInfo;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCustomizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    new-instance v8, Lcom/android/systemui/moto/ExtendedWifiInfo;

    .end local v8    # "extendedWifiInfo":Lcom/android/systemui/moto/ExtendedWifiInfo;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    .line 169
    if-eqz v10, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    move v1, v0

    :goto_3
    if-eqz v10, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    .line 168
    :goto_4
    invoke-direct {v8, v4, v1, v0}, Lcom/android/systemui/moto/ExtendedWifiInfo;-><init>(ZZZ)V

    .line 171
    .local v8, "extendedWifiInfo":Lcom/android/systemui/moto/ExtendedWifiInfo;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEnableWideIcons()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isShowActivityIconOnSB()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    const-string/jumbo v4, ""

    invoke-direct {v1, v0, v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v1, v8, Lcom/android/systemui/moto/ExtendedWifiInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isShowCustomActivityIconOnQS()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    .line 189
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->epdgState:Z

    iput-boolean v0, v8, Lcom/android/systemui/moto/ExtendedWifiInfo;->epdgState:Z

    .line 192
    .end local v8    # "extendedWifiInfo":Lcom/android/systemui/moto/ExtendedWifiInfo;
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconId()I

    move-result v1

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->badgeEnum:I

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getWifiBadgeResource(I)I

    move-result v0

    .line 192
    invoke-direct {v2, v11, v1, v0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILjava/lang/String;)V

    .line 194
    .local v2, "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getQsCurrentIconId()I

    move-result v4

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->badgeEnum:I

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getWifiBadgeResource(I)I

    move-result v0

    .line 194
    invoke-direct {v3, v1, v4, v0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILjava/lang/String;)V

    .line 197
    .local v3, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    .line 198
    if-eqz v10, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    :goto_6
    if-eqz v10, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    move-object v0, p1

    .line 197
    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLcom/android/systemui/moto/ExtendedWifiInfo;)V

    .line 200
    return-void

    .line 156
    .end local v2    # "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v3    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v9    # "contentDescription":Ljava/lang/String;
    .end local v10    # "ssidPresent":Z
    :cond_4
    const/4 v11, 0x1

    .local v11, "wifiVisible":Z
    goto/16 :goto_0

    .line 155
    .end local v11    # "wifiVisible":Z
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "wifiVisible":Z
    goto/16 :goto_0

    .line 157
    .end local v11    # "wifiVisible":Z
    :cond_6
    const/4 v6, 0x0

    .local v6, "wifiDesc":Ljava/lang/String;
    goto/16 :goto_1

    .line 158
    .end local v6    # "wifiDesc":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "ssidPresent":Z
    goto/16 :goto_2

    .restart local v9    # "contentDescription":Ljava/lang/String;
    :cond_8
    move v1, v5

    .line 169
    goto/16 :goto_3

    :cond_9
    move v0, v5

    goto/16 :goto_4

    .line 180
    .restart local v8    # "extendedWifiInfo":Lcom/android/systemui/moto/ExtendedWifiInfo;
    :cond_a
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    const-string/jumbo v4, ""

    invoke-direct {v1, v0, v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v1, v8, Lcom/android/systemui/moto/ExtendedWifiInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    goto :goto_5

    .line 184
    :cond_b
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    const-string/jumbo v4, ""

    invoke-direct {v1, v0, v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v1, v8, Lcom/android/systemui/moto/ExtendedWifiInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 185
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    const-string/jumbo v4, ""

    invoke-direct {v1, v0, v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v1, v8, Lcom/android/systemui/moto/ExtendedWifiInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    goto/16 :goto_5

    .end local v8    # "extendedWifiInfo":Lcom/android/systemui/moto/ExtendedWifiInfo;
    .restart local v2    # "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .restart local v3    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_c
    move v4, v5

    .line 198
    goto :goto_6
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "wifiActivity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    if-eq p1, v4, :cond_1

    .line 274
    if-ne p1, v2, :cond_2

    move v1, v2

    .line 273
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    if-eq p1, v4, :cond_0

    .line 276
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 275
    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    .line 278
    return-void

    :cond_1
    move v1, v2

    .line 273
    goto :goto_0

    :cond_2
    move v1, v3

    .line 274
    goto :goto_0

    :cond_3
    move v2, v3

    .line 276
    goto :goto_1
.end method
