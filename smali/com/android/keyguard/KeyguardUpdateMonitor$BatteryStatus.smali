.class public Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryStatus"
.end annotation


# instance fields
.field public final health:I

.field public final level:I

.field public final maxChargingWattage:I

.field public final plugged:I

.field public final status:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "level"    # I
    .param p3, "plugged"    # I
    .param p4, "health"    # I
    .param p5, "maxChargingWattage"    # I

    .prologue
    .line 1322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1324
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    .line 1325
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 1326
    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    .line 1327
    iput p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    .line 1328
    iput p5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    .line 1329
    return-void
.end method


# virtual methods
.method public final getChargingSpeed(II)I
    .locals 2
    .param p1, "slowThreshold"    # I
    .param p2, "fastThreshold"    # I

    .prologue
    const/4 v0, 0x0

    .line 1360
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-gtz v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    .line 1361
    :cond_1
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-lt v1, p1, :cond_0

    .line 1362
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-le v0, p2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 1363
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBatteryLow()Z
    .locals 2

    .prologue
    .line 1356
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCharged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1348
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluggedIn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1336
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_0

    .line 1337
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1336
    :cond_0
    :goto_0
    return v0

    .line 1338
    :cond_1
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
