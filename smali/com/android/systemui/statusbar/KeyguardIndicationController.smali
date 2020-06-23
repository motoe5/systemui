.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$1;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$2;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
    }
.end annotation


# instance fields
.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mChargeRate:I

.field private mChargingSpeed:I

.field private mChargingWattage:I

.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mDozing:Z

.field private final mFastThreshold:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIndicationArea:Landroid/view/ViewGroup;

.field private final mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field private mRestingIndication:Ljava/lang/String;

.field private final mSlowThreshold:I

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mTickReceiver:Landroid/content/BroadcastReceiver;

.field private mTransientIndication:Ljava/lang/String;

.field private mTransientTextColor:I

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisible:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeRate:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indicationArea"    # Landroid/view/ViewGroup;
    .param p3, "lockIcon"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .prologue
    .line 105
    const-string/jumbo v0, "Doze:KeyguardIndication"

    invoke-static {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    .line 104
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .line 107
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 108
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indicationArea"    # Landroid/view/ViewGroup;
    .param p3, "lockIcon"    # Lcom/android/systemui/statusbar/phone/LockIcon;
    .param p4, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeRate:I

    .line 362
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    .line 119
    const v1, 0x7f0a0142

    .line 118
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 121
    const v1, 0x7f0a0141

    .line 120
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 122
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 123
    new-instance v1, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-direct {v1, p4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    .line 127
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    .line 129
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    .line 131
    const-string/jumbo v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 134
    const-string/jumbo v1, "device_policy"

    .line 133
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    .line 137
    return-void
.end method

.method private computePowerIndication()Ljava/lang/String;
    .locals 9

    .prologue
    .line 310
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v6, :cond_0

    .line 311
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110260

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 315
    :cond_0
    const-wide/16 v2, 0x0

    .line 317
    .local v2, "chargingTimeRemaining":J
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 323
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    const/4 v5, 0x1

    .line 326
    .local v5, "hasChargingTime":Z
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    packed-switch v6, :pswitch_data_0

    .line 338
    :pswitch_0
    if-eqz v5, :cond_4

    .line 339
    const v0, 0x7f110262

    .line 344
    .local v0, "chargingId":I
    :goto_2
    if-eqz v5, :cond_5

    .line 346
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 345
    invoke-static {v6, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "chargingTimeFormatted":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v6, v0, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 319
    .end local v0    # "chargingId":I
    .end local v1    # "chargingTimeFormatted":Ljava/lang/String;
    .end local v5    # "hasChargingTime":Z
    :catch_0
    move-exception v4

    .line 320
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "KeyguardIndication"

    const-string/jumbo v7, "Error calling IBatteryStats: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 323
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "hasChargingTime":Z
    goto :goto_1

    .line 328
    :pswitch_1
    if-eqz v5, :cond_2

    .line 329
    const v0, 0x7f110263

    .restart local v0    # "chargingId":I
    goto :goto_2

    .line 330
    .end local v0    # "chargingId":I
    :cond_2
    const v0, 0x7f110279

    .restart local v0    # "chargingId":I
    goto :goto_2

    .line 333
    .end local v0    # "chargingId":I
    :pswitch_2
    if-eqz v5, :cond_3

    .line 334
    const v0, 0x7f110264

    .restart local v0    # "chargingId":I
    goto :goto_2

    .line 335
    .end local v0    # "chargingId":I
    :cond_3
    const v0, 0x7f11027a

    .restart local v0    # "chargingId":I
    goto :goto_2

    .line 340
    .end local v0    # "chargingId":I
    :cond_4
    const v0, 0x7f110278

    .restart local v0    # "chargingId":I
    goto :goto_2

    .line 349
    :cond_5
    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeRate:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 350
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1102ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 353
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 6
    .param p1, "monitor"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 143
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    sget-object v5, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 147
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 150
    sget-object v5, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    .line 149
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method private updateDisclosure()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 179
    .local v0, "organizationName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 181
    aput-object v0, v3, v5

    const v4, 0x7f1101cf

    .line 180
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 189
    .end local v0    # "organizationName":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 183
    .restart local v0    # "organizationName":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v2, 0x7f1101ce

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    goto :goto_0

    .line 187
    .end local v0    # "organizationName":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateIndication()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 267
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v1, :cond_3

    .line 270
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v2, 0x104032a

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    .line 307
    :cond_3
    :goto_1
    return-void

    .line 286
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 287
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    goto :goto_1

    .line 290
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v1, :cond_6

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "indication":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    goto :goto_1

    .line 298
    .end local v0    # "indication":Ljava/lang/String;
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeRate:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 299
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1102ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    goto :goto_1

    .line 303
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object v0
.end method

.method public hideTransientIndication()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 256
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 260
    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3
    .param p1, "delayMs"    # J

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 220
    return-void
.end method

.method public setDozing(Z)V
    .locals 1
    .param p1, "dozing"    # Z

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-ne v0, p1, :cond_0

    .line 397
    return-void

    .line 399
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    .line 402
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 360
    return-void
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 0
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 212
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 198
    :cond_0
    return-void

    .line 193
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showTransientIndication(I)V
    .locals 1
    .param p1, "transientIndication"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;)V
    .locals 1
    .param p1, "transientIndication"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    .line 234
    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;I)V
    .locals 2
    .param p1, "transientIndication"    # Ljava/lang/String;
    .param p2, "textColor"    # I

    .prologue
    const/4 v1, 0x1

    .line 240
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 241
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 246
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 249
    return-void
.end method
