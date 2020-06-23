.class public Lcom/android/settingslib/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static mIsWAPISupported:Z

.field static final sLastId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private bssid:Ljava/lang/String;

.field mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

.field private mBadge:I

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mContext:Landroid/content/Context;

.field mId:I

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mIsScoredNetworkMetered:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRankingScore:I

.field private mRssi:I

.field private final mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSeen:J

.field private networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;

.field private wapiPskType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 160
    sput-boolean v1, Lcom/android/settingslib/wifi/AccessPoint;->mIsWAPISupported:Z

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 92
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 142
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 146
    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 155
    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    .line 156
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    .line 157
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 251
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 254
    const v1, 0x112011e

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWAPISupported:Z

    .line 256
    invoke-direct {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->initWithScanResult(Landroid/net/wifi/ScanResult;)V

    .line 257
    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 92
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 142
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 146
    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 155
    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    .line 156
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    .line 157
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 217
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 220
    const v1, 0x112011e

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWAPISupported:Z

    .line 222
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 223
    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    .line 224
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "other"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 92
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 142
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 146
    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 155
    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    .line 156
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    .line 157
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 242
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 245
    const v1, 0x112011e

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWAPISupported:Z

    .line 247
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->copyFrom(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 248
    return-void
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private evictOldScanResults()V
    .locals 8

    .prologue
    .line 439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 440
    .local v2, "nowMs":J
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 441
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 443
    .local v1, "result":Landroid/net/wifi/ScanResult;
    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 444
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 447
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return-void
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)I
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1184
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1185
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1186
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1187
    const/4 v2, 0x3

    return v2

    .line 1188
    :cond_0
    if-eqz v1, :cond_1

    .line 1189
    const/4 v2, 0x2

    return v2

    .line 1190
    :cond_1
    if-eqz v0, :cond_2

    .line 1191
    const/4 v2, 0x1

    return v2

    .line 1193
    :cond_2
    const-string/jumbo v2, "SettingsLib.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v2, 0x0

    return v2
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1199
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    const/4 v0, 0x1

    return v0

    .line 1201
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    const/4 v0, 0x2

    return v0

    .line 1203
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1204
    const/4 v0, 0x3

    return v0

    .line 1207
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWAPISupported:Z

    if-eqz v0, :cond_3

    .line 1208
    const/4 v0, 0x4

    return v0

    .line 1209
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWAPISupported:Z

    if-eqz v0, :cond_4

    .line 1210
    const/4 v0, 0x5

    return v0

    .line 1213
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1217
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1218
    return v3

    .line 1220
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1221
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 1220
    if-eqz v2, :cond_2

    .line 1222
    :cond_1
    return v4

    .line 1225
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/settingslib/wifi/AccessPoint;->mIsWAPISupported:Z

    if-eqz v2, :cond_3

    .line 1226
    const/4 v0, 0x4

    return v0

    .line 1228
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/settingslib/wifi/AccessPoint;->mIsWAPISupported:Z

    if-eqz v2, :cond_4

    .line 1229
    const/4 v0, 0x5

    return v0

    .line 1232
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    :goto_0
    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 24
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 688
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .local v18, "summary":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    .line 693
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 692
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_0
    :goto_0
    sget v19, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:I

    if-lez v19, :cond_f

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 736
    const-string/jumbo v19, " f="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_1
    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getVisibilityStatus()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_4

    .line 740
    const-string/jumbo v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_3

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 743
    .local v14, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v20

    sub-long v20, v14, v20

    const-wide/16 v22, 0x3e8

    div-long v4, v20, v22

    .line 744
    .local v4, "diff":J
    const-wide/16 v20, 0x3c

    rem-long v16, v4, v20

    .line 745
    .local v16, "sec":J
    const-wide/16 v20, 0x3c

    div-long v20, v4, v20

    const-wide/16 v22, 0x3c

    rem-long v12, v20, v22

    .line 746
    .local v12, "min":J
    const-wide/16 v20, 0x3c

    div-long v20, v12, v20

    const-wide/16 v22, 0x3c

    rem-long v8, v20, v22

    .line 747
    .local v8, "hour":J
    const-string/jumbo v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-lez v19, :cond_2

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "h "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "m "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "s "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .end local v4    # "diff":J
    .end local v8    # "hour":J
    .end local v12    # "min":J
    .end local v14    # "now":J
    .end local v16    # "sec":J
    :cond_3
    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_4
    if-eqz p1, :cond_f

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    .line 758
    .local v11, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v7, 0x0

    .line 759
    .local v7, "index":I
    :goto_1
    const/16 v19, 0xc

    .line 758
    move/from16 v0, v19

    if-ge v7, v0, :cond_f

    .line 761
    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v19

    if-eqz v19, :cond_5

    .line 762
    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 763
    const-string/jumbo v20, "="

    .line 762
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 764
    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v20

    .line 762
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 760
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 694
    .end local v7    # "index":I
    .end local v11    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v21

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v19

    .line 696
    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 697
    :cond_7
    const/16 v19, 0x0

    goto :goto_2

    .line 698
    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v19

    .line 698
    if-eqz v19, :cond_9

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->available_via_passpoint:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 701
    .local v6, "format":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 702
    .end local v6    # "format":Ljava/lang/String;
    :cond_9
    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 703
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 704
    sget v10, Lcom/android/settingslib/R$string;->wifi_no_internet_no_reconnect:I

    .line 706
    .local v10, "messageID":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 705
    .end local v10    # "messageID":I
    :cond_a
    sget v10, Lcom/android/settingslib/R$string;->wifi_no_internet:I

    .restart local v10    # "messageID":I
    goto :goto_3

    .line 707
    .end local v10    # "messageID":I
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_c

    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    .line 710
    .restart local v11    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    goto/16 :goto_0

    .line 719
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_disabled_generic:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 712
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 716
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 722
    .end local v11    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_c
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNotRecommended()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_disabled_by_recommendation_provider:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 724
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v19

    if-nez v19, :cond_e

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_not_in_range:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 727
    :cond_e
    if-eqz p1, :cond_0

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_remembered:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 769
    :cond_f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 710
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1171
    invoke-static {p0, v0, p1, p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z
    .param p3, "passpointProvider"    # Ljava/lang/String;

    .prologue
    .line 1176
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "isEphemeral"    # Z
    .param p4, "passpointProvider"    # Ljava/lang/String;

    .prologue
    .line 1112
    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v9, :cond_2

    if-nez p1, :cond_2

    .line 1113
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1115
    sget v9, Lcom/android/settingslib/R$string;->connected_via_passpoint:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, "format":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p4, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1117
    .end local v2    # "format":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_2

    .line 1120
    const-class v9, Landroid/net/NetworkScoreManager;

    .line 1119
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkScoreManager;

    .line 1121
    .local v6, "networkScoreManager":Landroid/net/NetworkScoreManager;
    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v7

    .line 1122
    .local v7, "scorer":Landroid/net/NetworkScorerAppData;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1123
    sget v9, Lcom/android/settingslib/R$string;->connected_via_network_scorer:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1124
    .restart local v2    # "format":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1126
    .end local v2    # "format":Ljava/lang/String;
    :cond_1
    sget v9, Lcom/android/settingslib/R$string;->connected_via_network_scorer_default:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1133
    .end local v6    # "networkScoreManager":Landroid/net/NetworkScoreManager;
    .end local v7    # "scorer":Landroid/net/NetworkScorerAppData;
    :cond_2
    const-string/jumbo v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1132
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1134
    .local v0, "cm":Landroid/net/ConnectivityManager;
    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v9, :cond_5

    .line 1136
    const-string/jumbo v9, "wifi"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 1135
    invoke-static {v9}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v8

    .line 1137
    .local v8, "wifiManager":Landroid/net/wifi/IWifiManager;
    const/4 v5, 0x0

    .line 1140
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    :try_start_0
    invoke-interface {v8}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1143
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    :goto_0
    if-eqz v5, :cond_4

    .line 1144
    const/16 v9, 0x11

    invoke-virtual {v5, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1146
    const v9, 0x10403ba

    .line 1145
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1147
    :cond_3
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1148
    sget v9, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1152
    :cond_4
    const-string/jumbo v9, ""

    return-object v9

    .line 1156
    .end local v8    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_5
    if-nez p2, :cond_6

    .line 1157
    const-string/jumbo v9, "SettingsLib.AccessPoint"

    const-string/jumbo v10, "state is null, returning empty summary"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const-string/jumbo v9, ""

    return-object v9

    .line 1160
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-nez p1, :cond_8

    .line 1161
    sget v9, Lcom/android/settingslib/R$array;->wifi_status:I

    .line 1160
    :goto_1
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1162
    .local v3, "formats":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    .line 1164
    .local v4, "index":I
    array-length v9, v3

    if-ge v4, v9, :cond_7

    aget-object v9, v3, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_9

    .line 1165
    :cond_7
    const-string/jumbo v9, ""

    return-object v9

    .line 1161
    .end local v3    # "formats":[Ljava/lang/String;
    .end local v4    # "index":I
    :cond_8
    sget v9, Lcom/android/settingslib/R$array;->wifi_status_with_ssid:I

    goto :goto_1

    .line 1167
    .restart local v3    # "formats":[Ljava/lang/String;
    .restart local v4    # "index":I
    :cond_9
    aget-object v9, v3, v4

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1141
    .end local v3    # "formats":[Ljava/lang/String;
    .end local v4    # "index":I
    .restart local v5    # "nc":Landroid/net/NetworkCapabilities;
    .restart local v8    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getVisibilityStatus()Ljava/lang/String;
    .locals 22

    .prologue
    .line 781
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 782
    .local v17, "visibility":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 783
    .local v14, "scans24GHz":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 784
    .local v15, "scans5GHz":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 786
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 788
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v16, v0

    .line 790
    .local v16, "tempInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, "bssid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 792
    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_0
    const-string/jumbo v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 795
    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const-string/jumbo v18, " score="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    move/from16 v18, v0

    const/high16 v19, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 798
    const-string/jumbo v18, " rankingScore="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getRankingScore()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 800
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 801
    const-string/jumbo v18, " badge="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getBadge()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    :cond_2
    const-string/jumbo v18, " tx=%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const-string/jumbo v18, "%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const-string/jumbo v18, "%.1f "

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const-string/jumbo v18, "rx=%.1f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .end local v2    # "bssid":Ljava/lang/String;
    .end local v16    # "tempInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    sget v13, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 810
    .local v13, "rssi5":I
    sget v12, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 811
    .local v12, "rssi24":I
    const/4 v8, 0x0

    .line 812
    .local v8, "num5":I
    const/4 v5, 0x0

    .line 813
    .local v5, "num24":I
    const/4 v9, 0x0

    .line 814
    .local v9, "numBlackListed":I
    const/4 v3, 0x0

    .line 815
    .local v3, "n24":I
    const/4 v4, 0x0

    .line 816
    .local v4, "n5":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->evictOldScanResults()V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v14    # "scans24GHz":Ljava/lang/StringBuilder;
    .end local v15    # "scans5GHz":Ljava/lang/StringBuilder;
    .local v11, "result$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 820
    .local v10, "result":Landroid/net/wifi/ScanResult;
    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    .line 821
    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    .line 824
    add-int/lit8 v8, v8, 0x1

    .line 833
    :cond_5
    :goto_1
    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    .line 834
    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    .line 835
    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v13, :cond_6

    .line 836
    iget v13, v10, Landroid/net/wifi/ScanResult;->level:I

    .line 838
    :cond_6
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v4, v0, :cond_4

    .line 839
    if-nez v15, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    :cond_7
    const-string/jumbo v18, " \n{"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    if-eqz v2, :cond_8

    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string/jumbo v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_8
    const-string/jumbo v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 843
    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 844
    const-string/jumbo v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 825
    :cond_9
    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 826
    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_5

    .line 829
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 847
    :cond_a
    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 848
    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 849
    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v12, :cond_b

    .line 850
    iget v12, v10, Landroid/net/wifi/ScanResult;->level:I

    .line 852
    :cond_b
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v3, v0, :cond_4

    .line 853
    if-nez v14, :cond_c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    :cond_c
    const-string/jumbo v18, " \n{"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    if-eqz v2, :cond_d

    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const-string/jumbo v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_d
    const-string/jumbo v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 857
    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 858
    const-string/jumbo v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 863
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    :cond_e
    const-string/jumbo v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    if-lez v5, :cond_f

    .line 865
    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v3, v0, :cond_11

    .line 867
    if-eqz v14, :cond_f

    .line 868
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_f
    :goto_2
    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    if-lez v8, :cond_10

    .line 879
    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v4, v0, :cond_12

    .line 881
    if-eqz v15, :cond_10

    .line 882
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :cond_10
    :goto_3
    const-string/jumbo v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 871
    :cond_11
    const-string/jumbo v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 872
    if-eqz v14, :cond_f

    .line 873
    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 885
    :cond_12
    const-string/jumbo v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    if-eqz v15, :cond_10

    .line 887
    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private initWithScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 987
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 988
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 989
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 990
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 991
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateRssi()V

    .line 995
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 996
    return-void
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 939
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 940
    :cond_1
    if-eqz p1, :cond_2

    .line 941
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    const-string/jumbo v1, ""

    return-object v1

    .line 1257
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1258
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1259
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1260
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1262
    :cond_1
    return-object p0
.end method

.method public static securityToString(II)Ljava/lang/String;
    .locals 3
    .param p0, "security"    # I
    .param p1, "pskType"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1236
    if-ne p0, v0, :cond_0

    .line 1237
    const-string/jumbo v0, "WEP"

    return-object v0

    .line 1238
    :cond_0
    if-ne p0, v1, :cond_4

    .line 1239
    if-ne p1, v0, :cond_1

    .line 1240
    const-string/jumbo v0, "WPA"

    return-object v0

    .line 1241
    :cond_1
    if-ne p1, v1, :cond_2

    .line 1242
    const-string/jumbo v0, "WPA2"

    return-object v0

    .line 1243
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1244
    const-string/jumbo v0, "WPA_WPA2"

    return-object v0

    .line 1246
    :cond_3
    const-string/jumbo v0, "PSK"

    return-object v0

    .line 1247
    :cond_4
    if-ne p0, v2, :cond_5

    .line 1248
    const-string/jumbo v0, "EAP"

    return-object v0

    .line 1250
    :cond_5
    const-string/jumbo v0, "NONE"

    return-object v0
.end method

.method private updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z
    .locals 7
    .param p1, "scoreCache"    # Landroid/net/wifi/WifiNetworkScoreCache;

    .prologue
    const/4 v4, 0x0

    .line 426
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 427
    .local v0, "oldMetering":Z
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 428
    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 429
    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v3

    .line 430
    .local v3, "score":Landroid/net/ScoredNetwork;
    if-eqz v3, :cond_0

    .line 433
    iget-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean v6, v3, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    goto :goto_0

    .line 435
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "score":Landroid/net/ScoredNetwork;
    :cond_1
    iget-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-ne v0, v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method private updateRssi()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 506
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->evictOldScanResults()V

    .line 508
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    return-void

    .line 512
    :cond_0
    const/high16 v2, -0x80000000

    .line 513
    .local v2, "rssi":I
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 514
    .local v0, "result":Landroid/net/wifi/ScanResult;
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v3, v2, :cond_1

    .line 515
    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 519
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    if-eq v2, v4, :cond_3

    iget v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-eq v3, v4, :cond_3

    .line 520
    iget v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 524
    :goto_1
    return-void

    .line 522
    :cond_3
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    goto :goto_1
.end method

.method private updateScores(Landroid/net/wifi/WifiNetworkScoreCache;)Z
    .locals 9
    .param p1, "scoreCache"    # Landroid/net/wifi/WifiNetworkScoreCache;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 401
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    .line 402
    .local v0, "oldBadge":I
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    .line 403
    .local v1, "oldRankingScore":I
    iput v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    .line 404
    const/high16 v7, -0x80000000

    iput v7, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    .line 406
    iget-object v7, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 407
    .local v2, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v4

    .line 408
    .local v4, "score":Landroid/net/ScoredNetwork;
    if-eqz v4, :cond_0

    .line 412
    invoke-virtual {v4}, Landroid/net/ScoredNetwork;->hasRankingScore()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 413
    iget v7, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    iget v8, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v8}, Landroid/net/ScoredNetwork;->calculateRankingScore(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    .line 415
    :cond_1
    iget v7, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    iget v8, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v8}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    goto :goto_0

    .line 418
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "score":Landroid/net/ScoredNetwork;
    :cond_2
    iget v7, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    if-ne v0, v7, :cond_3

    iget v7, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    if-eq v1, v7, :cond_4

    :cond_3
    :goto_1
    return v5

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method private updateSeen()V
    .locals 6

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->evictOldScanResults()V

    .line 536
    const-wide/16 v2, 0x0

    .line 537
    .local v2, "seen":J
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 538
    .local v0, "result":Landroid/net/wifi/ScanResult;
    iget-wide v4, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 539
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    goto :goto_0

    .line 544
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 545
    iput-wide v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 547
    :cond_2
    return-void
.end method


# virtual methods
.method public clearConfig()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 473
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 474
    return-void
.end method

.method public compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 6
    .param p1, "other"    # Lcom/android/settingslib/wifi/AccessPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 303
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    return v1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    return v1

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    return v1

    .line 312
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    .line 315
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getRankingScore()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getRankingScore()I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 316
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getRankingScore()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getRankingScore()I

    move-result v4

    if-le v3, v4, :cond_6

    :goto_0
    return v1

    :cond_6
    move v1, v2

    goto :goto_0

    .line 320
    :cond_7
    iget v1, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    .line 321
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 320
    sub-int v0, v1, v2

    .line 322
    .local v0, "difference":I
    if-eqz v0, :cond_8

    .line 323
    return v0

    .line 326
    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 285
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method

.method copyFrom(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2
    .param p1, "that"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 266
    invoke-direct {p1}, Lcom/android/settingslib/wifi/AccessPoint;->evictOldScanResults()V

    .line 267
    iget-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 268
    iget-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 269
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 270
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 271
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 272
    iget-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 273
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 274
    iget-wide v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 275
    iget-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 276
    iget-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 277
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 278
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 279
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    .line 280
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    .line 281
    iget-boolean v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 282
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    .line 283
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 331
    instance-of v1, p1, Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    return v0

    .line 332
    :cond_0
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public generateOpenNetworkConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 968
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 969
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 971
    return-void

    .line 972
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 973
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 974
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 975
    return-void
.end method

.method getBadge()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 643
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0

    .line 646
    :cond_0
    const-string/jumbo v0, "SettingsLib.AccessPoint"

    const-string/jumbo v1, "NetworkInfo is null, cannot return detailed state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-object v2
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 487
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method getRankingScore()I
    .locals 1

    .prologue
    .line 1098
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    return v0
.end method

.method public getSsid()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 623
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 624
    .local v0, "str":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$TelephoneBuilder;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 625
    const/16 v4, 0x12

    .line 624
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 626
    return-object v0

    .line 628
    .end local v0    # "str":Landroid/text/SpannableString;
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getSsidStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/lit8 v0, v1, 0x0

    .line 339
    :cond_0
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 340
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 341
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 342
    return v0
.end method

.method public isActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 904
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_2

    .line 905
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 906
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    .line 904
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 906
    goto :goto_0

    :cond_2
    move v0, v1

    .line 904
    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 910
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEphemeral()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 914
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 914
    :cond_0
    return v0
.end method

.method public isMetered()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 555
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-nez v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 555
    if-nez v1, :cond_2

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v1

    if-nez v1, :cond_2

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isMetered()Z

    move-result v0

    .line 555
    :cond_2
    :goto_0
    return v0

    .line 558
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasspoint()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReachable()Z
    .locals 2

    .prologue
    .line 1107
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaved()Z
    .locals 2

    .prologue
    .line 952
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 978
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 979
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 980
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 981
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 982
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 983
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->wapiPskType:I

    .line 984
    return-void

    .line 978
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public matches(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, 0x0

    .line 450
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public matches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 454
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 459
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 457
    :cond_3
    return v0
.end method

.method public setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    .line 1020
    return-void
.end method

.method setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 1089
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 1090
    return-void
.end method

.method setUnreachable()V
    .locals 1

    .prologue
    .line 1094
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->setRssi(I)V

    .line 1095
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AccessPoint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 350
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "saved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ephemeral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 362
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "connectable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_4
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_5

    .line 365
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    iget v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    invoke-static {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->securityToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_5
    const-string/jumbo v1, ",mRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    const-string/jumbo v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_6

    .line 370
    const-string/jumbo v1, ",rankingScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    :cond_6
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    if-eqz v1, :cond_7

    .line 373
    const-string/jumbo v1, ",badge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mBadge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    :cond_7
    const-string/jumbo v1, ",metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 377
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1081
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 1082
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1085
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v3, 0x0

    .line 1023
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1024
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 1027
    .local v1, "oldLevel":I
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateSeen()V

    .line 1029
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateRssi()V

    .line 1030
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 1032
    .local v0, "newLevel":I
    if-lez v0, :cond_0

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v2, :cond_0

    .line 1033
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1036
    :cond_0
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1037
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 1040
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v2, :cond_2

    .line 1041
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1044
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 1046
    .end local v0    # "newLevel":I
    .end local v1    # "oldLevel":I
    :cond_3
    return v3
.end method

.method public update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;
    .param p3, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v3, 0x0

    .line 1051
    const/4 v1, 0x0

    .line 1052
    .local v1, "updated":Z
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 1053
    .local v0, "oldLevel":I
    if-eqz p2, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1054
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 1055
    :goto_0
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1056
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 1057
    const/4 v1, 0x1

    .line 1062
    :cond_0
    :goto_1
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1063
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1069
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v2, :cond_2

    .line 1070
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1073
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1076
    :cond_2
    return v1

    .line 1054
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1058
    :cond_4
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 1059
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 1060
    const/4 v1, 0x1

    goto :goto_1

    .line 1064
    :cond_5
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1

    .line 1065
    const/4 v1, 0x1

    .line 1066
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1067
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_2
.end method

.method update(Landroid/net/wifi/WifiNetworkScoreCache;Z)Z
    .locals 2
    .param p1, "scoreCache"    # Landroid/net/wifi/WifiNetworkScoreCache;
    .param p2, "scoringUiEnabled"    # Z

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "scoreChanged":Z
    if-eqz p2, :cond_0

    .line 390
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->updateScores(Landroid/net/wifi/WifiNetworkScoreCache;)Z

    move-result v0

    .line 392
    .end local v0    # "scoreChanged":Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
