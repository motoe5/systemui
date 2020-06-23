.class public Lcom/android/settingslib/net/DataUsageController;
.super Ljava/lang/Object;
.source "DataUsageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/DataUsageController$Callback;,
        Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;,
        Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;


# instance fields
.field private mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v0, "DataUsageController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 59
    new-instance v0, Ljava/util/Formatter;

    .line 60
    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 59
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 75
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 77
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 79
    return-void
.end method

.method private static addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .locals 4
    .param p0, "t"    # Landroid/text/format/Time;
    .param p1, "months"    # I

    .prologue
    .line 116
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 117
    .local v0, "rt":Landroid/text/format/Time;
    iget v1, p0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/2addr v2, p1

    iget v3, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 119
    return-object v0
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v5, 0x0

    .line 222
    iget-object v4, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v5

    .line 223
    :cond_1
    iget-object v4, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 224
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    if-nez v2, :cond_2

    return-object v5

    .line 225
    :cond_2
    array-length v0, v2

    .line 226
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 227
    aget-object v3, v2, v1

    .line 228
    .local v3, "policy":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v4}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    return-object v3

    .line 226
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_4
    return-object v5
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .locals 11
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 328
    const v8, 0x10010

    .line 329
    .local v8, "flags":I
    sget-object v9, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 330
    :try_start_0
    sget-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 331
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 319
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 321
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 322
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "actualSubscriberId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 322
    .end local v0    # "actualSubscriberId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "actualSubscriberId":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .locals 4

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v2, :cond_0

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    return-object v2

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "DataUsageController"

    const-string/jumbo v3, "Failed to open stats session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 97
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DataUsageController"

    const-string/jumbo v3, "Failed to open stats session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;
    .locals 4
    .param p0, "entry"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    const/4 v0, 0x0

    .line 236
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v1, "bucketDuration="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 236
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    const-string/jumbo v1, ",bucketStart="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 236
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    const-string/jumbo v1, ",activeTime="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 236
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    const-string/jumbo v1, ",rxBytes="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 236
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    const-string/jumbo v1, ",rxPackets="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 236
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, ",txBytes="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 236
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string/jumbo v1, ",txPackets="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 236
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    const-string/jumbo v1, ",operations="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 236
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    const/16 v1, 0x5d

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isDataSupportedForPreferredNw(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v6, 0x1

    .line 356
    new-instance v3, Lcom/motorola/android/content/MSimContext;

    invoke-direct {v3, p0}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lcom/motorola/android/content/MSimContext;->getResources(I)Landroid/content/res/Resources;

    move-result-object v2

    .line 357
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x112005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 358
    .local v0, "disableData":Z
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 359
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 361
    .local v1, "networkMode":I
    if-ne v1, v6, :cond_0

    .line 362
    const/4 v3, 0x0

    return v3

    .line 365
    .end local v1    # "networkMode":I
    :cond_0
    return v6
.end method

.method public static isDisableMobileDataSupported(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 377
    const/4 v0, 0x1

    .line 378
    .local v0, "disableMobileDataAllowed":Z
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 379
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 381
    .local v2, "simCount":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 382
    new-instance v4, Lcom/motorola/android/content/MSimContext;

    invoke-direct {v4, p0}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/motorola/android/content/MSimContext;->getResources(I)Landroid/content/res/Resources;

    move-result-object v1

    .line 383
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x112008d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    xor-int/lit8 v0, v4, 0x1

    .line 385
    .end local v0    # "disableMobileDataAllowed":Z
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    return v0
.end method

.method private warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string/jumbo v0, "DataUsageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get data usage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 1

    .prologue
    .line 124
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(I)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDataUsageInfo(I)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/settingslib/net/DataUsageController;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "subscriberId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 131
    const-string/jumbo v2, "no subscriber id"

    invoke-direct {p0, v2}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    return-object v2

    .line 133
    :cond_0
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 134
    .local v1, "template":Landroid/net/NetworkTemplate;
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 136
    invoke-virtual {p0, v1, p1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;I)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    return-object v2
.end method

.method public getDataUsageInfo(Landroid/net/NetworkTemplate;I)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;ILandroid/net/NetworkPolicy;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDataUsageInfo(Landroid/net/NetworkTemplate;ILandroid/net/NetworkPolicy;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 30
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I
    .param p3, "refPolicy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/net/DataUsageController;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v21

    .line 159
    .local v21, "session":Landroid/net/INetworkStatsSession;
    if-nez v21, :cond_0

    .line 160
    const-string/jumbo v12, "no stats session"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v12

    return-object v12

    .line 163
    :cond_0
    if-eqz p3, :cond_3

    move-object/from16 v19, p3

    .line 165
    .local v19, "policy":Landroid/net/NetworkPolicy;
    :goto_0
    const/16 v12, 0xa

    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v12}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 166
    .local v5, "history":Landroid/net/NetworkStatsHistory;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 168
    .local v10, "now":J
    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    iget v12, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    if-lez v12, :cond_5

    .line 170
    sget-boolean v12, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "DataUsageController"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cycle day="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " tz="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 171
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 170
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, v19

    iget-object v12, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 173
    .local v18, "nowTime":Landroid/text/format/Time;
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->setToNow()V

    .line 174
    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 175
    .local v20, "policyTime":Landroid/text/format/Time;
    move-object/from16 v0, v19

    iget v12, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v12, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 176
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 177
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 178
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 179
    .local v6, "start":J
    const/4 v12, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/settingslib/net/DataUsageController;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v12

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 189
    .end local v18    # "nowTime":Landroid/text/format/Time;
    .end local v20    # "policyTime":Landroid/text/format/Time;
    .local v8, "end":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 190
    .local v16, "callStart":J
    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 191
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 192
    .local v14, "callEnd":J
    sget-boolean v12, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "DataUsageController"

    const-string/jumbo v25, "history call from %s to %s now=%s took %sms: %s"

    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 193
    new-instance v27, Ljava/util/Date;

    move-object/from16 v0, v27

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    const/16 v28, 0x0

    aput-object v27, v26, v28

    new-instance v27, Ljava/util/Date;

    move-object/from16 v0, v27

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    const/16 v28, 0x1

    aput-object v27, v26, v28

    new-instance v27, Ljava/util/Date;

    move-object/from16 v0, v27

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    const/16 v28, 0x2

    aput-object v27, v26, v28

    sub-long v28, v14, v16

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    const/16 v28, 0x3

    aput-object v27, v26, v28

    .line 194
    invoke-static {v13}, Lcom/android/settingslib/net/DataUsageController;->historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    aput-object v27, v26, v28

    .line 192
    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_2
    if-nez v13, :cond_6

    .line 196
    const-string/jumbo v12, "no entry data"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    return-object v12

    .line 163
    .end local v5    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "now":J
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "callEnd":J
    .end local v16    # "callStart":J
    .end local v19    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/settingslib/net/DataUsageController;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v19

    .restart local v19    # "policy":Landroid/net/NetworkPolicy;
    goto/16 :goto_0

    .line 181
    .restart local v5    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v10    # "now":J
    .restart local v18    # "nowTime":Landroid/text/format/Time;
    .restart local v20    # "policyTime":Landroid/text/format/Time;
    :cond_4
    const/4 v12, -0x1

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/settingslib/net/DataUsageController;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v12

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 182
    .restart local v6    # "start":J
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .restart local v8    # "end":J
    goto/16 :goto_1

    .line 186
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v18    # "nowTime":Landroid/text/format/Time;
    .end local v20    # "policyTime":Landroid/text/format/Time;
    :cond_5
    move-wide v8, v10

    .line 187
    .restart local v8    # "end":J
    const-wide v26, 0x90321000L

    sub-long v6, v10, v26

    .restart local v6    # "start":J
    goto/16 :goto_1

    .line 198
    .restart local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v14    # "callEnd":J
    .restart local v16    # "callStart":J
    :cond_6
    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v26, v0

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    add-long v22, v26, v28

    .line 199
    .local v22, "totalBytes":J
    new-instance v24, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-direct/range {v24 .. v24}, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;-><init>()V

    .line 200
    .local v24, "usage":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    move-object/from16 v0, v24

    iput-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->startDate:J

    .line 201
    move-wide/from16 v0, v22

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/settingslib/net/DataUsageController;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    .line 203
    if-eqz v19, :cond_a

    .line 204
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v12, v26, v28

    if-lez v12, :cond_8

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v26, v0

    :goto_2
    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 205
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v12, v26, v28

    if-lez v12, :cond_9

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v26, v0

    :goto_3
    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 209
    :goto_4
    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    if-eqz v12, :cond_7

    .line 211
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    invoke-interface {v12}, Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object v12

    :goto_5
    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    .line 215
    :cond_7
    return-object v24

    .line 204
    :cond_8
    const-wide/16 v26, 0x0

    goto :goto_2

    .line 205
    :cond_9
    const-wide/16 v26, 0x0

    goto :goto_3

    .line 207
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 216
    .end local v5    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "now":J
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "callEnd":J
    .end local v16    # "callStart":J
    .end local v22    # "totalBytes":J
    .end local v24    # "usage":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    :catch_0
    move-exception v4

    .line 217
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v12, "remote call failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v12

    return-object v12

    .line 212
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v5    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v10    # "now":J
    .restart local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v14    # "callEnd":J
    .restart local v16    # "callStart":J
    .restart local v22    # "totalBytes":J
    .restart local v24    # "usage":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;->getMobileDataNetworkName(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    goto :goto_5
.end method

.method public getDefaultWarningLevel()J
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 89
    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public isMobileDataEnabled()Z
    .locals 3

    .prologue
    .line 283
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 284
    .local v0, "dds":I
    new-instance v1, Lcom/motorola/android/content/MSimContext;

    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/motorola/android/content/MSimContext;->getResources(I)Landroid/content/res/Resources;

    move-result-object v1

    .line 285
    const v2, 0x1120158

    .line 284
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getHomeDataEnabled(I)Z

    move-result v1

    return v1

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    return v1
.end method

.method public isMobileDataEnabled(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 295
    new-instance v0, Lcom/motorola/android/content/MSimContext;

    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/motorola/android/content/MSimContext;->getResources(I)Landroid/content/res/Resources;

    move-result-object v0

    .line 296
    const v1, 0x1120158

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getHomeDataEnabled(I)Z

    move-result v0

    return v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isMobileDataSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 267
    .local v0, "subId":I
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/net/DataUsageController;->isDataSupportedForPreferredNw(Landroid/content/Context;I)Z

    move-result v1

    .line 267
    :cond_0
    return v1
.end method

.method public isMobileDataSupported(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .line 275
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/net/DataUsageController;->isDataSupportedForPreferredNw(Landroid/content/Context;I)Z

    move-result v0

    .line 275
    :cond_0
    return v0
.end method

.method public setCallback(Lcom/android/settingslib/net/DataUsageController$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settingslib/net/DataUsageController$Callback;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    .line 108
    return-void
.end method

.method public setMobileDataEnabled(IZ)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 305
    new-instance v0, Lcom/motorola/android/content/MSimContext;

    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/motorola/android/content/MSimContext;->getResources(I)Landroid/content/res/Resources;

    move-result-object v0

    .line 306
    const v1, 0x1120158

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setHomeDataEnabled(IZ)V

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    invoke-interface {v0, p2}, Lcom/android/settingslib/net/DataUsageController$Callback;->onMobileDataEnabled(Z)V

    .line 315
    :cond_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 249
    const-string/jumbo v1, "DataUsageController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMobileDataEnabled: enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 252
    .local v0, "dds":I
    new-instance v1, Lcom/motorola/android/content/MSimContext;

    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/motorola/android/content/MSimContext;->getResources(I)Landroid/content/res/Resources;

    move-result-object v1

    .line 253
    const v2, 0x1120158

    .line 252
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0, p1}, Landroid/telephony/TelephonyManager;->setHomeDataEnabled(IZ)V

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    invoke-interface {v1, p1}, Lcom/android/settingslib/net/DataUsageController$Callback;->onMobileDataEnabled(Z)V

    .line 262
    :cond_0
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0
.end method

.method public setNetworkController(Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;)V
    .locals 0
    .param p1, "networkController"    # Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    .line 83
    return-void
.end method
