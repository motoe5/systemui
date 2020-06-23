.class public Lcom/android/settingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/WifiTracker$1;,
        Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;,
        Lcom/android/settingslib/wifi/WifiTracker$MainHandler;,
        Lcom/android/settingslib/wifi/WifiTracker$Multimap;,
        Lcom/android/settingslib/wifi/WifiTracker$Scanner;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiListener;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;,
        Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static isHideVzwWispr:Z

.field public static sVerboseLogging:I


# instance fields
.field private final mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIncludePasspoints:Z

.field private final mIncludeSaved:Z

.field private final mIncludeScans:Z

.field private final mInternalAccessPoints:Ljava/util/List;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private final mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

.field private final mLock:Ljava/lang/Object;

.field final mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

.field private mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mRequestedScores:Ljava/util/Set;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private mScanId:Ljava/lang/Integer;

.field private final mScanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

.field private final mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private final mSeenBssids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStaleScanResults:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;


# direct methods
.method static synthetic -get0(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settingslib/wifi/WifiTracker;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settingslib/wifi/WifiTracker;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p1, "-value"    # Landroid/net/wifi/WifiInfo;

    .prologue
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p1, "-value"    # Landroid/net/NetworkInfo;

    .prologue
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settingslib/wifi/WifiTracker;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settingslib/wifi/WifiTracker;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p1, "notifyListeners"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->copyAndNotifyListeners(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->handleResume()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->updateAccessPointsLocked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->updateNetworkScores()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settingslib/wifi/WifiTracker;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateWifiState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string/jumbo v0, "WifiTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    .line 77
    sput v2, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:I

    .line 141
    sput-boolean v2, Lcom/android/settingslib/wifi/WifiTracker;->isHideVzwWispr:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z

    .prologue
    .line 158
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z

    .prologue
    .line 169
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 170
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 171
    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkScoreManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 168
    invoke-direct/range {v0 .. v10}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Looper;)V

    .line 173
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z
    .param p7, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p8, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p9, "networkScoreManager"    # Landroid/net/NetworkScoreManager;
    .param p10, "currentLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    invoke-direct {v0, v2}, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;-><init>(Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;)V

    .line 128
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 144
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    .line 148
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 747
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    if-nez p4, :cond_0

    xor-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must include either saved or scans"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 184
    if-nez p10, :cond_1

    .line 186
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p10

    .line 188
    :cond_1
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-direct {v0, p0, p10}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    .line 189
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    .line 190
    if-eqz p3, :cond_2

    .line 189
    .end local p3    # "workerLooper":Landroid/os/Looper;
    :goto_0
    invoke-direct {v0, p0, p3}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    .line 191
    iput-object p7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 192
    iput-boolean p4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeSaved:Z

    .line 193
    iput-boolean p5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeScans:Z

    .line 194
    iput-boolean p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludePasspoints:Z

    .line 195
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 196
    iput-object p8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 199
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    sput v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:I

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    .line 202
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 214
    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 217
    iput-object p9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 219
    new-instance v0, Landroid/net/wifi/WifiNetworkScoreCache;

    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$2;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/wifi/WifiTracker$2;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Handler;)V

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 233
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 234
    const v1, 0x112008b

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->isHideVzwWispr:Z

    .line 235
    return-void

    .restart local p3    # "workerLooper":Landroid/os/Looper;
    :cond_2
    move-object p3, p10

    .line 190
    goto/16 :goto_0
.end method

