.class public Lcom/android/systemui/moto/NetworkStateTracker;
.super Ljava/lang/Object;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/moto/NetworkStateTracker$1;,
        Lcom/android/systemui/moto/NetworkStateTracker$DefaultDataSubscriptionListener;,
        Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;,
        Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;,
        Lcom/android/systemui/moto/NetworkStateTracker$PanelExpansionListener;,
        Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static mDifferingIconForSimError:Z

.field public static sPhoneCount:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEri:Lcom/android/systemui/moto/VzwEri;

.field private mEriSoundListener:Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;

.field private mHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/moto/NetworkStateTracker;)Lcom/android/systemui/moto/VzwEri;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/NetworkStateTracker;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mEri:Lcom/android/systemui/moto/VzwEri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/moto/NetworkStateTracker;)Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/NetworkStateTracker;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/moto/NetworkStateTracker;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/NetworkStateTracker;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32
    sput v0, Lcom/android/systemui/moto/NetworkStateTracker;->sPhoneCount:I

    .line 41
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_0

    const-string/jumbo v0, "NetworkStateTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/moto/NetworkStateTracker;->DEBUG:Z

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/moto/NetworkStateTracker;->mDifferingIconForSimError:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V
    .locals 3
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "subscriptionManager"    # Landroid/telephony/SubscriptionManager;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "handler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p5, "enableEriSound"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mEri:Lcom/android/systemui/moto/VzwEri;

    .line 259
    new-instance v0, Lcom/android/systemui/moto/NetworkStateTracker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/moto/NetworkStateTracker$1;-><init>(Lcom/android/systemui/moto/NetworkStateTracker;)V

    iput-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mEriSoundListener:Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/systemui/moto/NetworkStateTracker;->sPhoneCount:I

    .line 86
    iput-object p3, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mContext:Landroid/content/Context;

    .line 87
    iput-object p4, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 88
    if-eqz p5, :cond_0

    .line 89
    new-instance v0, Lcom/android/systemui/moto/VzwEri;

    iget-object v1, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/moto/VzwEri;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mEri:Lcom/android/systemui/moto/VzwEri;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v1, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mEriSoundListener:Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEriSoundListening(Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;Z)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/moto/NetworkStateTracker;->mDifferingIconForSimError:Z

    .line 98
    return-void
.end method

