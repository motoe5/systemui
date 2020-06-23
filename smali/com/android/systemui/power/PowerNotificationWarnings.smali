.class public Lcom/android/systemui/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerNotificationWarnings$1;,
        Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;,
        Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;
    }
.end annotation


# static fields
.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final DEBUG:Z

.field private static final SHOWING_STRINGS:[Ljava/lang/String;


# instance fields
.field private mBatteryLevel:I

.field private mBucket:I

.field private mBucketDroppedNegativeTimeMs:J

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mHighTempWarning:Z

.field private mInvalidCharger:Z

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mOpenBatterySettings:Landroid/content/Intent;

.field private mPlaySound:Z

.field private final mPowerMan:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

.field private mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mScreenOffTime:J

.field private mShowing:I

.field private final mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

.field private mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mWarning:Z

.field private mWeakCharger:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "-value"    # Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighTemperatureWarningInternal()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "mode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showHighTemperatureDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showThermalShutdownDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 72
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 82
    const-string/jumbo v1, "SHOWING_NOTHING"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "SHOWING_WARNING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "SHOWING_SAVER"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "SHOWING_INVALID_CHARGER"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "SHOWING_WEAK_CHARGER"

    aput-object v1, v0, v3

    .line 81
    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 101
    const/16 v1, 0xd

    .line 99
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;
    .param p3, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    .line 109
    const-string/jumbo v0, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    .line 454
    new-instance v0, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    .line 129
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 131
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->init()V

    .line 133
    return-void
.end method

.method private dismissHighTemperatureWarningInternal()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "high_temp"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 263
    return-void
.end method

.method private dismissInvalidChargerNotification()V
    .locals 2

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing invalid charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 378
    return-void
.end method

.method private dismissLowBatteryNotification()V
    .locals 2

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing low battery notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 353
    return-void
.end method

.method private hasBatterySettings()Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 231
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 230
    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private setSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    .line 411
    return-void
.end method

.method private static settings(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x5c800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private showHighTemperatureDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    return-void

    .line 289
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setIconAttribute(I)V

    .line 291
    const v1, 0x7f110216

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 292
    const v1, 0x7f110214

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 293
    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 294
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 295
    new-instance v1, Lcom/android/systemui/power/-$Lambda$ukbeS6xX0pOVxqPgAJOxY1C8Mmc;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/-$Lambda$ukbeS6xX0pOVxqPgAJOxY1C8Mmc;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 296
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 297
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 298
    return-void
.end method

.method private showInvalidChargerNotification()V
    .locals 6

    .prologue
    .line 184
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    const v3, 0x7f0801a7

    .line 184
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 186
    const-wide/16 v4, 0x0

    .line 184
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 187
    const/4 v3, 0x0

    .line 184
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 188
    const/4 v3, 0x1

    .line 184
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 189
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f11022b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 190
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f11022a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 191
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 192
    const v4, 0x1060149

    .line 191
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 184
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 193
    .local v1, "nb":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 194
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 195
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 196
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 197
    return-void
.end method

.method private showStartSaverConfirmation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 392
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    return-void

    .line 393
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x7f110122

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 395
    const v1, 0x10400d7

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 396
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 397
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f110121

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 398
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 399
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 405
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 406
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 407
    return-void
.end method

.method private showThermalShutdownDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    return-void

    .line 307
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setIconAttribute(I)V

    .line 309
    const v1, 0x7f1104bf

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 310
    const v1, 0x7f1104bd

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 311
    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 312
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 313
    new-instance v1, Lcom/android/systemui/power/-$Lambda$ukbeS6xX0pOVxqPgAJOxY1C8Mmc$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/-$Lambda$ukbeS6xX0pOVxqPgAJOxY1C8Mmc$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 314
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 315
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 316
    return-void
.end method

.method private showWarningNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 200
    const v3, 0x7f11011b

    .line 201
    .local v3, "textRes":I
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    int-to-double v6, v5

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "percentage":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    const v5, 0x7f0801a7

    .line 204
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 207
    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 204
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 209
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f11011d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 210
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v2, v6, v10

    const v7, 0x7f11011b

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 212
    const-string/jumbo v5, "PNW.dismissedWarning"

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 204
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 214
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x1010543

    invoke-static {v5, v6}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v5

    .line 204
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 215
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->hasBatterySettings()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    const-string/jumbo v4, "PNW.batterySettings"

    invoke-direct {p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 219
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f110126

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    const-string/jumbo v5, "PNW.startSaver"

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 218
    invoke-virtual {v1, v10, v4, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 221
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 222
    iput-boolean v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 223
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 224
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 225
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "low_battery"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v7, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 226
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "low_battery"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 227
    return-void
.end method

.method private showWeakChargerNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 483
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 484
    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    .line 483
    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 485
    const v3, 0x7f0803dc

    .line 483
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 486
    const-wide/16 v4, 0x0

    .line 483
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 487
    const/4 v3, 0x0

    .line 483
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 489
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f11058f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 490
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f11058e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 492
    const-string/jumbo v3, "sys"

    .line 483
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 494
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 495
    const v4, 0x1060149

    .line 494
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 483
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 496
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 497
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v3, 0x102039f

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 502
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v7, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 504
    return-void
.end method

.method private updateNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 162
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotification mWarning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPlaySound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string/jumbo v2, " mInvalidCharger="

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string/jumbo v2, " mWeakCharger="

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWeakCharger:Z

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showInvalidChargerNotification()V

    .line 167
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 180
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWarningNotification()V

    .line 170
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 172
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWeakCharger:Z

    if-eqz v0, :cond_3

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWeakChargerNotification()V

    .line 174
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "low_battery"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "low_battery"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0
.end method


# virtual methods
.method public dismissHighTemperatureWarning()V
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    if-nez v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighTemperatureWarningInternal()V

    .line 254
    return-void
.end method

.method public dismissInvalidChargerWarning()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissInvalidChargerNotification()V

    .line 372
    return-void
.end method

.method public dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 345
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    .line 347
    return-void
.end method

.method dismissThermalShutdownWarning()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "high_temp"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 303
    return-void
.end method

.method public dismissWeakChargerWarning()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWeakCharger:Z

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 480
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x0

    .line 137
    const-string/jumbo v0, "mWarning="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 138
    const-string/jumbo v0, "mPlaySound="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 139
    const-string/jumbo v0, "mInvalidCharger="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 140
    const-string/jumbo v0, "mShowing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "mSaverConfirmation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "not null"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "mHighTempWarning="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 143
    const-string/jumbo v0, "mHighTempDialog="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "not null"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v0, "mThermalShutdownDialog="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "not null"

    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "mWeakCharger="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWeakCharger:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 147
    return-void

    :cond_1
    move-object v0, v1

    .line 141
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 143
    goto :goto_1
.end method

.method public isInvalidChargerWarningShowing()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_power_PowerNotificationWarnings_13131(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method synthetic lambda$-com_android_systemui_power_PowerNotificationWarnings_13867(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method public showAcFullChargedWarning()V
    .locals 7

    .prologue
    .line 531
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 532
    const-string/jumbo v5, "full_charge_notification_enable"

    const/4 v6, 0x0

    .line 531
    invoke-static {v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 534
    .local v0, "enabledNotification":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 536
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f110310

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "toastText":Ljava/lang/String;
    new-instance v2, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Context;)V

    .line 538
    .local v2, "toast":Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;
    invoke-virtual {v2, v3}, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->show(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 539
    return-void

    .line 544
    :cond_0
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 545
    .local v1, "notification":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 548
    .end local v1    # "notification":Landroid/net/Uri;
    .end local v2    # "toast":Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;
    .end local v3    # "toastText":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public showHighTemperatureWarning()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 267
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    if-eqz v2, :cond_0

    .line 268
    return-void

    .line 270
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 272
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    const v3, 0x7f0800dc

    .line 272
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 274
    const-wide/16 v4, 0x0

    .line 272
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 275
    const/4 v3, 0x0

    .line 272
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f110216

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 277
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f110215

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 279
    const-string/jumbo v3, "PNW.clickedTempWarning"

    invoke-direct {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 272
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 280
    const-string/jumbo v3, "PNW.dismissedTempWarning"

    invoke-direct {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 272
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 281
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x1010543

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v3

    .line 272
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 282
    .local v1, "nb":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 283
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 284
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v3, "high_temp"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 285
    return-void
.end method

.method public showInvalidChargerWarning()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 384
    return-void
.end method

.method public showLowBatteryWarning(Z)V
    .locals 3
    .param p1, "playSound"    # Z

    .prologue
    .line 361
    const-string/jumbo v0, "PowerUI.Notification"

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string/jumbo v2, " ["

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string/jumbo v2, "] playSound="

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 367
    return-void
.end method

.method public showThermalShutdownWarning()V
    .locals 6

    .prologue
    .line 321
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    const v3, 0x7f0800dc

    .line 321
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 323
    const-wide/16 v4, 0x0

    .line 321
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 324
    const/4 v3, 0x0

    .line 321
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 325
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f1104bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 326
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f1104be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 327
    const/4 v3, 0x1

    .line 321
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 328
    const-string/jumbo v3, "PNW.clickedThermalShutdownWarning"

    invoke-direct {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 330
    const-string/jumbo v3, "PNW.dismissedThermalShutdownWarning"

    invoke-direct {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 331
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x1010543

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v3

    .line 321
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 332
    .local v1, "nb":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 333
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 334
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 335
    const-string/jumbo v3, "high_temp"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v5, 0x27

    .line 334
    invoke-virtual {v2, v3, v5, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 336
    return-void
.end method

.method public showTurboChargerToast(Z)V
    .locals 10
    .param p1, "connected"    # Z

    .prologue
    const/4 v9, 0x1

    .line 508
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0d012f

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 509
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f0a019b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 510
    .local v3, "tv":Landroid/widget/TextView;
    const v5, 0x7f0a0113

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 511
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 512
    const v6, 0x7f0803d0

    .line 511
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    if-eqz p1, :cond_0

    .line 514
    const v5, 0x7f11058c

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 521
    :goto_0
    new-instance v2, Landroid/widget/Toast;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 522
    .local v2, "turboToast":Landroid/widget/Toast;
    invoke-virtual {v2, v9}, Landroid/widget/Toast;->setDuration(I)V

    .line 523
    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 524
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 525
    return-void

    .line 516
    .end local v2    # "turboToast":Landroid/widget/Toast;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 517
    const v6, 0x7f11058d

    .line 516
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 518
    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 516
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "toastText":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showWeakChargerWarning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 469
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWeakCharger:Z

    .line 470
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v1, 0x7f110590

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 474
    return-void
.end method

.method public update(IIJ)V
    .locals 3
    .param p1, "batteryLevel"    # I
    .param p2, "bucket"    # I
    .param p3, "screenOffTime"    # J

    .prologue
    .line 151
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 152
    if-ltz p2, :cond_1

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 157
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 158
    iput-wide p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    .line 159
    return-void

    .line 154
    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ge p2, v0, :cond_0

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    goto :goto_0
.end method

.method public updateLowBatteryWarning()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 341
    return-void
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 389
    return-void
.end method
