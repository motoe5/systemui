.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$Receiver;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field mAcFullChargeNotified:Z

.field mAcFullCharged:Z

.field private mBatteryLevel:I

.field private mBatteryLevelWhenPlugged:I

.field private mBatteryStatus:I

.field private mChargeRate:I

.field private final mHandler:Landroid/os/Handler;

.field private mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

.field private mInvalidCharger:I

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field private mNextLogTime:J

.field private mNumTemps:I

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field private mRecentTemps:[F

.field private mScreenOffTime:J

.field private mShowSlowChargerUI:Z

.field private mThresholdTemp:F

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelWhenPlugged:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/power/PowerUI;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mShowSlowChargerUI:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mChargeRate:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/power/PowerUI;)[I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelWhenPlugged:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mChargeRate:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/power/PowerUI;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "level"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->notifyAcFullCharged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 60
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 62
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 63
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 71
    const/16 v0, 0x7d

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    .line 77
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mChargeRate:I

    .line 82
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mAcFullChargeNotified:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mAcFullCharged:Z

    .line 47
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 156
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v2, :cond_0

    .line 157
    const/4 v2, 0x1

    return v2

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v3

    if-le p1, v2, :cond_1

    .line 160
    return v3

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 163
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 164
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 165
    rsub-int/lit8 v2, v1, -0x1

    return v2

    .line 163
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 168
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initTemperatureWarning()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 329
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 330
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 331
    .local v1, "resources":Landroid/content/res/Resources;
    const-string/jumbo v3, "show_temperature_warning"

    .line 332
    const v4, 0x7f0b000e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 331
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    const-string/jumbo v3, "warning_temperature"

    .line 337
    const v4, 0x7f0b0011

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    .line 336
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    .line 339
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 341
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    .line 342
    const/4 v4, 0x3

    .line 343
    const/4 v5, 0x1

    .line 341
    invoke-virtual {v3, v4, v5}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v2

    .line 344
    .local v2, "throttlingTemps":[F
    if-eqz v2, :cond_1

    .line 345
    array-length v3, v2

    if-nez v3, :cond_2

    .line 347
    :cond_1
    return-void

    .line 346
    :cond_2
    aget v3, v2, v6

    const v4, -0x800001

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 349
    aget v3, v2, v6

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    .line 351
    .end local v2    # "throttlingTemps":[F
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    .line 355
    return-void
.end method

.method private logAtTemperatureThreshold(F)V
    .locals 4
    .param p1, "temp"    # F

    .prologue
    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "currentTemp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 390
    const-string/jumbo v3, ",thresholdTemp="

    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 390
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 391
    const-string/jumbo v3, ",batteryStatus="

    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 391
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 392
    const-string/jumbo v3, ",recentTemps="

    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v0, v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_0
    const-string/jumbo v2, "PowerUI"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method private logTemperatureStats()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 405
    iget-wide v6, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_0

    .line 406
    return-void

    .line 409
    :cond_0
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-lez v6, :cond_4

    .line 410
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v4, v6, v10

    .local v4, "sum":F
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v3, v6, v10

    .local v3, "min":F
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v6, v10

    .line 411
    .local v2, "max":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v1, v6, :cond_3

    .line 412
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v5, v6, v1

    .line 413
    .local v5, "temp":F
    add-float/2addr v4, v5

    .line 414
    cmpl-float v6, v5, v2

    if-lez v6, :cond_1

    .line 415
    move v2, v5

    .line 417
    :cond_1
    cmpg-float v6, v5, v3

    if-gez v6, :cond_2

    .line 418
    move v3, v5

    .line 411
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v5    # "temp":F
    :cond_3
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    int-to-float v6, v6

    div-float v0, v4, v6

    .line 423
    .local v0, "avg":F
    const-string/jumbo v6, "PowerUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "avg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",min="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",max="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_skin_temp_avg"

    float-to-int v8, v0

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 425
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_skin_temp_min"

    float-to-int v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 426
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_skin_temp_max"

    float-to-int v8, v2

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 428
    .end local v0    # "avg":F
    .end local v1    # "i":I
    .end local v2    # "max":F
    .end local v3    # "min":F
    .end local v4    # "sum":F
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    .line 429
    iput v10, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    .line 430
    return-void
.end method

.method private notifyAcFullCharged()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mAcFullChargeNotified:Z

    .line 472
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showAcFullChargedWarning()V

    .line 473
    return-void
.end method

.method private setNextLogTime()V
    .locals 4

    .prologue
    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    .line 434
    return-void
.end method

.method private showThermalShutdownDialog()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastShutdownReason()I

    move-result v0

    .line 359
    const/4 v1, 0x4

    .line 358
    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showThermalShutdownWarning()V

    .line 362
    :cond_0
    return-void
.end method

.method private updateTemperatureWarning()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 365
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    .line 366
    const/4 v4, 0x3

    .line 365
    invoke-virtual {v3, v4, v5}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v2

    .line 368
    .local v2, "temps":[F
    array-length v3, v2

    if-eqz v3, :cond_0

    .line 369
    aget v1, v2, v5

    .line 370
    .local v1, "temp":F
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    aput v1, v3, v4

    .line 372
    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 373
    .local v0, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInVrMode()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 374
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    .line 375
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerUI;->logAtTemperatureThreshold(F)V

    .line 376
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showHighTemperatureWarning()V

    .line 382
    .end local v0    # "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    .end local v1    # "temp":F
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->logTemperatureStats()V

    .line 384
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/power/-$Lambda$rOQQRcS4IrQ-aVKdM_fEvP6v_JI;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/-$Lambda$rOQQRcS4IrQ-aVKdM_fEvP6v_JI;-><init>(Ljava/lang/Object;)V

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    return-void

    .line 378
    .restart local v0    # "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    .restart local v1    # "temp":F
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissHighTemperatureWarning()V

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_systemui_power_PowerUI-mthref-0()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 437
    const-string/jumbo v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 439
    const-string/jumbo v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    const-string/jumbo v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    const-string/jumbo v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    const-string/jumbo v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 451
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 452
    const-string/jumbo v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 454
    const-string/jumbo v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 457
    const-string/jumbo v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 459
    const-string/jumbo v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    .line 458
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 460
    const-string/jumbo v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    const-string/jumbo v0, "mThresholdTemp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    const-string/jumbo v0, "mNextLogTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    .line 467
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 89
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "hardware_properties"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    check-cast v2, Landroid/os/HardwarePropertiesManager;

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    .line 90
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 91
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 92
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 93
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 94
    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 91
    invoke-direct {v4, v5, v2, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 96
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 102
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 104
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "low_power_trigger_level"

    .line 103
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 105
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 103
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 109
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 110
    const v3, 0x7f05004d

    .line 109
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mShowSlowChargerUI:Z

    .line 113
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v2}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showThermalShutdownDialog()V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initTemperatureWarning()V

    .line 120
    return-void

    .line 90
    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto :goto_0
.end method

.method updateBatteryWarningLevels()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 123
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 124
    const v5, 0x10e0022

    .line 123
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 126
    .local v0, "critLevel":I
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 127
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 128
    const v5, 0x10e0054

    .line 127
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 130
    .local v1, "defWarnLevel":I
    const-string/jumbo v4, "low_power_trigger_level"

    .line 129
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 131
    .local v3, "warnLevel":I
    if-nez v3, :cond_0

    .line 132
    move v3, v1

    .line 134
    :cond_0
    if-ge v3, v0, :cond_1

    .line 135
    move v3, v0

    .line 138
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aput v3, v4, v6

    .line 139
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v5, 0x1

    aput v0, v4, v5

    .line 140
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v4, v4, v6

    .line 141
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 142
    const v6, 0x10e0053

    .line 141
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 140
    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 143
    return-void
.end method
