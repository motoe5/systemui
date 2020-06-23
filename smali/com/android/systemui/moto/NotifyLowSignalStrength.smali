.class public Lcom/android/systemui/moto/NotifyLowSignalStrength;
.super Ljava/lang/Object;
.source "NotifyLowSignalStrength.java"


# static fields
.field static final DEBUG:Z

.field static sNotifyLowSignalStrength:Lcom/android/systemui/moto/NotifyLowSignalStrength;


# instance fields
.field mCarrierDbmValue:I

.field mContext:Landroid/content/Context;

.field mLowSignalStrengthIntent:Landroid/content/Intent;

.field mPreviousDbmValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->DEBUG:Z

    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mCarrierDbmValue:I

    .line 27
    iput v0, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mPreviousDbmValue:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mLowSignalStrengthIntent:Landroid/content/Intent;

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/moto/NotifyLowSignalStrength;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    return-void
.end method

.method private dumpLog(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "ss"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v0, 0x0

    .line 82
    sget-boolean v1, Lcom/android/systemui/moto/NotifyLowSignalStrength;->DEBUG:Z

    if-nez v1, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    const-string/jumbo v1, "NotifyLowSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signalstrength current value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string/jumbo v1, "NotifyLowSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCarrierDbmValue :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mCarrierDbmValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string/jumbo v1, "NotifyLowSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check for signal strength.., mPrevSS :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mPreviousDbmValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string/jumbo v1, "NotifyLowSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Intent details :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mLowSignalStrengthIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mLowSignalStrengthIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v0, "NotifyLowSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCarrierDbmValue :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mCarrierDbmValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/moto/NotifyLowSignalStrength;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->sNotifyLowSignalStrength:Lcom/android/systemui/moto/NotifyLowSignalStrength;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/systemui/moto/NotifyLowSignalStrength;

    invoke-direct {v0, p0}, Lcom/android/systemui/moto/NotifyLowSignalStrength;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->sNotifyLowSignalStrength:Lcom/android/systemui/moto/NotifyLowSignalStrength;

    .line 38
    :cond_0
    sget-object v0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->sNotifyLowSignalStrength:Lcom/android/systemui/moto/NotifyLowSignalStrength;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 44
    const v3, 0x7f05002e

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 45
    .local v0, "isLowSSFeatureEnabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mCarrierDbmValue:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    const v3, 0x7f110189

    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "targetPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mCarrierDbmValue:I

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 49
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.motorola.android.intent.action.SIGNAL_STRENGTH_DROPPED_BELOW_THRESHOLD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mLowSignalStrengthIntent:Landroid/content/Intent;

    .line 50
    iget-object v2, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mLowSignalStrengthIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :cond_0
    const-string/jumbo v2, "NotifyLowSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLowSSFeatureEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 53
    const-string/jumbo v4, ", mCarrierDbmValue :"

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 53
    iget v4, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mCarrierDbmValue:I

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 53
    const-string/jumbo v4, ", mTargetPackage :"

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/moto/NotifyLowSignalStrength;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public notifyLowSignalStrengthIfNeeded(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "ss"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mLowSignalStrengthIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 58
    const-string/jumbo v1, "NotifyLowSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current dbmLevel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", prev dbmLevel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mPreviousDbmValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 59
    const-string/jumbo v3, ", isLte :"

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/moto/NotifyLowSignalStrength;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .line 64
    .local v0, "currentDbmValue":I
    iget v1, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mPreviousDbmValue:I

    iget v2, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mCarrierDbmValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mCarrierDbmValue:I

    if-ge v0, v1, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/moto/NotifyLowSignalStrength;->dumpLog(Landroid/telephony/SignalStrength;)V

    .line 67
    const-string/jumbo v1, "NotifyLowSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying for low dbm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mLowSignalStrengthIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    :cond_0
    iput v0, p0, Lcom/android/systemui/moto/NotifyLowSignalStrength;->mPreviousDbmValue:I

    .line 73
    .end local v0    # "currentDbmValue":I
    :cond_1
    return-void
.end method
