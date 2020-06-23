.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController;
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
.implements Lcom/android/systemui/ConfigurationChangedReceiver;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;
    }
.end annotation


# static fields
.field static final CHATTY:Z

.field static final DEBUG:Z


# instance fields
.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

.field private mAirplaneMode:Z

.field private mCBEnableReceiver:Landroid/content/BroadcastReceiver;

.field private mCBInfoReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private final mConnectedTransports:Ljava/util/BitSet;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

.field private mDemoInetCondition:Z

.field private mDemoMode:Z

.field private mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

.field private mEPDGReceiver:Landroid/content/BroadcastReceiver;

.field private mEmergencySource:I

.field final mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

.field private final mHasMobileDataFeature:Z

.field private mHasNoSims:Z

.field private mInetCondition:Z

.field private mIsEmergency:Z

.field private final mIsSupportNewSpec:Z

.field mLastServiceState:Landroid/telephony/ServiceState;

.field mListening:Z

.field private mLocale:Ljava/util/Locale;

.field final mMobileSignalControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mNetworkTracker:Lcom/android/systemui/moto/NetworkStateTracker;

.field private mPasspointReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private mPrevSimStates:Lcom/android/systemui/moto/SimStates;

.field private final mReceiverHandler:Landroid/os/Handler;

.field private final mRegisterListeners:Ljava/lang/Runnable;

.field private mSimStates:Lcom/android/systemui/moto/SimStates;

.field private final mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUserSetup:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mValidatedTransports:Ljava/util/BitSet;

.field protected mWifiConnected:Z