.method private copyAndNotifyListeners(Z)V
    .locals 11
    .param p1, "notifyListeners"    # Z

    .prologue
    .line 1031
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 1032
    .local v7, "oldAccessPoints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/wifi/AccessPoint;>;"
    const/4 v5, 0x0

    .line 1033
    .local v5, "notificationMap":Landroid/util/SparseIntArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v8, "updatedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accessPoint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1036
    .local v0, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    iget v9, v0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v7, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1039
    .end local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_0
    sget-boolean v9, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v9, :cond_1

    .line 1040
    const-string/jumbo v9, "WifiTracker"

    const-string/jumbo v10, "Starting to copy AP items on the MainHandler"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_1
    iget-object v10, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1043
    if-eqz p1, :cond_2

    .line 1044
    :try_start_0
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    iget-object v9, v9, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v5

    .line 1047
    .end local v5    # "notificationMap":Landroid/util/SparseIntArray;
    :cond_2
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    iget-object v9, v9, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    .line 1049
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "internalAccessPoint$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1050
    .local v2, "internalAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    iget v9, v2, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1051
    .restart local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    if-nez v0, :cond_3

    .line 1052
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    .end local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1056
    .restart local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :goto_2
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1042
    .end local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v2    # "internalAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v3    # "internalAccessPoint$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 1054
    .restart local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v2    # "internalAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v3    # "internalAccessPoint$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->copyFrom(Lcom/android/settingslib/wifi/AccessPoint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v2    # "internalAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_4
    monitor-exit v10

    .line 1060
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 1061
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1063
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 1064
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1065
    .restart local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    iget v9, v0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1066
    .local v6, "notificationType":I
    iget-object v4, v0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    .line 1067
    .local v4, "listener":Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    .line 1071
    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_6

    .line 1072
    invoke-interface {v4, v0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1075
    :cond_6
    and-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_5

    .line 1076
    invoke-interface {v4, v0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    goto :goto_3

    .line 1080
    .end local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v4    # "listener":Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
    .end local v6    # "notificationType":I
    :cond_7
    return-void
.end method

.method private fetchScanResults()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 421
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 422
    .local v4, "newResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "newResult$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 425
    .local v2, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 426
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v8, "[IBSS]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 425
    if-nez v7, :cond_0

    .line 427
    sget-boolean v7, Lcom/android/settingslib/wifi/WifiTracker;->isHideVzwWispr:Z

    if-eqz v7, :cond_1

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settingslib/wifi/WifiTracker;->isVerizonWisprSsid(Ljava/lang/String;)Z

    move-result v7

    .line 425
    if-nez v7, :cond_0

    .line 432
    :cond_1
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 436
    .end local v2    # "newResult":Landroid/net/wifi/ScanResult;
    :cond_2
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_7

    .line 437
    sget-boolean v7, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "WifiTracker"

    const-string/jumbo v8, "------ Dumping SSIDs that were expired on this scan ------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_3
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 439
    .local v6, "threshold":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 440
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    .line 439
    if-eqz v7, :cond_6

    .line 441
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 442
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 443
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 444
    .local v5, "result":Landroid/net/wifi/ScanResult;
    sget-boolean v7, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v8, "WifiTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ":("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_5
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 449
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    sget-boolean v7, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "WifiTracker"

    const-string/jumbo v8, "---- Done Dumping SSIDs that were expired on this scan ----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v6    # "threshold":Ljava/lang/Integer;
    :cond_7
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    return-object v7
.end method

.method private getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "networkId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 456
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 457
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 458
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 459
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_0

    .line 460
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    xor-int/lit8 v3, v3, 0x1

    .line 459
    if-eqz v3, :cond_0

    .line 461
    return-object v0

    :cond_1
    move v3, v4

    .line 460
    goto :goto_0

    .line 465
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v5
.end method

.method private handleResume()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 415
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 416
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 417
    return-void
.end method

.method private isVerizonWisprSsid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 723
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    :cond_0
    return v3

    .line 727
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "checkString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->config_wifi_verizon_wispr_ssid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 729
    const/4 v1, 0x1

    return v1

    .line 731
    :cond_2
    return v3
.end method

.method private registerScoreCache()V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 322
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 321
    const/4 v2, 0x1

    .line 323
    const/4 v3, 0x2

    .line 320
    invoke-virtual {v0, v2, v1, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 324
    return-void
.end method

.method private requestScoresForNetworkKeys(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkKey;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 329
    :cond_0
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_1

    .line 330
    const-string/jumbo v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requesting scores for Network Keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/NetworkKey;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkKey;

    invoke-virtual {v1, v0}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 333
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 336
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unregisterAndClearScoreCache()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 367
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkScoreCache;->clearScores()V

    .line 370
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 373
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateAccessPoints()V
    .locals 29
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 483
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 484
    .local v9, "cachedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v4, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "accessPoint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 488
    .local v2, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->clearConfig()V

    goto :goto_0

    .line 493
    .end local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_0
    new-instance v8, Lcom/android/settingslib/wifi/WifiTracker$Multimap;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;-><init>(Lcom/android/settingslib/wifi/WifiTracker$Multimap;)V

    .line 494
    .local v8, "apMap":Lcom/android/settingslib/wifi/WifiTracker$Multimap;, "Lcom/android/settingslib/wifi/WifiTracker$Multimap<Ljava/lang/String;Lcom/android/settingslib/wifi/AccessPoint;>;"
    const/4 v13, 0x0

    .line 495
    .local v13, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 499
    .end local v13    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScanResults()Ljava/util/Collection;

    move-result-object v24

    .line 501
    .local v24, "results":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v12

    .line 502
    .local v12, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v12, :cond_9

    .line 503
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "config$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 504
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 507
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    .line 508
    .restart local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v2, v13, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 511
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeSaved:Z

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 514
    const/4 v7, 0x0

    .line 515
    .local v7, "apFound":Z
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "result$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/ScanResult;

    .line 516
    .local v22, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 517
    const/4 v7, 0x1

    .line 521
    .end local v22    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    if-nez v7, :cond_7

    .line 522
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->setUnreachable()V

    .line 524
    :cond_7
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0, v2}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 529
    .end local v7    # "apFound":Z
    .end local v23    # "result$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 534
    .end local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "config$iterator":Ljava/util/Iterator;
    :cond_9
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v25, "scoresToRequest":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkKey;>;"
    if-eqz v24, :cond_10

    .line 536
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "result$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/ScanResult;

    .line 538
    .restart local v22    # "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_a

    .line 539
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "[IBSS]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    .line 538
    if-nez v26, :cond_a

    .line 543
    invoke-static/range {v22 .. v22}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v16

    .line 544
    .local v16, "key":Landroid/net/NetworkKey;
    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_b

    .line 545
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_b
    const/4 v15, 0x0

    .line 549
    .local v15, "found":Z
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 550
    .restart local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 551
    const/4 v15, 0x1

    .line 555
    .end local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_d
    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeScans:Z

    move/from16 v26, v0

    if-eqz v26, :cond_a

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    .line 557
    .restart local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v2, v13, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 561
    :cond_e
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v26

    if-eqz v26, :cond_f

    .line 567
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 568
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_f

    .line 569
    invoke-virtual {v2, v10}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_f
    :goto_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0, v2}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 582
    .end local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v15    # "found":Z
    .end local v16    # "key":Landroid/net/NetworkKey;
    .end local v22    # "result":Landroid/net/wifi/ScanResult;
    .end local v23    # "result$iterator":Ljava/util/Iterator;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->requestScoresForNetworkKeys(Ljava/util/Collection;)V

    .line 583
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "ap$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/wifi/AccessPoint;

    .line 584
    .local v5, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;Z)Z

    goto :goto_4

    .line 588
    .end local v5    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_11
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 591
    sget-boolean v26, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v26, :cond_16

    .line 592
    const-string/jumbo v26, "WifiTracker"

    const-string/jumbo v27, "------ Dumping SSIDs that were not seen on this scan ------"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "prevAccessPoint$iterator":Ljava/util/Iterator;
    :cond_12
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settingslib/wifi/AccessPoint;

    .line 594
    .local v19, "prevAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual/range {v19 .. v19}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v26

    if-eqz v26, :cond_12

    .line 596
    invoke-virtual/range {v19 .. v19}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v21

    .line 597
    .local v21, "prevSsid":Ljava/lang/String;
    const/4 v15, 0x0

    .line 598
    .restart local v15    # "found":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "newAccessPoint$iterator":Ljava/util/Iterator;
    :cond_13
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settingslib/wifi/AccessPoint;

    .line 599
    .local v17, "newAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual/range {v17 .. v17}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v26

    if-eqz v26, :cond_13

    invoke-virtual/range {v17 .. v17}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 601
    const/4 v15, 0x1

    .line 605
    .end local v17    # "newAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_14
    if-nez v15, :cond_12

    .line 606
    const-string/jumbo v26, "WifiTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Did not find "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " in this scan"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 608
    .end local v15    # "found":Z
    .end local v18    # "newAccessPoint$iterator":Ljava/util/Iterator;
    .end local v19    # "prevAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v21    # "prevSsid":Ljava/lang/String;
    :cond_15
    const-string/jumbo v26, "WifiTracker"

    const-string/jumbo v27, "---- Done dumping SSIDs that were not seen on this scan ----"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v20    # "prevAccessPoint$iterator":Ljava/util/Iterator;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->clear()V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 615
    return-void

    .line 571
    .end local v6    # "ap$iterator":Ljava/util/Iterator;
    .restart local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v15    # "found":Z
    .restart local v16    # "key":Landroid/net/NetworkKey;
    .restart local v22    # "result":Landroid/net/wifi/ScanResult;
    .restart local v23    # "result$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_3
.end method

.method private updateAccessPointsLocked()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->updateAccessPoints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 473
    return-void

    .line 470
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 9
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v8, 0x4

    .line 649
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 650
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v6, v8}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 651
    return-void

    .line 654
    :cond_0
    if-eqz p1, :cond_5

    .line 655
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_5

    .line 656
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v6, v8}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 661
    :goto_0
    if-eqz p1, :cond_1

    .line 662
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 665
    :cond_1
    const/4 v1, 0x0

    .line 666
    .local v1, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 667
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_2

    .line 668
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 671
    .end local v1    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v5, 0x0

    .line 672
    .local v5, "updated":Z
    const/4 v4, 0x0

    .line 674
    .local v4, "reorder":Z
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 675
    :try_start_0
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 676
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 677
    .local v0, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    .line 678
    .local v3, "previouslyConnected":Z
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v6, v8}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 679
    const/4 v5, 0x1

    .line 680
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v6

    if-eq v3, v6, :cond_3

    const/4 v4, 0x1

    .line 682
    :cond_3
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_4

    .line 683
    const/4 v4, 0x1

    .line 684
    const/4 v5, 0x1

    .line 675
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 658
    .end local v0    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v2    # "i":I
    .end local v3    # "previouslyConnected":Z
    .end local v4    # "reorder":Z
    .end local v5    # "updated":Z
    :cond_5
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 688
    .restart local v2    # "i":I
    .restart local v4    # "reorder":Z
    .restart local v5    # "updated":Z
    :cond_6
    if-eqz v4, :cond_7

    :try_start_1
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 690
    :cond_7
    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    monitor-exit v7

    .line 692
    return-void

    .line 674
    .end local v2    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private updateNetworkScores()V
    .locals 6

    .prologue
    .line 702
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 703
    const/4 v1, 0x0

    .line 704
    .local v1, "updated":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 705
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 706
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v5, 0x0

    .line 705
    invoke-virtual {v2, v4, v5}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    const/4 v1, 0x1

    .line 704
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_1
    if-eqz v1, :cond_2

    .line 711
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 712
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 715
    return-void

    .line 702
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 719
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 407
    const-string/jumbo v2, "  - wifi tracker ------"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accessPoint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 409
    .local v0, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    .end local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_0
    return-void
.end method

.method public forceScan()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->forceScan()V

    .line 269
    :cond_0
    return-void
.end method

.method public getAccessPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    .prologue
    .line 619
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 620
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 621
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    .line 623
    .local v3, "ret":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v3, p1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    .line 624
    return-object v3

    .line 620
    .end local v3    # "ret":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    :cond_1
    new-instance v1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 628
    .local v1, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 629
    return-object v1
.end method

.method getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    .prologue
    .line 634
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 635
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 636
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    .line 638
    .local v3, "ret":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v3, p1}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 639
    return-object v3

    .line 635
    .end local v3    # "ret":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    :cond_1
    new-instance v1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 643
    .local v1, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 644
    return-object v1
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public pauseScanning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    .line 277
    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    .line 279
    :cond_0
    return-void
.end method

.method public resumeScanning()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 292
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    .line 295
    :cond_1
    return-void
.end method

.method public startTracking()V
    .locals 4

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->registerScoreCache()V

    .line 308
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 309
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    .line 313
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 317
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopTracking()V
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->unregisterAndClearScoreCache()V

    .line 357
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->pauseScanning()V

    .line 359
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->-wrap0(Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;)V

    .line 360
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removePendingMessages()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 363
    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
