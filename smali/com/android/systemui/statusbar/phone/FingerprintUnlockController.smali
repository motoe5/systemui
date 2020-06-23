.class public Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintUnlockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mFpsLockedOut:Z

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mMode:I

.field private mPendingAuthenticatedUserId:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dozeScrimController"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p3, "keyguardViewMediator"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p4, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p5, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p6, "unlockMethodCache"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 134
    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    .line 118
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 119
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 121
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 122
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 123
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 124
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 125
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 126
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 127
    return-void
.end method

.method private calculateMode()I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 322
    .local v0, "unlockingAllowed":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    const/4 v1, 0x4

    return v1

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 326
    const/4 v1, 0x2

    return v1

    .line 327
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 328
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 330
    :cond_3
    return v2

    .line 333
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 335
    const/4 v1, 0x6

    return v1

    .line 336
    :cond_5
    if-eqz v0, :cond_6

    .line 337
    const/4 v1, 0x5

    return v1

    .line 338
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 339
    return v2

    .line 342
    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method private cleanup()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 395
    return-void
.end method

.method private handleFpsError(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpsError(I)V

    .line 419
    return-void
.end method

.method private handleFpsHelp(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpsHelp(I)V

    .line 423
    return-void
.end method

.method private releaseFingerprintWakeLock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "releasing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 151
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public finishKeyguardFadingAway()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 409
    iput v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    .line 415
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    return v0
.end method

.method public onFingerprintAcquired()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 157
    const-string/jumbo v0, "FingerprintUnlockController#onFingerprintAcquired"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 162
    const/4 v1, 0x2

    .line 161
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 165
    const-string/jumbo v1, "wake-and-unlock wakelock"

    .line 164
    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    const-string/jumbo v0, "acquiring wake-and-unlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 168
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 170
    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "fingerprint acquired, grabbing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    .line 173
    const-wide/16 v2, 0x3a98

    .line 172
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 183
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 184
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 347
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpsLockedOut:Z

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFingerprintUnlock(Z)V

    .line 350
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 188
    const-string/jumbo v2, "FingerprintUnlockController#onFingerprintAuthenticated"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 189
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpsLockedOut:Z

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    iput p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 192
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 193
    return-void

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    .line 196
    .local v1, "wasDeviceInteractive":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->calculateMode()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    .line 197
    const-string/jumbo v2, "FingerprintController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFingerprintAuthenticated: mMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    .line 199
    if-nez v1, :cond_1

    .line 201
    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "fp wakelock: Authenticated, waking up..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpsUnlock()V

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v3, "android.policy:FINGERPRINT"

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 206
    :cond_1
    const-string/jumbo v2, "release wake-and-unlock"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 208
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 209
    iget v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 276
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eq v2, v8, :cond_2

    .line 277
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.motorola.UNLOCK_SUCCESS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 288
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFingerprintUnlock(Z)V

    .line 291
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 292
    return-void

    .line 211
    :pswitch_1
    const-string/jumbo v2, "MODE_DISMISS"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 214
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 218
    :pswitch_2
    const-string/jumbo v2, "MODE_UNLOCK or MODE_SHOW_BOUNCER"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 224
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isDeviceInteractive()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 234
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetPanelViewForFPS()V

    .line 236
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible()V

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 244
    const v3, 0x3f8ccccd    # 1.1f

    .line 243
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 245
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 249
    :pswitch_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-ne v2, v8, :cond_8

    .line 250
    const-string/jumbo v2, "MODE_WAKE_AND_UNLOCK_PULSING"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 257
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->fireWakeUpDozing()V

    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 263
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeAndUnlocking()V

    .line 266
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setWakeAndUnlocking()V

    .line 267
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 268
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 270
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 254
    :cond_8
    const-string/jumbo v2, "MODE_WAKE_AND_UNLOCK"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortDoze()V

    goto :goto_1

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    .line 357
    packed-switch p1, :pswitch_data_0

    .line 382
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->handleFpsError(I)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpsLockedOut:Z

    if-nez v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "doze_enabled"

    .line 363
    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 361
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 364
    .local v0, "dozeEnabled":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 367
    const-string/jumbo v1, "FingerprintController"

    const-string/jumbo v2, "Transactional Failure, waking up..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 375
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpsLockedOut:Z

    goto :goto_0

    .line 373
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->handleFpsError(I)V

    goto :goto_1

    .line 357
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->handleFpsHelp(I)V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpsLockedOut:Z

    .line 391
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    const/4 v2, -0x1

    .line 301
    const-string/jumbo v0, "FingerprintUnlockController#onFinishedGoingToSleep"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 302
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    if-eq v0, v2, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 313
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 314
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 296
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 297
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 132
    return-void
.end method

.method public startKeyguardFadingAway()V
    .locals 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    .line 405
    const-wide/16 v2, 0x60

    .line 400
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    return-void
.end method