.field protected mWifiEnabled:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field final mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "newUserId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerListeners()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "userSetup"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setUserSetupComplete(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 91
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetworkController"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    .line 93
    const-string/jumbo v0, "NetworkControllerChat"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    .line 86
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p3, "networkScoreManager"    # Landroid/net/NetworkScoreManager;
    .param p4, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p5, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p6, "subManager"    # Landroid/telephony/SubscriptionManager;
    .param p7, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p8, "bgLooper"    # Landroid/os/Looper;
    .param p9, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p10, "accessPointController"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
    .param p11, "dataUsageController"    # Lcom/android/settingslib/net/DataUsageController;
    .param p12, "defaultsHandler"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;
    .param p13, "deviceProvisionedController"    # Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 121
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 132
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    .line 133
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    .line 136
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPrevSimStates:Lcom/android/systemui/moto/SimStates;

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimStates:Lcom/android/systemui/moto/SimStates;

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 166
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPasspointReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 183
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEPDGReceiver:Landroid/content/BroadcastReceiver;

    .line 1000
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCBEnableReceiver:Landroid/content/BroadcastReceiver;

    .line 1019
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCBInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 1316
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 225
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 226
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 227
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 228
    new-instance v1, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 230
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 231
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    .line 232
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    .line 233
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 237
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 240
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 241
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSupportNewSpec:Z

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 244
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    .line 245
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/net/DataUsageController;->setNetworkController(Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;)V

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/net/DataUsageController;->setCallback(Lcom/android/settingslib/net/DataUsageController$Callback;)V

    .line 254
    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 255
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    move-object v5, p0

    .line 254
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/WifiSignalController;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .line 257
    new-instance v1, Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    .line 260
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 261
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 268
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;

    move-object/from16 v0, p13

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    move-object/from16 v0, p13

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 276
    new-instance v1, Lcom/android/systemui/moto/NetworkStateTracker;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 277
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v6, v2, Lcom/android/systemui/moto/NetworkConfig;->enableEriSounds:Z

    move-object v2, p4

    move-object v3, p6

    .line 276
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/moto/NetworkStateTracker;-><init>(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkTracker:Lcom/android/systemui/moto/NetworkStateTracker;

    .line 279
    new-instance v1, Lcom/android/systemui/moto/SimStates;

    invoke-direct {v1, p4}, Lcom/android/systemui/moto/SimStates;-><init>(Landroid/telephony/TelephonyManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimStates:Lcom/android/systemui/moto/SimStates;

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;
    .param p3, "deviceProvisionedController"    # Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .prologue
    .line 196
    const-string/jumbo v2, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 197
    const-class v2, Landroid/net/NetworkScoreManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkScoreManager;

    .line 198
    const-string/jumbo v2, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 199
    const-string/jumbo v2, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 200
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    .line 201
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v9

    .line 203
    new-instance v11, Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/policy/CallbackHandler;-><init>()V

    .line 204
    new-instance v12, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 205
    new-instance v13, Lcom/android/settingslib/net/DataUsageController;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v14, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-direct {v14}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;-><init>()V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p2

    move-object/from16 v15, p3

    .line 196
    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method private addSignalController(II)Landroid/telephony/SubscriptionInfo;
    .locals 14
    .param p1, "id"    # I
    .param p2, "simSlotIndex"    # I

    .prologue
    .line 1286
    new-instance v0, Landroid/telephony/SubscriptionInfo;

    const-string/jumbo v2, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v8, ""

    .line 1287
    const-string/jumbo v13, ""

    .line 1286
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1287
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v1, p1

    move/from16 v3, p2

    .line 1286
    invoke-direct/range {v0 .. v13}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    .line 1288
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 1289
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 1290
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    move-object v7, p0

    move-object v8, v0

    .line 1288
    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    .line 1291
    .local v1, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1292
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 1293
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->onWifiConnectionStateChanged(ZZ)V

    .line 1294
    return-object v0
.end method

.method private static final emergencyToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "emergencySource"    # I

    .prologue
    const/16 v0, 0x12c

    .line 1083
    if-le p0, v0, :cond_0

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ASSUMED_VOICE_CONTROLLER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit16 v1, p0, -0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1085
    const-string/jumbo v1, ")"

    .line 1084
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1086
    :cond_0
    if-le p0, v0, :cond_1

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NO_SUB("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit16 v1, p0, -0x12c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1088
    :cond_1
    const/16 v0, 0xc8

    if-le p0, v0, :cond_2

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VOICE_CONTROLLER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit16 v1, p0, -0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1090
    :cond_2
    const/16 v0, 0x64

    if-le p0, v0, :cond_3

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FIRST_CONTROLLER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p0, -0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1092
    :cond_3
    if-nez p0, :cond_4

    .line 1093
    const-string/jumbo v0, "NO_CONTROLLERS"

    return-object v0

    .line 1095
    :cond_4
    const-string/jumbo v0, "UNKNOWN_SOURCE"

    return-object v0
.end method

.method private getDataController(I)Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 487
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v0

    .line 489
    .local v0, "dataSubId":I
    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 490
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "No data sim selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object v1

    .line 487
    .end local v0    # "dataSubId":I
    :cond_1
    move v0, p1

    .restart local v0    # "dataSubId":I
    goto :goto_0

    .line 493
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 494
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object v1

    .line 496
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find controller for data sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object v1
.end method

.method private getSubContext(Landroid/telephony/SubscriptionInfo;)Landroid/content/Context;
    .locals 6
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 728
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 729
    .local v1, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    if-nez v3, :cond_0

    .line 730
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 731
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    iput v3, v1, Landroid/content/res/Configuration;->mcc:I

    .line 732
    iget v3, v0, Landroid/content/res/Configuration;->mnc:I

    iput v3, v1, Landroid/content/res/Configuration;->mnc:I

    .line 733
    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleConfigurationChanged -- no mcc/mnc for sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 734
    const-string/jumbo v5, " using mcc/mnc from main context: "

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 734
    iget v5, v1, Landroid/content/res/Configuration;->mcc:I

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 734
    const-string/jumbo v5, "/"

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 735
    iget v5, v1, Landroid/content/res/Configuration;->mnc:I

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    .end local v0    # "config":Landroid/content/res/Configuration;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    return-object v3

    .line 737
    :cond_0
    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleConfigurationChanged -- mcc/mnc for sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v1, Landroid/content/res/Configuration;->mcc:I

    .line 740
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v2

    .line 741
    .local v2, "mncInt":I
    if-nez v2, :cond_1

    const v2, 0xffff

    .end local v2    # "mncInt":I
    :cond_1
    iput v2, v1, Landroid/content/res/Configuration;->mnc:I

    goto :goto_0
.end method

.method private handleSetUserSetupComplete(Z)V
    .locals 3
    .param p1, "userSetup"    # Z

    .prologue
    .line 865
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    .line 866
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 867
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 868
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_0
    return-void
.end method

.method private hasSubcriptionChanged(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SubscriptionInfo;)Z
    .locals 3
    .param p1, "msc"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v0, 0x1

    .line 890
    if-eqz p1, :cond_0

    .line 891
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 890
    :cond_0
    :goto_0
    return v0

    .line 892
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRejectCodeEnable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 386
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 387
    return v4

    .line 390
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 391
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 392
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    .line 393
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found rejectcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 390
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_3
    return v4
.end method

.method private notifyAllListeners()V
    .locals 3

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    .line 923
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 924
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 925
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 927
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners()V

    .line 928
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListeners()V

    .line 929
    return-void
.end method

.method private notifyListeners()V
    .locals 6

    .prologue
    const v5, 0x7f11002d

    .line 938
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSupportNewSpec:Z

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 940
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0803e6

    .line 939
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 946
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(Z)V

    .line 947
    return-void

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 943
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f080308

    .line 942
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_0
.end method

.method private onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 642
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    .line 643
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->onUserSwitched(I)V

    .line 644
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    .line 645
    return-void
.end method

.method private pushConnectivityToSignals()V
    .locals 5

    .prologue
    .line 981
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 982
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 983
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 985
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 986
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 987
    return-void
.end method

.method private refreshLocale()V
    .locals 2

    .prologue
    .line 910
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 911
    .local v0, "current":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 912
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 913
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    .line 915
    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 289
    .local v2, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-nez v3, :cond_1

    .line 292
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;

    invoke-direct {v3, p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 297
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v3, "com.motorola.intent.action.LTE_CA_INFO_UPDATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0, v0, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 311
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 314
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPasspointReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "intent.mot.passpoint.connected"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 315
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 314
    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 318
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v3, v3, Lcom/android/systemui/moto/NetworkConfig;->isCellBroadcastSupported:Z

    if-eqz v3, :cond_2

    .line 319
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCBEnableReceiver:Landroid/content/BroadcastReceiver;

    .line 320
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.motorola.cellbroadcastreceiver.CB_INFO_ON_SYSTEMUI"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v6, "com.motorola.permission.CB_ENABLE"

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 319
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 322
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCBInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 323
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v6, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 322
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 329
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v3, v3, Lcom/android/systemui/moto/NetworkConfig;->showEPDGIndicator:Z

    if-eqz v3, :cond_3

    .line 330
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEPDGReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.motorola.internal.intent.action.EPDG_CONNECTION_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 331
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 330
    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 335
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 336
    return-void
.end method

.method private setUserSetupComplete(Z)V
    .locals 2
    .param p1, "userSetup"    # Z

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$JpQ9MKA7q61I6v8lllDNANTFsT4;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$JpQ9MKA7q61I6v8lllDNANTFsT4;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 862
    return-void
.end method

.method private unregisterListeners()V
    .locals 4

    .prologue
    .line 339
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 342
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 345
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPasspointReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v2, v2, Lcom/android/systemui/moto/NetworkConfig;->showEPDGIndicator:Z

    if-eqz v2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEPDGReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    :cond_1
    return-void
.end method

.method private updateAirplaneMode(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    .line 897
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 898
    const-string/jumbo v4, "airplane_mode_on"

    const/4 v5, 0x0

    .line 897
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 898
    const/4 v4, 0x1

    .line 897
    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 899
    .local v0, "airplaneMode":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_3

    .line 900
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 901
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 902
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 903
    .local v2, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setAirplaneMode(Z)V

    .line 901
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 897
    .end local v0    # "airplaneMode":Z
    .end local v1    # "i":I
    .end local v2    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "airplaneMode":Z
    goto :goto_0

    .line 905
    .restart local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    .line 907
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private updateConnectivity()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 953
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 954
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 956
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 955
    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, v5, v4

    .line 957
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    if-nez v2, :cond_1

    .line 955
    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 958
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v7

    array-length v8, v7

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_0

    aget v1, v7, v2

    .line 959
    .local v1, "transportType":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->set(I)V

    .line 960
    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 961
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->set(I)V

    .line 958
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 966
    .end local v0    # "nc":Landroid/net/NetworkCapabilities;
    .end local v1    # "transportType":I
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-eqz v2, :cond_4

    .line 967
    const-string/jumbo v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConnectivity: mConnectedTransports="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string/jumbo v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConnectivity: mValidatedTransports="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    .line 973
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    .line 974
    return-void
.end method

.method private updateMobileControllers()V
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-nez v0, :cond_0

    .line 750
    return-void

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->doUpdateMobileControllers()V

    .line 753
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 7
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .prologue
    const v6, 0x7f11002d

    .line 572
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    .line 574
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSupportNewSpec:Z

    if-eqz v2, :cond_0

    .line 575
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 576
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0803e6

    .line 575
    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 582
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(Z)V

    .line 583
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 584
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 586
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 587
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 578
    .end local v0    # "i":I
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 579
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f080308

    .line 578
    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_0

    .line 589
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    .line 590
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 571
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public addCarrierLabel(Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setCarrierLabelListening(Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;Z)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->updatePanelCarrierLabel()V

    .line 382
    return-void
.end method

.method public addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isRejectCodeEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEmergencyCallsOnly(Z)V

    .line 372
    return-void

    .line 371
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addLabelShortFormView(Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setOperaterNameListening(Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;Z)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->updateShortFormLabel()V

    .line 407
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 30
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1104
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    const-string/jumbo v25, "enter"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1105
    sget-boolean v25, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v25, :cond_0

    const-string/jumbo v25, "NetworkController"

    const-string/jumbo v26, "Entering demo mode"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->unregisterListeners()V

    .line 1107
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v25, v0

    const-string/jumbo v26, "DemoMode"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 1283
    :cond_1
    :goto_0
    return-void

    .line 1111
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    const-string/jumbo v25, "exit"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1112
    sget-boolean v25, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v25, :cond_3

    const-string/jumbo v25, "NetworkController"

    const-string/jumbo v26, "Exiting demo mode"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_3
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1116
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 1117
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_4

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1119
    .local v9, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->resetLastState()V

    .line 1117
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1121
    .end local v9    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->resetLastState()V

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1123
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    goto :goto_0

    .line 1124
    .end local v12    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    const-string/jumbo v25, "network"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 1125
    const-string/jumbo v25, "airplane"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1126
    .local v6, "airplane":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 1127
    const-string/jumbo v25, "show"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1129
    .local v18, "show":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSupportNewSpec:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    .line 1131
    const v28, 0x7f0803e6

    const v29, 0x7f11002d

    .line 1130
    move-object/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 1140
    .end local v18    # "show":Z
    :cond_6
    :goto_2
    const-string/jumbo v25, "fully"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1141
    .local v11, "fully":Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 1142
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    .line 1143
    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    .line 1145
    .local v8, "connected":Ljava/util/BitSet;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTransportType:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->set(I)V

    .line 1148
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v8}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 1149
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_a

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1151
    .restart local v9    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 1152
    iget v0, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->set(I)V

    .line 1154
    :cond_8
    invoke-virtual {v9, v8, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 1149
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1134
    .end local v8    # "connected":Ljava/util/BitSet;
    .end local v9    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v11    # "fully":Ljava/lang/String;
    .end local v12    # "i":I
    .restart local v18    # "show":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    .line 1135
    const v28, 0x7f080308

    const v29, 0x7f11002d

    .line 1134
    move-object/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto/16 :goto_2

    .line 1157
    .end local v18    # "show":Z
    .restart local v11    # "fully":Ljava/lang/String;
    :cond_a
    const-string/jumbo v25, "wifi"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1158
    .local v24, "wifi":Ljava/lang/String;
    if-eqz v24, :cond_c

    .line 1159
    const-string/jumbo v25, "show"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1160
    .restart local v18    # "show":Z
    const-string/jumbo v25, "level"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1161
    .local v13, "level":Ljava/lang/String;
    if-eqz v13, :cond_b

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v26, v0

    const-string/jumbo v25, "null"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const/16 v25, -0x1

    :goto_4
    move/from16 v0, v25

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    move/from16 v25, v0

    if-ltz v25, :cond_e

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    .line 1166
    :cond_b
    const-string/jumbo v25, "activity"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1167
    .local v5, "activity":Ljava/lang/String;
    if-eqz v5, :cond_12

    .line 1168
    const-string/jumbo v25, "inout"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    .line 1185
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v25, v0

    move/from16 v0, v18

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners()V

    .line 1188
    .end local v5    # "activity":Ljava/lang/String;
    .end local v13    # "level":Ljava/lang/String;
    .end local v18    # "show":Z
    :cond_c
    const-string/jumbo v25, "sims"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1189
    .local v19, "sims":Ljava/lang/String;
    if-eqz v19, :cond_14

    .line 1190
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x1

    const/16 v27, 0x8

    invoke-static/range {v25 .. v27}, Landroid/util/MathUtils;->constrain(III)I

    move-result v17

    .line 1191
    .local v17, "num":I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v23, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v22

    .line 1195
    .local v22, "start":I
    move/from16 v12, v22

    .restart local v12    # "i":I
    :goto_7
    add-int v25, v22, v17

    move/from16 v0, v25

    if-ge v12, v0, :cond_13

    .line 1196
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1163
    .end local v12    # "i":I
    .end local v17    # "num":I
    .end local v19    # "sims":Ljava/lang/String;
    .end local v22    # "start":I
    .end local v23    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v13    # "level":Ljava/lang/String;
    .restart local v18    # "show":Z
    :cond_d
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    sget v27, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    goto/16 :goto_4

    .line 1164
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 1168
    .restart local v5    # "activity":Ljava/lang/String;
    :cond_f
    const-string/jumbo v25, "in"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto/16 :goto_6

    .line 1168
    :cond_10
    const-string/jumbo v25, "out"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto/16 :goto_6

    .line 1179
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto/16 :goto_6

    .line 1183
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto/16 :goto_6

    .line 1198
    .end local v5    # "activity":Ljava/lang/String;
    .end local v13    # "level":Ljava/lang/String;
    .end local v18    # "show":Z
    .restart local v12    # "i":I
    .restart local v17    # "num":I
    .restart local v19    # "sims":Ljava/lang/String;
    .restart local v22    # "start":I
    .restart local v23    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    .line 1201
    .end local v12    # "i":I
    .end local v17    # "num":I
    .end local v22    # "start":I
    .end local v23    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_14
    const-string/jumbo v25, "nosim"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1202
    .local v16, "nosim":Ljava/lang/String;
    if-eqz v16, :cond_15

    .line 1203
    const-string/jumbo v25, "show"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(Z)V

    .line 1206
    :cond_15
    const-string/jumbo v25, "mobile"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1207
    .local v14, "mobile":Ljava/lang/String;
    if-eqz v14, :cond_1c

    .line 1208
    const-string/jumbo v25, "show"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1209
    .restart local v18    # "show":Z
    const-string/jumbo v25, "datatype"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1210
    .local v10, "datatype":Ljava/lang/String;
    const-string/jumbo v25, "slot"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1211
    .local v21, "slotString":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_16

    const/16 v20, 0x0

    .line 1212
    .local v20, "slot":I
    :goto_8
    const/16 v25, 0x0

    const/16 v26, 0x8

    move/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v20

    .line 1214
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    .restart local v23    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v20

    if-gt v0, v1, :cond_17

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 1217
    .local v15, "nextSlot":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1211
    .end local v15    # "nextSlot":I
    .end local v20    # "slot":I
    .end local v23    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_16
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .restart local v20    # "slot":I
    goto :goto_8

    .line 1219
    .restart local v23    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_17
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_18

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    .line 1223
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1224
    .restart local v9    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v10, :cond_1d

    const/16 v26, 0x1

    :goto_a
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 1225
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v10, :cond_1e

    const/16 v26, 0x1

    :goto_b
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 1226
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v10, :cond_1f

    const/16 v26, 0x1

    :goto_c
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1227
    if-eqz v10, :cond_19

    .line 1228
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .line 1229
    const-string/jumbo v26, "1x"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_20

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1228
    :goto_d
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1241
    :cond_19
    const-string/jumbo v25, "roam"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 1242
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v26, "show"

    const-string/jumbo v27, "roam"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1244
    :cond_1a
    const-string/jumbo v25, "level"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1245
    .restart local v13    # "level":Ljava/lang/String;
    if-eqz v13, :cond_1b

    .line 1246
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v26, "null"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2a

    const/16 v26, -0x1

    :goto_e
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 1249
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    move/from16 v26, v0

    if-ltz v26, :cond_2b

    const/16 v26, 0x1

    :goto_f
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    .line 1251
    :cond_1b
    const-string/jumbo v25, "activity"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1252
    .restart local v5    # "activity":Ljava/lang/String;
    if-eqz v5, :cond_2f

    .line 1253
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1254
    const-string/jumbo v25, "inout"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 1256
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    .line 1271
    :goto_10
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move/from16 v0, v18

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    .line 1272
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    .line 1274
    .end local v5    # "activity":Ljava/lang/String;
    .end local v9    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v10    # "datatype":Ljava/lang/String;
    .end local v13    # "level":Ljava/lang/String;
    .end local v18    # "show":Z
    .end local v20    # "slot":I
    .end local v21    # "slotString":Ljava/lang/String;
    .end local v23    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1c
    const-string/jumbo v25, "carriernetworkchange"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1275
    .local v7, "carrierNetworkChange":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 1276
    const-string/jumbo v25, "show"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1277
    .restart local v18    # "show":Z
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_1

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1279
    .restart local v9    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setCarrierNetworkChangeMode(Z)V

    .line 1277
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 1224
    .end local v7    # "carrierNetworkChange":Ljava/lang/String;
    .end local v12    # "i":I
    .restart local v10    # "datatype":Ljava/lang/String;
    .restart local v20    # "slot":I
    .restart local v21    # "slotString":Ljava/lang/String;
    .restart local v23    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_a

    .line 1225
    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_b

    .line 1226
    :cond_1f
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 1230
    :cond_20
    const-string/jumbo v26, "3g"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 1231
    :cond_21
    const-string/jumbo v26, "4g"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 1232
    :cond_22
    const-string/jumbo v26, "4g+"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_23

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 1233
    :cond_23
    const-string/jumbo v26, "e"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_24

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 1234
    :cond_24
    const-string/jumbo v26, "g"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_25

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 1235
    :cond_25
    const-string/jumbo v26, "h"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_26

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 1236
    :cond_26
    const-string/jumbo v26, "lte"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_27

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 1237
    :cond_27
    const-string/jumbo v26, "lte+"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_28

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 1238
    :cond_28
    const-string/jumbo v26, "dis"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_29

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 1239
    :cond_29
    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 1247
    .restart local v13    # "level":Ljava/lang/String;
    :cond_2a
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1248
    const/16 v27, 0x5

    .line 1247
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    goto/16 :goto_e

    .line 1249
    :cond_2b
    const/16 v26, 0x0

    goto/16 :goto_f

    .line 1254
    .restart local v5    # "activity":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v25, "in"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2d

    .line 1259
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto/16 :goto_10

    .line 1254
    :cond_2d
    const-string/jumbo v25, "out"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2e

    .line 1262
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto/16 :goto_10

    .line 1265
    :cond_2e
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto/16 :goto_10

    .line 1269
    :cond_2f
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto/16 :goto_10
.end method

.method doUpdateMobileControllers()V
    .locals 2

    .prologue
    .line 757
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 758
    .local v0, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    .line 759
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 762
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasCorrectMobileControllers(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    .line 767
    return-void

    .line 769
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCurrentSubscriptions(Ljava/util/List;)V

    .line 770
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    .line 771
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 772
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1047
    const-string/jumbo v2, "NetworkController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    const-string/jumbo v2, "  - telephony ------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    const-string/jumbo v2, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1053
    const-string/jumbo v2, "  - connectivity ------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v2, "  mConnectedTransports="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1055
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1056
    const-string/jumbo v2, "  mValidatedTransports="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1058
    const-string/jumbo v2, "  mInetCondition="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1060
    const-string/jumbo v2, "  mAirplaneMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1062
    const-string/jumbo v2, "  mLocale="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1064
    const-string/jumbo v2, "  mLastServiceState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1066
    const-string/jumbo v2, "  mIsEmergency="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1068
    const-string/jumbo v2, "  mEmergencySource="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->emergencyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1072
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1073
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1071
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1077
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1079
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->dump(Ljava/io/PrintWriter;)V

    .line 1080
    return-void
.end method

.method public getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    return-object v0
.end method

.method public getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    return-object v0
.end method

.method public getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method public getMobileDataNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getMobileDataNetworkName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMobileDataNetworkName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController(I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 509
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getMobileSignalControllers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getNetworkSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-object v0, v0, Lcom/android/systemui/moto/NetworkConfig;->networkNameSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getSimStates()Lcom/android/systemui/moto/SimStates;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimStates:Lcom/android/systemui/moto/SimStates;

    return-object v0
.end method

.method handleConfigurationChanged()V
    .locals 4

    .prologue
    .line 716
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 717
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 719
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getSubContext(Landroid/telephony/SubscriptionInfo;)Landroid/content/Context;

    move-result-object v2

    .line 720
    .local v2, "subContext":Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v2    # "subContext":Landroid/content/Context;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 724
    return-void
.end method

.method hasCorrectMobileControllers(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "allSubscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v4, 0x0

    .line 874
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 875
    return v4

    .line 877
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 878
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 880
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasSubcriptionChanged(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SubscriptionInfo;)Z

    move-result v2

    .line 878
    if-eqz v2, :cond_1

    .line 882
    :cond_2
    return v4

    .line 885
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public hasEmergencyCryptKeeperText()Z
    .locals 1

    .prologue
    .line 1298
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    return v0
.end method

.method public hasInternetConnection()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    return v0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 482
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCustomizeEnabled()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 516
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 519
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 520
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultVoiceSubId()I

    move-result v2

    .line 523
    .local v2, "voiceSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 524
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 525
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 526
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-nez v3, :cond_3

    .line 528
    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 527
    add-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 529
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Found emergency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_2
    return v4

    .line 524
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    .end local v0    # "i":I
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_6

    .line 535
    add-int/lit16 v3, v2, 0xc8

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 536
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Getting emergency from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return v3

    .line 541
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 543
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 542
    add-int/lit16 v3, v3, 0x190

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 544
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Getting assumed emergency from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 545
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 544
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return v3

    .line 548
    :cond_8
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find controller for voice sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_9
    add-int/lit16 v3, v2, 0x12c

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 551
    return v6
.end method

.method public isEnableWideIcons()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->enableWide:Z

    return v0
.end method

.method public isRadioOn()Z
    .locals 1

    .prologue
    .line 1302
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 557
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortFormLabelEnabled()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->networkNameShortFormSupported:Z

    return v0
.end method

.method public isShowActivityIconOnSB()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->enableActivityIconOnSB:Z

    return v0
.end method

.method public isShowCustomActivityIconOnQS()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->enableCustomActivityIconOnQS:Z

    return v0
.end method

.method public isWiFiConnected()Z
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method isWifiConnected()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    return v0
.end method

.method isWifiEnabled()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_policy_NetworkControllerImpl_37679(Z)V
    .locals 0
    .param p1, "userSetup"    # Z

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleSetUserSetupComplete(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$10;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 712
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 649
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-eqz v4, :cond_0

    .line 650
    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive: intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 654
    const-string/jumbo v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 653
    if-eqz v4, :cond_3

    .line 655
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    .line 702
    :cond_2
    :goto_0
    return-void

    .line 656
    :cond_3
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 657
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 658
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    goto :goto_0

    .line 659
    :cond_4
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 661
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto :goto_0

    .line 662
    :cond_5
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 665
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 666
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 667
    .local v1, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 669
    .end local v1    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v2    # "i":I
    :cond_6
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 671
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimStates:Lcom/android/systemui/moto/SimStates;

    invoke-virtual {v4, p2}, Lcom/android/systemui/moto/SimStates;->updateFromIntent(Landroid/content/Intent;)V

    .line 672
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 675
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 676
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 677
    .restart local v1    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    .line 675
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 680
    .end local v1    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v2    # "i":I
    :cond_7
    const-string/jumbo v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 681
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    .line 682
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 685
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto/16 :goto_0

    .line 688
    :cond_8
    const-string/jumbo v4, "subscription"

    .line 689
    const/4 v5, -0x1

    .line 688
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 690
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 691
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_9

    .line 692
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 695
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto/16 :goto_0

    .line 699
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onWifiConnectionStateChanged(ZZ)V
    .locals 4
    .param p1, "wifiEnabled"    # Z
    .param p2, "wifiConnected"    # Z

    .prologue
    .line 617
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-ne v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eq v2, p2, :cond_1

    .line 618
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    .line 619
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 622
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 623
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 624
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->onWifiConnectionStateChanged(ZZ)V

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 628
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public playEriSoundAfterBoot()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->enableEriSounds:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->playEriSoundAfterBoot()V

    .line 415
    :cond_0
    return-void
.end method

.method recalculateEmergency()V
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    .line 568
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isRejectCodeEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEmergencyCallsOnly(Z)V

    .line 569
    return-void

    .line 568
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshPanelCarrierLabel()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->updatePanelCarrierLabel()V

    .line 438
    return-void
.end method

.method public refreshShortFormLabel()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->updateShortFormLabel()V

    .line 434
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    .line 595
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 592
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V

    .line 376
    return-void
.end method

.method setCurrentSubscriptions(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p1, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$11;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 800
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 803
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 804
    .local v13, "cachedControllers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/statusbar/policy/MobileSignalController;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v14, v5, :cond_0

    .line 805
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 806
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 805
    invoke-virtual {v13, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 804
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 808
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 809
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    .line 810
    .local v16, "num":I
    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    .line 813
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 814
    .local v9, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v17

    .line 816
    .local v17, "subId":I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 817
    .local v12, "cachedController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v12, :cond_2

    .line 818
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasSubcriptionChanged(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SubscriptionInfo;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 817
    if-eqz v5, :cond_2

    .line 819
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 821
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 810
    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 824
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getSubContext(Landroid/telephony/SubscriptionInfo;)Landroid/content/Context;

    move-result-object v3

    .line 825
    .local v3, "subContext":Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v4

    .line 826
    .local v4, "subConfig":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    new-instance v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 828
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 829
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    move-object/from16 v8, p0

    .line 826
    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    .line 831
    .local v2, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    .line 832
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {v2, v5, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->onWifiConnectionStateChanged(ZZ)V

    .line 833
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 834
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-nez v5, :cond_3

    .line 835
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 837
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v5, :cond_1

    .line 838
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    goto :goto_2

    .line 842
    .end local v2    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v3    # "subContext":Landroid/content/Context;
    .end local v4    # "subConfig":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v12    # "cachedController":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v17    # "subId":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v5, :cond_6

    .line 843
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v14, v5, :cond_6

    .line 844
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 845
    .local v15, "key":I
    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    if-ne v5, v6, :cond_5

    .line 846
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 848
    :cond_5
    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    .line 843
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 851
    .end local v15    # "key":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    .line 852
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    .line 857
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 858
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 599
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 613
    return-void
.end method

.method public updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "newServiceState"    # Landroid/telephony/ServiceState;
    .param p2, "preServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    .line 420
    return-void
.end method

.method protected updateNoSims()V
    .locals 3

    .prologue
    .line 777
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 778
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimStates:Lcom/android/systemui/moto/SimStates;

    invoke-virtual {v1}, Lcom/android/systemui/moto/SimStates;->hasNoSims()Z

    move-result v0

    .line 779
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    if-ne v0, v1, :cond_0

    .line 780
    invoke-static {}, Lcom/android/systemui/moto/NetworkStateTracker;->shouldDifferSimError()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 782
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimStates:Lcom/android/systemui/moto/SimStates;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPrevSimStates:Lcom/android/systemui/moto/SimStates;

    invoke-virtual {v1, v2}, Lcom/android/systemui/moto/SimStates;->equals(Lcom/android/systemui/moto/SimStates;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 779
    if-eqz v1, :cond_1

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimStates:Lcom/android/systemui/moto/SimStates;

    invoke-virtual {v1}, Lcom/android/systemui/moto/SimStates;->clone()Lcom/android/systemui/moto/SimStates;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPrevSimStates:Lcom/android/systemui/moto/SimStates;

    .line 785
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    .line 786
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(Z)V

    .line 788
    :cond_1
    return-void

    .line 777
    :cond_2
    const/4 v0, 0x0

    .local v0, "hasNoSims":Z
    goto :goto_0
.end method