.method public static cidIsFemtocell(I)Z
    .locals 3
    .param p0, "cid"    # I

    .prologue
    const/4 v1, 0x0

    .line 115
    shr-int/lit8 v0, p0, 0x8

    .line 116
    .local v0, "eNbId":I
    const/high16 v2, 0xf00000

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    const v2, 0xfa000

    if-lt v0, v2, :cond_0

    const v2, 0xfffff

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static getActivityState(ZZZZ)I
    .locals 2
    .param p0, "isWifiConnected"    # Z
    .param p1, "isNetworkDefault"    # Z
    .param p2, "in"    # Z
    .param p3, "out"    # Z

    .prologue
    .line 228
    const/4 v0, 0x1

    .line 230
    .local v0, "activityState":I
    if-eqz p0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 231
    const/4 v0, 0x0

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 234
    const/4 v0, 0x4

    goto :goto_0

    .line 235
    :cond_2
    if-eqz p2, :cond_3

    .line 236
    const/4 v0, 0x2

    goto :goto_0

    .line 237
    :cond_3
    if-eqz p3, :cond_0

    .line 238
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getDataState(Landroid/telephony/ServiceState;IZZIZZZZZZZ)I
    .locals 4
    .param p0, "serviceState"    # Landroid/telephony/ServiceState;
    .param p1, "callState"    # I
    .param p2, "wifiConnected"    # Z
    .param p3, "dataConnected"    # Z
    .param p4, "dataConnectionState"    # I
    .param p5, "showMobileWhenWifiActive"    # Z
    .param p6, "carrierChanging"    # Z
    .param p7, "isNetworkDefault"    # Z
    .param p8, "dataDisabled"    # Z
    .param p9, "shouldShowDataDisabledIcon"    # Z
    .param p10, "showNoIcon"    # Z
    .param p11, "isSecondarySim"    # Z

    .prologue
    .line 129
    const/4 v0, -0x1

    .line 131
    .local v0, "dataState":I
    if-nez p11, :cond_0

    if-nez p6, :cond_0

    if-eqz p10, :cond_2

    .line 182
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/moto/NetworkStateTracker;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 183
    const-string/jumbo v1, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dataState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    return v0

    .line 136
    :cond_2
    if-eqz p8, :cond_4

    .line 138
    if-eqz p9, :cond_0

    .line 140
    if-eqz p5, :cond_3

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/systemui/moto/NetworkStateTracker;->isMultipleSimDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 149
    :cond_4
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 150
    if-eqz p2, :cond_5

    if-eqz p5, :cond_0

    .line 156
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_8

    .line 161
    if-eqz p3, :cond_7

    if-eqz p2, :cond_6

    if-eqz p7, :cond_7

    .line 162
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :cond_9
    if-eqz p2, :cond_a

    xor-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_a

    .line 173
    if-eqz p5, :cond_0

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :cond_a
    if-eqz p3, :cond_b

    .line 177
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :cond_b
    const/4 v1, 0x3

    if-ne p4, v1, :cond_0

    .line 179
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getRoamingState(Landroid/telephony/ServiceState;ZZ)I
    .locals 3
    .param p0, "serviceState"    # Landroid/telephony/ServiceState;
    .param p1, "isCdma"    # Z
    .param p2, "isFemtoCell"    # Z

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "roam":I
    if-eqz p2, :cond_1

    .line 246
    const/4 v1, 0x4

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    .line 249
    .local v0, "iconMode":I
    if-nez v0, :cond_2

    .line 250
    const/4 v1, 0x1

    goto :goto_0

    .line 251
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 252
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static isMultipleSimDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 108
    sget v1, Lcom/android/systemui/moto/NetworkStateTracker;->sPhoneCount:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldDifferSimError()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/systemui/moto/NetworkStateTracker;->mDifferingIconForSimError:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/moto/NetworkStateTracker;->isMultipleSimDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateExtendedInfo(Lcom/android/systemui/moto/ExtendedMobileDataInfo;Landroid/telephony/ServiceState;ZZZIZZZZZZI)V
    .locals 8
    .param p0, "extendedMobileDataInfo"    # Lcom/android/systemui/moto/ExtendedMobileDataInfo;
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .param p2, "dataConnected"    # Z
    .param p3, "activityIn"    # Z
    .param p4, "activityOut"    # Z
    .param p5, "dataConnectionState"    # I
    .param p6, "dataVisible"    # Z
    .param p7, "isWifiConnected"    # Z
    .param p8, "isNetworkDefault"    # Z
    .param p9, "isCdma"    # Z
    .param p10, "isRoaming"    # Z
    .param p11, "isFemtoCell"    # Z
    .param p12, "rejectCode"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->resetIcons()V

    .line 198
    move/from16 v0, p8

    invoke-static {p7, v0, p3, p4}, Lcom/android/systemui/moto/NetworkStateTracker;->getActivityState(ZZZZ)I

    move-result v2

    .line 200
    .local v2, "activityState":I
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 201
    invoke-static {v2}, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->sbActivity(I)I

    move-result v5

    const-string/jumbo v6, ""

    .line 200
    invoke-direct {v4, p2, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 204
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 205
    if-eqz p6, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableActivityIconOnSB:Z

    if-eqz v4, :cond_2

    .line 206
    invoke-static {v2}, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->sbActivity(I)I

    move-result v4

    :goto_0
    const-string/jumbo v6, ""

    .line 204
    invoke-direct {v5, p2, v4, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 207
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 208
    if-eqz p6, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomActivityIconOnQS:Z

    if-eqz v4, :cond_3

    .line 209
    invoke-static {v2}, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->qsActivity(I)I

    move-result v4

    :goto_1
    const-string/jumbo v6, ""

    .line 207
    invoke-direct {v5, p2, v4, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 212
    if-nez p10, :cond_0

    if-eqz p11, :cond_1

    .line 213
    :cond_0
    move/from16 v0, p9

    move/from16 v1, p11

    invoke-static {p1, v0, v1}, Lcom/android/systemui/moto/NetworkStateTracker;->getRoamingState(Landroid/telephony/ServiceState;ZZ)I

    move-result v3

    .line 214
    .local v3, "roamState":I
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 215
    invoke-static {v3}, Lcom/android/systemui/moto/CarrierIcons$RoamingIcon;->sbRoaming(I)I

    move-result v5

    const-string/jumbo v6, ""

    .line 214
    const/4 v7, 0x1

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->roamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 216
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 217
    invoke-static {v3}, Lcom/android/systemui/moto/CarrierIcons$RoamingIcon;->qsRoaming(I)I

    move-result v5

    const-string/jumbo v6, ""

    .line 216
    const/4 v7, 0x1

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsRoamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 219
    .end local v3    # "roamState":I
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    iput-boolean p3, v4, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;->activityIn:Z

    .line 220
    iget-object v4, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    iput-boolean p4, v4, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;->activityOut:Z

    .line 221
    iget-object v4, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    iput p5, v4, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;->dataConnection:I

    .line 222
    move/from16 v0, p12

    iput v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->rejectCode:I

    .line 223
    return-void

    .line 206
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 209
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
