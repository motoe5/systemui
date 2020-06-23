.class public Lcom/android/systemui/LatencyTester;
.super Lcom/android/systemui/SystemUI;
.source "LatencyTester.java"


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/LatencyTester;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/LatencyTester;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/LatencyTester;->fakeTurnOnScreen()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/LatencyTester;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/LatencyTester;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/LatencyTester;->fakeWakeAndUnlock()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private fakeTurnOnScreen()V
    .locals 4

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/systemui/LatencyTester;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 67
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/systemui/LatencyTester;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/systemui/LatencyTester;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v1

    .line 69
    const/4 v2, 0x5

    .line 68
    invoke-virtual {v1, v2}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    .line 71
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "android.policy:LATENCY_TESTS"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 72
    return-void
.end method

.method private fakeWakeAndUnlock()V
    .locals 2

    .prologue
    .line 75
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v1}, Lcom/android/systemui/LatencyTester;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFingerprintUnlockController()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    .line 77
    .local v0, "fingerprintUnlockController":Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintAcquired()V

    .line 79
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintAuthenticated(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 45
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_0

    .line 46
    return-void

    .line 49
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.systemui.latency.ACTION_FINGERPRINT_WAKE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v1, "com.android.systemui.latency.ACTION_TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/LatencyTester;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/LatencyTester$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/LatencyTester$1;-><init>(Lcom/android/systemui/LatencyTester;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    return-void
.end method
