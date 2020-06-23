.class public Lcom/android/settingslib/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/BatteryInfo$BatteryDataParser;,
        Lcom/android/settingslib/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public chargeLabelString:Ljava/lang/String;

.field public discharging:Z

.field private mCharging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/String;

.field public remainingLabelInfo:Ljava/lang/String;

.field public remainingTimeUs:J

.field public statusLabel:Ljava/lang/String;

.field private timePeriod:J


# direct methods
.method static synthetic -get0(Lcom/android/settingslib/BatteryInfo;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/BatteryInfo;

    .prologue
    iget-boolean v0, p0, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/BatteryInfo;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/BatteryInfo;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/settingslib/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/BatteryInfo;->discharging:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    .line 33
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settingslib/BatteryInfo;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "shortString"    # Z

    .prologue
    .line 134
    new-instance v6, Lcom/android/settingslib/BatteryInfo;

    invoke-direct {v6}, Lcom/android/settingslib/BatteryInfo;-><init>()V

    .line 135
    .local v6, "info":Lcom/android/settingslib/BatteryInfo;
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/settingslib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v13

    iput v13, v6, Lcom/android/settingslib/BatteryInfo;->batteryLevel:I

    .line 137
    iget v13, v6, Lcom/android/settingslib/BatteryInfo;->batteryLevel:I

    invoke-static {v13}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 142
    const-string/jumbo v13, "plugged_raw"

    .line 143
    const-string/jumbo v14, "plugged"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 142
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 144
    .local v7, "plugType":I
    if-eqz v7, :cond_0

    const/16 v13, 0x8

    if-eq v7, v13, :cond_0

    const/4 v8, 0x1

    .line 145
    .local v8, "pluggedIn":Z
    :goto_0
    if-nez v8, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/motorola/settingslib/ModUtils;->isDeviceChargingFromMod(Landroid/content/Intent;)Z

    move-result v13

    :goto_1
    iput-boolean v13, v6, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 151
    .local v10, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->statusLabel:Ljava/lang/String;

    .line 152
    iget-boolean v13, v6, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    if-nez v13, :cond_5

    .line 153
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v4

    .line 154
    .local v4, "drainTime":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_4

    .line 155
    iput-wide v4, v6, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    .line 157
    const-wide/16 v14, 0x3e8

    div-long v14, v4, v14

    .line 156
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 159
    .local v12, "timeString":Ljava/lang/String;
    if-eqz p5, :cond_2

    sget v13, Lcom/android/settingslib/R$string;->power_remaining_duration_only_short:I

    .line 158
    :goto_2
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 161
    const/4 v15, 0x0

    aput-object v12, v14, v15

    .line 158
    invoke-virtual {v10, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 162
    sget v13, Lcom/android/settingslib/R$string;->power_remaining_duration_info:I

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->remainingLabelInfo:Ljava/lang/String;

    .line 164
    if-eqz p5, :cond_3

    sget v13, Lcom/android/settingslib/R$string;->power_discharging_duration_short:I

    .line 163
    :goto_3
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    .line 166
    iget-object v15, v6, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v12, v14, v15

    .line 163
    invoke-virtual {v10, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    .line 197
    .end local v4    # "drainTime":J
    .end local v12    # "timeString":Ljava/lang/String;
    :goto_4
    return-object v6

    .line 144
    .end local v8    # "pluggedIn":Z
    .end local v10    # "resources":Landroid/content/res/Resources;
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "pluggedIn":Z
    goto :goto_0

    .line 145
    :cond_1
    const/4 v13, 0x1

    goto :goto_1

    .line 160
    .restart local v4    # "drainTime":J
    .restart local v10    # "resources":Landroid/content/res/Resources;
    .restart local v12    # "timeString":Ljava/lang/String;
    :cond_2
    sget v13, Lcom/android/settingslib/R$string;->power_remaining_duration_only:I

    goto :goto_2

    .line 165
    :cond_3
    sget v13, Lcom/android/settingslib/R$string;->power_discharging_duration:I

    goto :goto_3

    .line 168
    .end local v12    # "timeString":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 169
    const/4 v13, 0x0

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->remainingLabelInfo:Ljava/lang/String;

    .line 170
    iget-object v13, v6, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    goto :goto_4

    .line 173
    .end local v4    # "drainTime":J
    :cond_5
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    .line 174
    .local v2, "chargeTime":J
    const-string/jumbo v13, "status"

    .line 175
    const/4 v14, 0x1

    .line 174
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 176
    .local v11, "status":I
    const/4 v13, 0x0

    iput-boolean v13, v6, Lcom/android/settingslib/BatteryInfo;->discharging:Z

    .line 177
    const-wide/16 v14, 0x0

    cmp-long v13, v2, v14

    if-lez v13, :cond_7

    const/4 v13, 0x5

    if-eq v11, v13, :cond_7

    .line 178
    iput-wide v2, v6, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    .line 180
    const-wide/16 v14, 0x3e8

    div-long v14, v2, v14

    .line 179
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 181
    .restart local v12    # "timeString":Ljava/lang/String;
    if-eqz p5, :cond_6

    sget v9, Lcom/android/settingslib/R$string;->power_charging_duration_short:I

    .line 184
    .local v9, "resId":I
    :goto_5
    sget v13, Lcom/android/settingslib/R$string;->power_remaining_charging_duration_only:I

    .line 183
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 184
    const/4 v15, 0x0

    aput-object v12, v14, v15

    .line 183
    invoke-virtual {v10, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 185
    sget v13, Lcom/android/settingslib/R$string;->power_charging_duration_info:I

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->remainingLabelInfo:Ljava/lang/String;

    .line 186
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 187
    iget-object v14, v6, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x1

    aput-object v12, v13, v14

    .line 186
    invoke-virtual {v10, v9, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    goto :goto_4

    .line 182
    .end local v9    # "resId":I
    :cond_6
    sget v9, Lcom/android/settingslib/R$string;->power_charging_duration:I

    .restart local v9    # "resId":I
    goto :goto_5

    .line 190
    .end local v9    # "resId":I
    .end local v12    # "timeString":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 191
    const/4 v13, 0x0

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->remainingLabelInfo:Ljava/lang/String;

    .line 193
    sget v13, Lcom/android/settingslib/R$string;->power_charging:I

    .line 192
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    .line 193
    iget-object v15, v6, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    iget-object v15, v6, Lcom/android/settingslib/BatteryInfo;->statusLabel:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 192
    invoke-virtual {v10, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settingslib/BatteryInfo$Callback;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;Z)V

    .line 102
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settingslib/BatteryInfo$Callback;
    .param p2, "shortString"    # Z

    .prologue
    .line 106
    new-instance v0, Lcom/android/settingslib/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settingslib/BatteryInfo$2;-><init>(Landroid/content/Context;ZLcom/android/settingslib/BatteryInfo$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/BatteryInfo$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method

.method private static varargs parse(Landroid/os/BatteryStats;J[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V
    .locals 37
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "remainingTimeUs"    # J
    .param p3, "parsers"    # [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    .prologue
    .line 212
    const-wide/16 v28, 0x0

    .line 213
    .local v28, "startWalltime":J
    const-wide/16 v8, 0x0

    .line 214
    .local v8, "endDateWalltime":J
    const-wide/16 v10, 0x0

    .line 215
    .local v10, "endWalltime":J
    const-wide/16 v14, 0x0

    .line 216
    .local v14, "historyStart":J
    const-wide/16 v12, 0x0

    .line 217
    .local v12, "historyEnd":J
    const/16 v19, -0x1

    .line 212
    .local v19, "lastLevel":B
    const-wide/16 v6, 0x0

    .line 219
    .local v6, "curWalltime":J
    const-wide/16 v22, 0x0

    .line 220
    .local v22, "lastWallTime":J
    const-wide/16 v20, 0x0

    .line 221
    .local v20, "lastRealtime":J
    const/16 v18, 0x0

    .line 222
    .local v18, "lastInteresting":I
    const/16 v26, 0x0

    .line 223
    .local v26, "pos":I
    const/4 v5, 0x1

    .line 224
    .local v5, "first":Z
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 225
    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 226
    .end local v19    # "lastLevel":B
    .local v27, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 227
    add-int/lit8 v26, v26, 0x1

    .line 228
    if-eqz v5, :cond_1

    .line 229
    const/4 v5, 0x0

    .line 230
    move-object/from16 v0, v27

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 232
    :cond_1
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    .line 233
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 242
    :cond_2
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x39ef8b000L

    add-long v34, v34, v22

    cmp-long v32, v32, v34

    if-gtz v32, :cond_3

    .line 243
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    const-wide/32 v34, 0x493e0

    add-long v34, v34, v14

    cmp-long v32, v32, v34

    if-gez v32, :cond_4

    .line 244
    :cond_3
    const-wide/16 v28, 0x0

    .line 246
    :cond_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v22, v0

    .line 247
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 248
    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-nez v32, :cond_5

    .line 249
    sub-long v32, v20, v14

    sub-long v28, v22, v32

    .line 252
    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 253
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v32, 0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 254
    :cond_6
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v19, v0

    .line 256
    :cond_7
    move/from16 v18, v26

    .line 257
    move-object/from16 v0, v27

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto/16 :goto_0

    .line 261
    .end local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 262
    add-long v32, v22, v12

    sub-long v8, v32, v20

    .line 263
    const-wide/16 v32, 0x3e8

    div-long v32, p1, v32

    add-long v10, v8, v32

    .line 265
    const/16 v16, 0x0

    .line 266
    .local v16, "i":I
    move/from16 v4, v18

    .line 268
    .local v4, "N":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    .line 269
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2, v10, v11}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    .line 268
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 271
    :cond_9
    cmp-long v32, v8, v28

    if-lez v32, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_11

    .line 272
    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 273
    .restart local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_11

    move/from16 v0, v16

    if-ge v0, v4, :cond_11

    .line 274
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_b

    .line 275
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v20

    add-long v6, v6, v32

    .line 276
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 277
    sub-long v30, v6, v28

    .line 278
    .local v30, "x":J
    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-gez v32, :cond_a

    .line 279
    const-wide/16 v30, 0x0

    .line 281
    :cond_a
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 282
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    .line 281
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 285
    .end local v30    # "x":J
    :cond_b
    move-wide/from16 v24, v6

    .line 286
    .local v24, "lastWalltime":J
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    .line 287
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 288
    :cond_c
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    cmp-long v32, v32, v28

    if-ltz v32, :cond_f

    .line 289
    move-object/from16 v0, v27

    iget-wide v6, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 293
    :goto_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 296
    :cond_d
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    .line 297
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 298
    sub-long v32, v24, v6

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(J)J

    move-result-wide v32

    const-wide/32 v34, 0x36ee80

    cmp-long v32, v32, v34

    if-lez v32, :cond_10

    .line 299
    :cond_e
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 300
    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onDataGap()V

    .line 299
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 291
    :cond_f
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v14

    add-long v6, v28, v32

    goto :goto_4

    .line 304
    .end local v24    # "lastWalltime":J
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 308
    .end local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 310
    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 311
    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onParsingDone()V

    .line 310
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 313
    :cond_12
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V
    .locals 12
    .param p1, "view"    # Lcom/android/settingslib/graph/UsageView;
    .param p2, "parsers"    # [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    .prologue
    .line 52
    new-instance v2, Lcom/android/settingslib/BatteryInfo$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settingslib/BatteryInfo$1;-><init>(Lcom/android/settingslib/BatteryInfo;Lcom/android/settingslib/graph/UsageView;)V

    .line 83
    .local v2, "parser":Lcom/android/settingslib/BatteryInfo$BatteryDataParser;
    array-length v6, p2

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    .line 84
    .local v3, "parserList":[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_0

    .line 85
    aget-object v6, p2, v1

    aput-object v6, v3, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    array-length v6, p2

    aput-object v2, v3, v6

    .line 88
    iget-object v6, p0, Lcom/android/settingslib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    invoke-static {v6, v8, v9, v3}, Lcom/android/settingslib/BatteryInfo;->parse(Landroid/os/BatteryStats;J[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V

    .line 89
    invoke-virtual {p1}, Lcom/android/settingslib/graph/UsageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "context":Landroid/content/Context;
    sget v6, Lcom/android/settingslib/R$string;->charge_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 91
    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->timePeriod:J

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 90
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "timeString":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 93
    .local v4, "remaining":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 94
    sget v6, Lcom/android/settingslib/R$string;->remaining_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 95
    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 94
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 97
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {p1, v6}, Lcom/android/settingslib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method
