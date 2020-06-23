.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$1;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field mCurrentContext:Landroid/content/Context;

.field private mDataNetType:I

.field private mDataState:I

.field final mDataTypeLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private final mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field protected mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

.field private mIsSIMLocked:Z

.field private final mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field private final mNetworkNamebracketsBegin:Ljava/lang/String;

.field private final mNetworkNamebracketsEnd:Ljava/lang/String;

.field final mNetworkToIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSpnReceiver:Landroid/content/BroadcastReceiver;

.field final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .param p1, "-value"    # Landroid/telephony/ServiceState;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .param p1, "-value"    # Landroid/telephony/SignalStrength;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "dataType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateIwlanWithVoiceNetworkType(Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p3, "hasMobileData"    # Z
    .param p4, "phone"    # Landroid/telephony/TelephonyManager;
    .param p5, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p6, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p7, "info"    # Landroid/telephony/SubscriptionInfo;
    .param p8, "defaults"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;
    .param p9, "receiverLooper"    # Landroid/os/Looper;

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MobileSignalController("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p5

    move-object v6, p6

    .line 127
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentContext:Landroid/content/Context;

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsSIMLocked:Z

    .line 954
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSpnReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeLookup:Landroid/util/SparseArray;

    .line 132
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 133
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 134
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    .line 135
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 136
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;

    invoke-virtual {p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, p9

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;ILandroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 138
    const v1, 0x7f11048e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 140
    const v1, 0x7f11048f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNamebracketsBegin:Ljava/lang/String;

    .line 141
    const v1, 0x7f110490

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNamebracketsEnd:Ljava/lang/String;

    .line 144
    const v1, 0x1040306

    .line 143
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 148
    invoke-virtual {p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "networkName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    iput-boolean p3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 156
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;

    new-instance v2, Landroid/os/Handler;

    move-object/from16 v0, p9

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentContext:Landroid/content/Context;

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->slotId:I

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->subId:I

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWifiEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiEnabled:Z

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWifiConnected()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    .line 176
    new-instance v1, Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    invoke-direct {v1}, Lcom/android/systemui/moto/ExtendedMobileDataInfo;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    invoke-virtual {p7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    iget-object v2, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v2, v2, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    iput-boolean v2, v1, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomize:Z

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    iget-object v2, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v2, v2, Lcom/android/systemui/moto/NetworkConfig;->enableActivityIconOnSB:Z

    iput-boolean v2, v1, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableActivityIconOnSB:Z

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    iget-object v2, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v2, v2, Lcom/android/systemui/moto/NetworkConfig;->enableCustomActivityIconOnQS:Z

    iput-boolean v2, v1, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomActivityIconOnQS:Z

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    iget-object v2, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v2, v2, Lcom/android/systemui/moto/NetworkConfig;->showSeparatedSignalBars:Z

    iput-boolean v2, v1, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->showSeparatedSignalBars:Z

    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    iget-object v1, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v1, v1, Lcom/android/systemui/moto/NetworkConfig;->showBothWifiAndMobileNetwork:Z

    if-nez v1, :cond_1

    .line 183
    invoke-static {}, Lcom/android/systemui/moto/NetworkStateTracker;->isMultipleSimDevice()Z

    move-result v1

    .line 182
    :goto_1
    iput-boolean v1, v2, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->mobileShowMobileWhenWifiActive:Z

    .line 185
    return-void

    .line 149
    .end local v7    # "networkName":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .restart local v7    # "networkName":Ljava/lang/String;
    goto/16 :goto_0

    .line 182
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getContentDescriptionId()I
    .locals 3

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v1, v1, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    if-eqz v1, :cond_1

    .line 1046
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    .line 1048
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 1047
    invoke-static {v2, v1}, Lcom/android/systemui/moto/MotoAccessibilityContentDescriptions;->getContentDescription(II)I

    move-result v0

    .line 1055
    .local v0, "id":I
    :goto_0
    return v0

    .line 1050
    .end local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/moto/MotoAccessibilityContentDescriptions;->getContentDescription(II)I

    move-result v0

    .restart local v0    # "id":I
    goto :goto_0

    .line 1053
    .end local v0    # "id":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getContentDescription()I

    move-result v0

    .restart local v0    # "id":I
    goto :goto_0
.end method

.method private getDataGroup()Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;
    .locals 6

    .prologue
    .line 1015
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 1021
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-object v3, v3, Lcom/android/systemui/moto/NetworkConfig;->operatorName:Ljava/lang/String;

    const-string/jumbo v4, "vzw"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1022
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1021
    if-eqz v3, :cond_0

    .line 1023
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    if-eqz v3, :cond_0

    .line 1024
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    .line 1025
    .local v2, "voiceType":I
    if-eqz v2, :cond_0

    .line 1026
    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    .line 1027
    move v0, v2

    .line 1034
    .end local v2    # "voiceType":I
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1035
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Data type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeLookup:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v1, 0x1

    .line 1038
    .local v1, "validDataType":Z
    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeLookup:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    :goto_1
    return-object v3

    .line 1037
    .end local v1    # "validDataType":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "validDataType":Z
    goto :goto_0

    .line 1038
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeLookup:Landroid/util/SparseArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    goto :goto_1
.end method

.method private getNumLevels()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 337
    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method private hasService()Z
    .locals 5

    .prologue
    const/16 v4, 0x12

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 473
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_5

    .line 480
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 509
    return v1

    .line 482
    :pswitch_0
    return v2

    .line 487
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    .line 488
    .local v0, "voiceNetworkType":I
    if-eq v0, v4, :cond_0

    .line 489
    if-nez v0, :cond_2

    .line 490
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 492
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    :cond_1
    return v2

    .line 497
    :cond_2
    return v1

    .line 502
    .end local v0    # "voiceNetworkType":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 504
    return v2

    .line 507
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 512
    :cond_5
    return v2

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    return v0
.end method

.method private isCdma()Z
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v2, 0x0

    .line 518
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v3, v3, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    if-nez v3, :cond_1

    .line 519
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :cond_0
    return v2

    .line 526
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_2

    .line 527
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    .line 528
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v3, :cond_3

    .line 529
    return v0

    .line 526
    :cond_2
    const/4 v0, 0x0

    .local v0, "isCdma":Z
    goto :goto_0

    .line 533
    .end local v0    # "isCdma":Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 534
    .local v1, "tech":I
    const/4 v3, 0x4

    if-lt v1, v3, :cond_5

    .line 535
    const/16 v3, 0x8

    if-gt v1, v3, :cond_5

    .line 549
    :cond_4
    const/4 v2, 0x1

    return v2

    .line 536
    :cond_5
    const/16 v3, 0xc

    if-eq v1, v3, :cond_4

    .line 537
    const/16 v3, 0xd

    if-eq v1, v3, :cond_4

    .line 542
    if-eqz v1, :cond_6

    .line 543
    if-ne v1, v4, :cond_7

    .line 544
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    if-eq v3, v4, :cond_7

    .line 534
    :cond_6
    if-nez v0, :cond_4

    .line 551
    :cond_7
    return v2
.end method

.method private isDataDisabled()Z
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isEvdo()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1065
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v3, :cond_0

    return v2

    .line 1066
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 1067
    .local v0, "radioTech":I
    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    .line 1068
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 1067
    :cond_1
    :goto_0
    return v1

    .line 1069
    :cond_2
    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    .line 1070
    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method private isLte()Z
    .locals 4

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1075
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_2

    .line 1078
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 1079
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1079
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1075
    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 564
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    return v2

    .line 568
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v3, v3, Lcom/android/systemui/moto/NetworkConfig;->roamingIndicationDisabled:Z

    if-eqz v3, :cond_1

    .line 569
    return v2

    .line 573
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 574
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    .line 575
    .local v0, "iconMode":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v3

    if-eq v3, v1, :cond_4

    .line 576
    if-eqz v0, :cond_2

    .line 577
    if-ne v0, v1, :cond_3

    .line 575
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 577
    goto :goto_0

    :cond_4
    move v1, v2

    .line 575
    goto :goto_0

    .line 579
    .end local v0    # "iconMode":I
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    :cond_6
    return v2
.end method

.method private isVoice1xOverrideMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1097
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v1, v1, Lcom/android/systemui/moto/NetworkConfig;->enable1xOverrideDuringCdmaVoiceCall:Z

    if-eqz v1, :cond_5

    .line 1098
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isLte()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_2

    .line 1100
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 1101
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 1104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_5

    .line 1105
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .line 1106
    const/16 v3, 0xe

    .line 1105
    if-eq v1, v3, :cond_5

    .line 1108
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1

    .line 1109
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 1116
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveCallType()I

    move-result v1

    sget v3, Landroid/telephony/TelephonyManager;->CALL_TYPE_CS_VOICE:I

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1099
    :cond_2
    const/4 v0, 0x0

    .local v0, "isCdmaOrLte":Z
    goto :goto_0

    .line 1111
    .end local v0    # "isCdmaOrLte":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ro.ril.svdo"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1108
    if-nez v1, :cond_1

    .line 1112
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isLte()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "ro.ril.svlte1x"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1101
    if-nez v1, :cond_1

    .line 1121
    :cond_5
    return v2

    :cond_6
    move v1, v2

    .line 1116
    goto :goto_1
.end method

.method private mapIconSets()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x13

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 270
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 279
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 278
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 297
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 298
    .local v0, "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    if-eqz v1, :cond_0

    .line 299
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 310
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 309
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeLookup:Landroid/util/SparseArray;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/moto/CarrierNetworkType;->loadCarrierNetworkMap(Landroid/content/Context;Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V

    .line 328
    return-void

    .line 286
    .end local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 287
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 286
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 289
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 288
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 291
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 290
    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 293
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 292
    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 312
    .restart local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 313
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 312
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    if-eqz v1, :cond_4

    .line 318
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 319
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 318
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 322
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 321
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private registerSpnReceiver()V
    .locals 3

    .prologue
    .line 966
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 967
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 968
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSpnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 969
    return-void
.end method

.method private unregisterSpnReceiver()V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshShortFormLabel()V

    .line 973
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshPanelCarrierLabel()V

    .line 974
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSpnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 975
    return-void
.end method

.method private updateDataSim()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 647
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v0

    .line 648
    .local v0, "defaultDataSub":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 660
    :goto_1
    return-void

    .line 649
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    goto :goto_1
.end method

.method private updateIwlanWithVoiceNetworkType(Landroid/telephony/ServiceState;I)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "dataType"    # I

    .prologue
    .line 1005
    if-eqz p1, :cond_0

    const/16 v0, 0x12

    if-ne p2, v0, :cond_0

    .line 1006
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 1007
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update IWLAN network with voice type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    return-void
.end method

.method private updateMobileServiceState(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v0, 0x0

    .line 980
    if-nez p1, :cond_0

    return-void

    .line 981
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_2

    .line 982
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 984
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    .line 984
    if-eqz v0, :cond_1

    .line 986
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 1000
    :cond_1
    :goto_0
    return-void

    .line 996
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 997
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_3

    .line 998
    const/4 v0, 0x3

    .line 997
    :cond_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    goto :goto_0
.end method

.method private final updateTelephony()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 728
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    const-string/jumbo v4, " ss="

    .line 729
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 729
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 732
    const-string/jumbo v4, " voice1xOverrideMode: "

    .line 729
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 732
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVoice1xOverrideMode()Z

    move-result v4

    .line 729
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_8

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    .line 735
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_3

    .line 736
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    if-nez v0, :cond_2

    .line 737
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVoice1xOverrideMode()Z

    move-result v0

    .line 736
    if-eqz v0, :cond_9

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 742
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getMaxLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_a

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 749
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v1, :cond_4

    .line 750
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v3, v2

    .line 749
    :cond_4
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 753
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 758
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eq v1, v0, :cond_6

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 763
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_7

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 763
    if-eqz v0, :cond_7

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 769
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshShortFormLabel()V

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshPanelCarrierLabel()V

    .line 773
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 774
    return-void

    :cond_8
    move v1, v3

    .line 734
    goto/16 :goto_0

    .line 740
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    goto/16 :goto_1

    .line 747
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto/16 :goto_2

    .line 755
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_3
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    .locals 1

    .prologue
    .line 469
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 791
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  NetworkConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method public getCurrentIconId()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->showSeparatedSignalBars:Z

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 345
    :goto_0
    invoke-static {v1, v3, v4, v5, v0}, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->getCurrentIconId(ZZIIZ)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 349
    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v0, v3, :cond_2

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getCarrierChangeState(I)I

    move-result v0

    return v0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v4

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    if-nez v0, :cond_3

    .line 356
    :goto_1
    invoke-static {v3, v4, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getState(IIZ)I

    move-result v0

    return v0

    :cond_3
    move v1, v2

    .line 357
    goto :goto_1

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v0, :cond_5

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getEmptyState(I)I

    move-result v0

    return v0

    .line 361
    :cond_5
    return v2
.end method

.method public getLabel(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "preexistingLabel"    # Ljava/lang/String;
    .param p2, "isMobileLabel"    # Z

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-nez v1, :cond_0

    .line 1135
    const-string/jumbo v1, ""

    return-object v1

    .line 1137
    :cond_0
    const-string/jumbo v0, ""

    .line 1145
    .local v0, "mobileLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_3

    .line 1146
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1185
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-object v2, v2, Lcom/android/systemui/moto/NetworkConfig;->networkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1190
    :cond_2
    if-eqz p2, :cond_9

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1148
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v1, :cond_4

    .line 1151
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    .line 1152
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 1156
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v1, :cond_5

    .line 1157
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1160
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsSIMLocked:Z

    if-eqz v1, :cond_6

    .line 1161
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 1164
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiEnabled:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    if-eqz v1, :cond_7

    .line 1165
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1172
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v1, v1, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    if-nez v1, :cond_8

    .line 1173
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentContext:Landroid/content/Context;

    .line 1174
    const v2, 0x7f11049e

    .line 1173
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1177
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v1, :cond_1

    .line 1178
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1193
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_a

    .end local v0    # "mobileLabel":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .restart local v0    # "mobileLabel":Ljava/lang/String;
    :cond_a
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public getMobileState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    return-object v0
.end method

.method public getQsCurrentIconId()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->showSeparatedSignalBars:Z

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 370
    :goto_0
    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->getCurrentIconId(ZZIIZ)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 374
    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v0, :cond_2

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getAirplaneModeState(I)I

    move-result v0

    return v0

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v0

    return v0
.end method

.method public getSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 588
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 589
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    const-string/jumbo v0, "showSpn"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 591
    const-string/jumbo v0, "spn"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 592
    const-string/jumbo v0, "spnData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    const-string/jumbo v0, "showPlmn"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 594
    const-string/jumbo v0, "plmn"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 590
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->enableATTrejectCode:Z

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v1, "rejectCode"

    invoke-virtual {p1, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    if-eq v1, v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 601
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v1, "rejectCode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Receive rejectcode from spn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 644
    :cond_2
    :goto_0
    return-void

    .line 605
    :cond_3
    const-string/jumbo v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 607
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto :goto_0

    .line 609
    :cond_4
    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 610
    const-string/jumbo v0, "subscription"

    .line 611
    const/4 v1, -0x1

    .line 610
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 612
    .local v11, "subId":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-ne v11, v0, :cond_2

    .line 613
    const-string/jumbo v0, "LOCKED"

    .line 614
    const-string/jumbo v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsSIMLocked:Z

    .line 615
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto :goto_0

    .line 619
    .end local v11    # "subId":I
    :cond_5
    const-string/jumbo v0, "com.motorola.cellbroadcastreceiver.CB_INFO_ON_SYSTEMUI"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 620
    const-string/jumbo v0, "enable"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 621
    .local v9, "enable":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCellBroadcastEnabled:Z

    if-ne v0, v9, :cond_6

    return-void

    .line 622
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCellBroadcastEnabled:Z

    .line 623
    if-nez v9, :cond_7

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cellBroadcastMessage:Ljava/lang/String;

    .line 626
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshPanelCarrierLabel()V

    goto :goto_0

    .line 627
    .end local v9    # "enable":Z
    :cond_8
    const-string/jumbo v0, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCellBroadcastEnabled:Z

    if-nez v0, :cond_9

    return-void

    .line 629
    :cond_9
    const-string/jumbo v8, ""

    .line 630
    .local v8, "cbMsg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 631
    .local v10, "extras":Landroid/os/Bundle;
    if-eqz v10, :cond_a

    .line 632
    const-string/jumbo v0, "message"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellBroadcastMessage;

    .line 633
    .local v7, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    if-eqz v7, :cond_a

    .line 634
    invoke-virtual {v7}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    .line 638
    .end local v7    # "cbMessage":Landroid/telephony/CellBroadcastMessage;
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cellBroadcastMessage:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cellBroadcastMessage:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshPanelCarrierLabel()V

    goto/16 :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 43
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .prologue
    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v37

    check-cast v37, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 388
    .local v37, "icons":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getContentDescriptionId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v33

    .line 390
    .local v33, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, v37

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v27

    .line 391
    .local v27, "dataContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v2, v3, :cond_1

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    move/from16 v34, v0

    .line 396
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-nez v2, :cond_2

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 396
    if-nez v2, :cond_2

    .line 398
    move/from16 v40, v34

    .line 402
    :goto_1
    new-instance v41, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    xor-int/lit8 v2, v2, 0x1

    .line 403
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v3

    .line 402
    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 406
    .local v41, "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    const/16 v24, 0x0

    .line 407
    .local v24, "qsTypeIcon":I
    const/16 v38, 0x0

    .line 408
    .local v38, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    const/16 v28, 0x0

    .line 413
    .local v28, "description":Ljava/lang/String;
    if-eqz v40, :cond_4

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    move/from16 v24, v0

    .line 414
    :goto_3
    new-instance v38, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .end local v38    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    xor-int/lit8 v2, v2, 0x1

    .line 415
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v3

    .line 414
    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 416
    .local v38, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v2, :cond_6

    const/16 v28, 0x0

    .line 419
    .end local v28    # "description":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_7

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    xor-int/lit8 v2, v2, 0x1

    .line 419
    if-eqz v2, :cond_7

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    move/from16 v25, v0

    .line 422
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_8

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    xor-int/lit8 v2, v2, 0x1

    .line 422
    if-eqz v2, :cond_8

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    move/from16 v26, v0

    .line 425
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v2, :cond_9

    :goto_8
    and-int v40, v40, v34

    .line 426
    .local v40, "showDataIcon":Z
    if-eqz v40, :cond_a

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    move/from16 v23, v0

    .line 430
    .local v23, "typeIcon":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v2, v2, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    if-eqz v2, :cond_0

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVoice1xOverrideMode()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v12, v2, Lcom/android/systemui/moto/NetworkConfig;->showNoIconDuringCdmaVoiceCall:Z

    .line 435
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 437
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    iget-boolean v7, v7, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->mobileShowMobileWhenWifiActive:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v8

    .line 439
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 440
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v11, v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v11, v11, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v11, v11, Lcom/android/systemui/moto/NetworkConfig;->showDataDisabledIcon:Z

    .line 442
    :goto_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v13, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v13, v13, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    xor-int/lit8 v13, v13, 0x1

    .line 435
    invoke-static/range {v2 .. v13}, Lcom/android/systemui/moto/NetworkStateTracker;->getDataState(Landroid/telephony/ServiceState;IZZIZZZZZZZ)I

    move-result v35

    .line 444
    .local v35, "dataState":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataGroup()Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    move-result-object v36

    .line 445
    .local v36, "group":Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->sbData(I)I

    move-result v42

    .line 446
    .end local v23    # "typeIcon":I
    .local v42, "typeIcon":I
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->qsData(I)I

    move-result v39

    .line 447
    .end local v24    # "qsTypeIcon":I
    .local v39, "qsTypeIcon":I
    if-eqz v42, :cond_d

    const/16 v19, 0x1

    .line 448
    .local v19, "dataVisible":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v15, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    move/from16 v18, v0

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    move/from16 v21, v0

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v22

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isFemtoCell:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v2, v2, Lcom/android/systemui/moto/NetworkConfig;->enableFemtocellIndicator:Z

    if-eqz v2, :cond_f

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v2}, Lcom/android/systemui/moto/MotoSystemUIUtils;->updateCdmaFemtoIcon(Landroid/telephony/ServiceState;)Z

    move-result v24

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    move/from16 v25, v0

    .line 448
    invoke-static/range {v13 .. v25}, Lcom/android/systemui/moto/NetworkStateTracker;->updateExtendedInfo(Lcom/android/systemui/moto/ExtendedMobileDataInfo;Landroid/telephony/ServiceState;ZZZIZZZZZZI)V

    .line 457
    const/16 v25, 0x0

    .line 458
    .local v25, "activityIn":Z
    const/16 v26, 0x0

    .local v26, "activityOut":Z
    move/from16 v23, v42

    .end local v42    # "typeIcon":I
    .restart local v23    # "typeIcon":I
    move/from16 v24, v39

    .line 462
    .end local v19    # "dataVisible":Z
    .end local v25    # "activityIn":Z
    .end local v26    # "activityOut":Z
    .end local v35    # "dataState":I
    .end local v36    # "group":Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;
    .end local v39    # "qsTypeIcon":I
    .restart local v24    # "qsTypeIcon":I
    :cond_0
    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    move/from16 v29, v0

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    move/from16 v31, v0

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mExtendedInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    move-object/from16 v32, v0

    move-object/from16 v20, p1

    move-object/from16 v21, v41

    move-object/from16 v22, v38

    .line 461
    invoke-interface/range {v20 .. v32}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZLcom/android/systemui/moto/ExtendedMobileDataInfo;)V

    .line 465
    return-void

    .line 391
    .end local v23    # "typeIcon":I
    .end local v24    # "qsTypeIcon":I
    .end local v38    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v40    # "showDataIcon":Z
    .end local v41    # "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_1
    const/16 v34, 0x0

    .local v34, "dataDisabled":Z
    goto/16 :goto_0

    .line 396
    .end local v34    # "dataDisabled":Z
    :cond_2
    const/16 v40, 0x1

    .local v40, "showDataIcon":Z
    goto/16 :goto_1

    .line 402
    .end local v40    # "showDataIcon":Z
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 413
    .restart local v24    # "qsTypeIcon":I
    .restart local v28    # "description":Ljava/lang/String;
    .local v38, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .restart local v41    # "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 414
    .end local v38    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 416
    .local v38, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    move-object/from16 v28, v0

    .local v28, "description":Ljava/lang/String;
    goto/16 :goto_5

    .line 419
    .end local v28    # "description":Ljava/lang/String;
    :cond_7
    const/16 v25, 0x0

    .restart local v25    # "activityIn":Z
    goto/16 :goto_6

    .line 422
    .end local v25    # "activityIn":Z
    :cond_8
    const/16 v26, 0x0

    .restart local v26    # "activityOut":Z
    goto/16 :goto_7

    .line 425
    .end local v26    # "activityOut":Z
    :cond_9
    const/16 v34, 0x1

    goto/16 :goto_8

    .line 426
    .local v40, "showDataIcon":Z
    :cond_a
    const/16 v23, 0x0

    .restart local v23    # "typeIcon":I
    goto/16 :goto_9

    .line 432
    :cond_b
    const/4 v12, 0x0

    .local v12, "showNoIcon":Z
    goto/16 :goto_a

    .line 440
    .end local v12    # "showNoIcon":Z
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 447
    .end local v23    # "typeIcon":I
    .end local v24    # "qsTypeIcon":I
    .restart local v35    # "dataState":I
    .restart local v36    # "group":Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;
    .restart local v39    # "qsTypeIcon":I
    .restart local v42    # "typeIcon":I
    :cond_d
    const/16 v19, 0x0

    .restart local v19    # "dataVisible":Z
    goto/16 :goto_c

    .line 453
    :cond_e
    const/16 v24, 0x1

    goto :goto_d

    :cond_f
    const/16 v24, 0x0

    goto :goto_d
.end method

.method public onWifiConnectionStateChanged(ZZ)V
    .locals 1
    .param p1, "wifiEnabled"    # Z
    .param p2, "wifiConnected"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiEnabled:Z

    if-ne v0, p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    if-eq v0, p2, :cond_1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiEnabled:Z

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    .line 229
    :cond_1
    return-void
.end method

.method public registerListener()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 236
    const v2, 0x105f1

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    .line 246
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobile_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    .line 248
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerSpnReceiver()V

    .line 252
    return-void
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "activity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v4, :cond_1

    .line 783
    if-ne p1, v2, :cond_2

    move v1, v2

    .line 782
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v4, :cond_0

    .line 785
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 784
    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    .line 786
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 787
    return-void

    :cond_1
    move v1, v2

    .line 782
    goto :goto_0

    :cond_2
    move v1, v3

    .line 783
    goto :goto_0

    :cond_3
    move v2, v3

    .line 785
    goto :goto_1
.end method

.method public setAirplaneMode(Z)V
    .locals 1
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 200
    return-void
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .locals 1
    .param p1, "carrierNetworkChangeMode"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    .line 219
    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 0
    .param p1, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    .line 191
    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 1
    .param p1, "userSetup"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 205
    return-void
.end method

.method public unregisterListener()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterSpnReceiver()V

    .line 261
    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 3
    .param p1, "connectedTransports"    # Ljava/util/BitSet;
    .param p2, "validatedTransports"    # Ljava/util/BitSet;

    .prologue
    .line 209
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 210
    .local v0, "isValidated":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 212
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 214
    return-void

    .line 212
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;

    .prologue
    .line 667
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 668
    const-string/jumbo v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkName showSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 669
    const-string/jumbo v2, " spn="

    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 669
    const-string/jumbo v2, " dataSpn="

    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 670
    const-string/jumbo v2, " showPlmn="

    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 670
    const-string/jumbo v2, " plmn="

    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .local v7, "str":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .local v8, "strData":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 675
    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 679
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    const-string/jumbo v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNamebracketsBegin:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :cond_2
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNamebracketsEnd:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 702
    :goto_0
    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    .line 703
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    :cond_4
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 715
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    .line 716
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    const/4 v2, 0x1

    move v3, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p5

    .line 715
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->getShortFormNetworkName(Lcom/android/systemui/moto/NetworkConfig;ZZZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->shortFormLabel:Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshShortFormLabel()V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshPanelCarrierLabel()V

    .line 720
    return-void

    .line 698
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, ""

    :goto_2
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 699
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_2

    .line 711
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_1
.end method
