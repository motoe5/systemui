.class public Lcom/android/systemui/moto/VzwEri;
.super Ljava/lang/Object;
.source "VzwEri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastRoamIndChangeTime:J

.field private final mLock:Ljava/lang/Object;

.field private mLossOfServiceDelayTask:Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayEriAlertAfterBoot:Z

.field private mPreAlertUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/moto/VzwEri;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/VzwEri;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/VzwEri;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/moto/VzwEri;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/VzwEri;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/VzwEri;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/moto/VzwEri;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/VzwEri;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/moto/VzwEri;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/moto/VzwEri;
    .param p1, "-value"    # Landroid/media/MediaPlayer;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/moto/VzwEri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/moto/VzwEri;
    .param p1, "-value"    # Landroid/net/Uri;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/moto/VzwEri;->mPreAlertUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/moto/VzwEri;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/moto/VzwEri;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/moto/VzwEri;->stopMediaPlayer()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "VzwEri"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/moto/VzwEri;->mLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;-><init>(Lcom/android/systemui/moto/VzwEri;Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;)V

    iput-object v0, p0, Lcom/android/systemui/moto/VzwEri;->mLossOfServiceDelayTask:Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/moto/VzwEri;->mPlayEriAlertAfterBoot:Z

    .line 74
    iput-object v1, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 77
    iput-object v1, p0, Lcom/android/systemui/moto/VzwEri;->mPreAlertUri:Landroid/net/Uri;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/moto/VzwEri;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private final needPlayEriAlert(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)Z
    .locals 22
    .param p1, "newServiceState"    # Landroid/telephony/ServiceState;
    .param p2, "preServiceState"    # Landroid/telephony/ServiceState;
    .param p3, "phone"    # Landroid/telephony/TelephonyManager;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/moto/VzwEri;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 192
    const-string/jumbo v18, "eri_alert_sounds"

    const/16 v19, 0x1

    .line 191
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_1

    .line 193
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_0

    .line 194
    const-string/jumbo v15, "VzwEri"

    const-string/jumbo v18, "ERI alert sound is disabled."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    const/4 v15, 0x0

    return v15

    .line 200
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v15

    if-eqz v15, :cond_3

    .line 201
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_2

    .line 202
    const-string/jumbo v15, "VzwEri"

    const-string/jumbo v18, "In call state, not to play ERI alert sound."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    const/4 v15, 0x0

    return v15

    .line 210
    :cond_3
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 211
    :cond_4
    const/4 v15, 0x1

    return v15

    .line 213
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 214
    .local v13, "preState":I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    .line 218
    .local v12, "newState":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/moto/VzwEri;->mLossOfServiceDelayTask:Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;

    iget-boolean v15, v15, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->started:Z

    if-eqz v15, :cond_7

    .line 219
    const/4 v15, 0x1

    if-ne v13, v15, :cond_7

    .line 220
    if-nez v12, :cond_7

    .line 221
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_6

    const-string/jumbo v15, "VzwEri"

    const-string/jumbo v18, "In Service again, NOT play Loss Of Service alert"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/moto/VzwEri;->mLossOfServiceDelayTask:Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;

    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v15, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->started:Z

    .line 223
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/moto/VzwEri;->mLossOfServiceDelayTask:Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    :cond_7
    const/4 v15, 0x3

    if-ne v13, v15, :cond_a

    .line 228
    const/4 v15, 0x1

    if-ne v12, v15, :cond_a

    .line 231
    :cond_8
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_9

    .line 232
    const-string/jumbo v15, "VzwEri"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Service State changed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " ==> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_9
    const/4 v15, 0x0

    return v15

    .line 229
    :cond_a
    const/4 v15, 0x1

    if-ne v13, v15, :cond_b

    .line 230
    const/4 v15, 0x3

    if-eq v12, v15, :cond_8

    .line 240
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/moto/VzwEri;->mContext:Landroid/content/Context;

    const-string/jumbo v18, "activity"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 241
    .local v4, "am":Landroid/app/ActivityManager;
    const/4 v6, 0x0

    .line 242
    .local v6, "i":I
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_c

    .line 243
    const-string/jumbo v15, "VzwEri"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "===== preState: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "   newState: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_c
    const/4 v15, 0x2

    :try_start_0
    invoke-virtual {v4, v15}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 247
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v7, :cond_12

    .line 248
    const/4 v6, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_12

    .line 249
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 250
    .local v14, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_d

    .line 251
    const-string/jumbo v15, "VzwEri"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "== baseActivity: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_d
    const/4 v15, 0x3

    if-eq v13, v15, :cond_e

    .line 256
    const/4 v15, 0x1

    if-ne v13, v15, :cond_11

    .line 257
    :cond_e
    iget-object v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 258
    const-string/jumbo v18, "AirplaneModeHandler"

    .line 257
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 259
    iget-object v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 260
    const-string/jumbo v18, "EmergencyCallHandler"

    .line 259
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    .line 255
    if-eqz v15, :cond_11

    .line 261
    :cond_f
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_10

    .line 262
    const-string/jumbo v15, "VzwEri"

    const-string/jumbo v18, "Calling App will make a call, do not play ERI alert."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_10
    const/4 v15, 0x0

    return v15

    .line 248
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 267
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v14    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v5

    .line 268
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_12

    .line 269
    const-string/jumbo v15, "VzwEri"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "catch exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v15

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v18

    .line 274
    move/from16 v0, v18

    if-ne v15, v0, :cond_13

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v15

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v18

    .line 276
    move/from16 v0, v18

    if-eq v15, v0, :cond_17

    .line 281
    :cond_13
    if-nez v13, :cond_15

    .line 282
    const/4 v15, 0x1

    if-ne v12, v15, :cond_15

    .line 284
    const-string/jumbo v15, "ro.mot.eri.losalert.delay"

    const-string/jumbo v18, "2000"

    .line 283
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v8, v15

    .line 285
    .local v8, "lossOfServiceDelay":J
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_14

    const-string/jumbo v15, "VzwEri"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loss Of Service alert delayed:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/moto/VzwEri;->mLossOfServiceDelayTask:Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;

    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v15, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->started:Z

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/moto/VzwEri;->mLossOfServiceDelayTask:Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;

    move-object/from16 v0, p4

    invoke-virtual {v0, v15, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    const/4 v15, 0x0

    return v15

    .line 290
    .end local v8    # "lossOfServiceDelay":J
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/moto/VzwEri;->mLastRoamIndChangeTime:J

    .line 292
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_16

    .line 293
    const-string/jumbo v15, "VzwEri"

    const-string/jumbo v18, "Roaming indicator changed, play ERI alert sound."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_16
    const/4 v15, 0x1

    return v15

    .line 299
    :cond_17
    if-nez v13, :cond_1b

    .line 300
    if-nez v12, :cond_1b

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v18

    move/from16 v0, v18

    if-eq v15, v0, :cond_1b

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v15

    if-eqz v15, :cond_1b

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/moto/VzwEri;->mLastRoamIndChangeTime:J

    move-wide/from16 v20, v0

    sub-long v16, v18, v20

    .line 305
    .local v16, "sidDelay":J
    const-string/jumbo v15, "ro.mot.eri.sidalert.delay"

    const-string/jumbo v18, "1000"

    .line 304
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v10, v15

    .line 306
    .local v10, "minSidDelay":J
    cmp-long v15, v16, v10

    if-gez v15, :cond_19

    .line 307
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_18

    const-string/jumbo v15, "VzwEri"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SystemId:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v19

    .line 307
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 308
    const-string/jumbo v19, " Delay:"

    .line 307
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 308
    const-string/jumbo v19, "<"

    .line 307
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 309
    const-string/jumbo v19, ", NOT play ERI alert sound."

    .line 307
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_18
    const/4 v15, 0x0

    return v15

    .line 312
    :cond_19
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_1a

    const-string/jumbo v15, "VzwEri"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SystemId:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v19

    .line 312
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 313
    const-string/jumbo v19, " Delay:"

    .line 312
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 313
    const-string/jumbo v19, ">"

    .line 312
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 314
    const-string/jumbo v19, ", play ERI alert sound."

    .line 312
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1a
    const/4 v15, 0x1

    return v15

    .line 319
    .end local v10    # "minSidDelay":J
    .end local v16    # "sidDelay":J
    :cond_1b
    sget-boolean v15, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v15, :cond_1c

    .line 320
    const-string/jumbo v15, "VzwEri"

    const-string/jumbo v18, "Roaming indicator does not change, not to play ERI alert sound."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1c
    const/4 v15, 0x0

    return v15
.end method

.method private final playEriAlert()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "alertUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 150
    .local v2, "iPhone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 149
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 151
    .local v2, "iPhone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 152
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriAlertUri()Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    .end local v0    # "alertUri":Landroid/net/Uri;
    .end local v2    # "iPhone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/moto/VzwEri;->mPreAlertUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 161
    iget-object v3, p0, Lcom/android/systemui/moto/VzwEri;->mPreAlertUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v3

    if-nez v3, :cond_1

    .line 162
    return-void

    .line 154
    .restart local v0    # "alertUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "VzwEri"

    const-string/jumbo v4, "playEriAlert() caught RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v0    # "alertUri":Landroid/net/Uri;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/moto/VzwEri;->mPreAlertUri:Landroid/net/Uri;

    .line 167
    if-eqz v0, :cond_3

    .line 168
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 170
    iget-object v3, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/systemui/moto/VzwEri$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/moto/VzwEri$1;-><init>(Lcom/android/systemui/moto/VzwEri;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 178
    iget-object v3, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/android/systemui/moto/VzwEri;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 179
    iget-object v3, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 180
    iget-object v3, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 181
    sget-boolean v3, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v3, :cond_2

    .line 182
    const-string/jumbo v3, "VzwEri"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Call mediaPlayer.start(), Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 186
    :cond_3
    return-void
.end method

.method private stopMediaPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 140
    iput-object v1, p0, Lcom/android/systemui/moto/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public playEriAlertAfterBoot()V
    .locals 4

    .prologue
    .line 125
    sget-boolean v1, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VzwEri"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Need play ERI alert after boot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/moto/VzwEri;->mPlayEriAlertAfterBoot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/moto/VzwEri;->mPlayEriAlertAfterBoot:Z

    if-eqz v1, :cond_1

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/moto/VzwEri;->mPlayEriAlertAfterBoot:Z

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/moto/VzwEri;->playEriAlert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "VzwEri"

    const-string/jumbo v2, "playEriAlert() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V
    .locals 3
    .param p1, "newServiceState"    # Landroid/telephony/ServiceState;
    .param p2, "preServiceState"    # Landroid/telephony/ServiceState;
    .param p3, "phone"    # Landroid/telephony/TelephonyManager;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/moto/VzwEri;->needPlayEriAlert(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string/jumbo v1, "sys.boot_completed"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    sget-boolean v1, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v1, :cond_0

    .line 102
    const-string/jumbo v1, "VzwEri"

    const-string/jumbo v2, "boot not completed, do not play ERI alert sound."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/moto/VzwEri;->mPlayEriAlertAfterBoot:Z

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    sget-boolean v1, Lcom/android/systemui/moto/VzwEri;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "VzwEri"

    const-string/jumbo v2, "onServiceStateChanged: play ERI alert sound."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/moto/VzwEri;->playEriAlert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/moto/VzwEri;->mPlayEriAlertAfterBoot:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/moto/VzwEri;->mPreAlertUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/moto/VzwEri;->mPlayEriAlertAfterBoot:Z

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "VzwEri"

    const-string/jumbo v2, "playEriAlert() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
