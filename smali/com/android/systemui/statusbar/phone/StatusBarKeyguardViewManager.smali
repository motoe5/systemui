.class public Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;,
        Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field private final mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field private mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private mDeferScrimFadeOut:Z

.field private mDeviceInteractive:Z

.field private mDeviceWillWakeUp:Z

.field private mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field protected mFirstUpdate:Z

.field private mForceShowBouncer:Z

.field private mLastBouncerDismissible:Z

.field private mLastBouncerShowing:Z

.field private mLastDeferScrimFadeOut:Z

.field protected mLastOccluded:Z

.field protected mLastRemoteInputActive:Z

.field protected mLastShowing:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

.field protected mOccluded:Z

.field protected mRemoteInputActive:Z

.field private mRequestUnlock:Z

.field private mScreenTurnedOn:Z

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mShowBouncerByAod:Z

.field protected mShowing:Z

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mVzwBouncerPolicyEnabled:Z

.field private mVzwShowBouncerSetting:I


# direct methods
.method static synthetic -com_android_systemui_statusbar_phone_StatusBarKeyguardViewManager-mthref-0(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    return-void
.end method

.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mVzwShowBouncerSetting:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "StatusBarKeyguardViewManager"

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    .line 119
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mVzwShowBouncerSetting:I

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 123
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 136
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRequestUnlock:Z

    .line 591
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 142
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 143
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mForceShowBouncer:Z

    .line 144
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 145
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 146
    return-void
.end method

.method private animateScrimControllerKeyguardFadingOut(JJLjava/lang/Runnable;Z)V
    .locals 9
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "endRunnable"    # Ljava/lang/Runnable;
    .param p6, "skipFirstFrame"    # Z

    .prologue
    .line 501
    const-string/jumbo v0, "Fading out"

    const-wide/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 502
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    invoke-direct {v6, p0, p5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Ljava/lang/Runnable;)V

    move-wide v2, p1

    move-wide v4, p3

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateKeyguardFadingOut(JJLjava/lang/Runnable;Z)V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 517
    if-eqz v0, :cond_0

    .line 519
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 523
    :cond_0
    return-void
.end method

.method private animateScrimControllerKeyguardFadingOut(JJZ)V
    .locals 9
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "skipFirstFrame"    # Z

    .prologue
    .line 495
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJLjava/lang/Runnable;Z)V

    .line 497
    return-void
.end method

.method private executeAfterKeyguardGoneAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 528
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 530
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 534
    return-void
.end method

.method private getNavBarShowDelay()J
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    return-wide v0

    .line 587
    :cond_0
    const-wide/16 v0, 0x140

    return-wide v0
.end method

.method private showBouncer()V
    .locals 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 219
    return-void
.end method

.method private showBouncerAfterScreenOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 852
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mVzwShowBouncerSetting:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private watchForVzwShowBouncerSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 836
    const-string/jumbo v1, "power_button_shows_lockscreen"

    .line 837
    .local v1, "settingName":Ljava/lang/String;
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/os/Handler;)V

    .line 845
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 846
    const-string/jumbo v3, "power_button_shows_lockscreen"

    invoke-static {v3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 845
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 847
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 848
    const-string/jumbo v3, "power_button_shows_lockscreen"

    .line 847
    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mVzwShowBouncerSetting:I

    .line 849
    return-void
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public animateCollapsePanels(F)V
    .locals 3
    .param p1, "speedUpFactor"    # F

    .prologue
    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    .line 743
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer()V

    .line 545
    return-void
.end method

.method public dismissAndCollapse()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v4, 0x0

    move-object v2, v1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 541
    return-void
.end method

.method public dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;
    .param p3, "afterKeyguardGone"    # Z

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 224
    if-nez p3, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showWithDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V

    .line 231
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 232
    return-void

    .line 227
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    goto :goto_0
.end method

.method protected getLastNavBarVisible()Z
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-eqz v0, :cond_1

    .line 709
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDeferScrimFadeOut:Z

    xor-int/lit8 v0, v0, 0x1

    .line 708
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public hide(JJ)V
    .locals 19
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 406
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 407
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setForceShowBouncer(Z)V

    .line 408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    const-wide/16 p3, 0x7d0

    .line 411
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 412
    .local v16, "uptimeMillis":J
    const-wide/16 v4, 0x0

    const-wide/16 v8, -0x30

    add-long v8, v8, p1

    sub-long v8, v8, v16

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 414
    .local v6, "delay":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 427
    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 415
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 487
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v15, 0x1

    .line 445
    .local v15, "wakeUnlockPulsing":Z
    :goto_1
    if-eqz v15, :cond_2

    .line 446
    const-wide/16 v6, 0x0

    .line 447
    const-wide/16 p3, 0xf0

    .line 449
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-wide/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardFadingAway(JJJ)V

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startKeyguardFadingAway()V

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 452
    if-eqz v15, :cond_4

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardWhilePulsing()V

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$2;

    invoke-direct {v10, v3}, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$2;-><init>(Ljava/lang/Object;)V

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    .line 455
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJLjava/lang/Runnable;Z)V

    .line 483
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    goto :goto_0

    .line 444
    .end local v15    # "wakeUnlockPulsing":Z
    :cond_3
    const/4 v15, 0x0

    .restart local v15    # "wakeUnlockPulsing":Z
    goto :goto_1

    .line 458
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startKeyguardFadingAway()V

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-wide/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardFadingAway(JJJ)V

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    move-result v2

    .line 461
    .local v2, "staying":Z
    if-nez v2, :cond_7

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 464
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenTurnedOn:Z

    if-nez v3, :cond_5

    .line 465
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    goto :goto_2

    .line 469
    :cond_5
    const-wide/16 v10, 0x0

    .line 470
    const-wide/16 v12, 0xc8

    .line 471
    const/4 v14, 0x1

    move-object/from16 v9, p0

    .line 469
    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJZ)V

    goto :goto_2

    .line 475
    :cond_6
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    .line 474
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJZ)V

    goto :goto_2

    .line 478
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateGoingToFullShade(JJ)V

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->finishKeyguardFadingAway()V

    goto :goto_2
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isDeviceInteractive()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    return v0
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToNotificationShade()Z

    move-result v0

    return v0
.end method

.method protected isNavBarVisible()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    if-eqz v0, :cond_1

    .line 701
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    xor-int/lit8 v0, v0, 0x1

    .line 700
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOccluded()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return v0
.end method

.method public isScreenTurnedOn()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenTurnedOn:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    return v0
.end method

.method public isUnlockWithWallpaper()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingWallpaper()Z

    move-result v0

    return v0
.end method

.method public keyguardGoingAway()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->keyguardGoingAway()V

    .line 738
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarKeyguardViewManager_21549()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 521
    const/4 v1, 0x2

    .line 520
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public notifyDeviceWakeUpRequested()V
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    .line 333
    return-void
.end method

.method public notifyKeyguardAuthenticated(Z)V
    .locals 1
    .param p1, "strongAuth"    # Z

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->notifyKeyguardAuthenticated(Z)V

    .line 751
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->endAffordanceLaunch()V

    .line 569
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setForceShowBouncer(Z)V

    .line 570
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 571
    return v2

    .line 573
    :cond_0
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 857
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 491
    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 2

    .prologue
    .line 263
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    .line 265
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mVzwBouncerPolicyEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerAfterScreenOn()Z

    move-result v0

    .line 266
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setForceShowBouncer(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onFinishedGoingToSleep()V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOff()V

    .line 270
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    .local v0, "vzwShowBouncer":Z
    goto :goto_0
.end method

.method public onRemoteInputActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 319
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenTurnedOn:Z

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onScreenTurnedOff()V

    .line 324
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRequestUnlock:Z

    .line 326
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mVzwBouncerPolicyEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerAfterScreenOn()Z

    move-result v0

    .line 327
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setForceShowBouncer(Z)V

    .line 329
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    .local v0, "vzwShowBouncer":Z
    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 303
    const-string/jumbo v0, "StatusBarKeyguardViewManager#onScreenTurnedOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 304
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenTurnedOn:Z

    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    .line 307
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJZ)V

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onScreenTurnedOn()V

    .line 312
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 313
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    .prologue
    .line 293
    const-string/jumbo v0, "StatusBarKeyguardViewManager#onScreenTurningOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onScreenTurningOn()V

    .line 295
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 296
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onStartedGoingToSleep()V

    .line 260
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    const-string/jumbo v0, "StatusBarKeyguardViewManager#onStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onStartedWakingUp()V

    .line 278
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRequestUnlock:Z

    if-eqz v0, :cond_0

    .line 279
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRequestUnlock:Z

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 283
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 284
    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    .line 722
    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)V
    .locals 7
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p4, "fingerprintUnlockController"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .param p5, "dismissCallbackRegistry"    # Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .prologue
    const/4 v6, 0x1

    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 154
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    .line 155
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 156
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 157
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    .line 158
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v4, p2

    move-object v5, p5

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SystemUIFactory;->createKeyguardBouncer(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getVzwBouncerPolicyEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mVzwBouncerPolicyEnabled:Z

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mVzwBouncerPolicyEnabled:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setVzwFeatureEnabled(Z)V

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->watchForVzwShowBouncerSetting()V

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerAfterScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setForceShowBouncer(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public requestUnlock(Landroid/os/IRemoteCallback;ZZ)V
    .locals 6
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "dismiss"    # Z
    .param p3, "collapse"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 767
    :cond_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowBouncerByAod:Z

    .line 768
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setForceShowBouncer(Z)V

    .line 770
    if-eqz p3, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible(Z)V

    .line 772
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestUnlock collapse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 778
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRequestUnlock:Z

    .line 785
    :goto_0
    if-eqz p1, :cond_4

    .line 786
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/os/IRemoteCallback;Z)V

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 816
    :goto_1
    if-eqz p1, :cond_2

    .line 817
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/os/IRemoteCallback;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 831
    :cond_2
    return-void

    .line 780
    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRequestUnlock:Z

    goto :goto_0

    .line 809
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "hideBouncerWhenShowing"    # Z

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->stopWaitingForKeyguardExit()V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mForceShowBouncer:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(ZZ)V

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardReset()V

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 256
    :cond_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerOrKeyguard(Z)V

    goto :goto_0
.end method

.method public setForceShowBouncer(Z)V
    .locals 1
    .param p1, "forceShowBouncer"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mForceShowBouncer:Z

    .line 174
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowBouncerByAod:Z

    .line 175
    :cond_0
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardNeedsInput(Z)V

    .line 343
    return-void
.end method

.method public setOccluded(ZZ)V
    .locals 3
    .param p1, "occluded"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eq p1, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onKeyguardOccludedChanged(Z)V

    .line 353
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 357
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 356
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 366
    return-void

    .line 369
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 370
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_2

    .line 371
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p2, :cond_4

    xor-int/lit8 v0, p1, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardOccluded(Z)V

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 378
    if-eqz p2, :cond_3

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateKeyguardUnoccluding()V

    .line 381
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 371
    goto :goto_0
.end method

.method public shouldDisableWindowAnimationsForUnlock()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    return v0
.end method

.method public shouldDismissOnMenuPressed()Z
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->shouldDismissOnMenuPressed()Z

    move-result v0

    return v0
.end method

.method public show(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 183
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->abortKeyguardFadingOut()V

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 187
    return-void
.end method

.method public showBouncerMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showMessage(Ljava/lang/String;I)V

    .line 755
    return-void
.end method

.method protected showBouncerOrKeyguard(Z)V
    .locals 4
    .param p1, "hideBouncerWhenShowing"    # Z

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mForceShowBouncer:Z

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 198
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowBouncerByAod:Z

    xor-int/lit8 v0, v2, 0x1

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mForceShowBouncer:Z

    .line 199
    if-eqz v2, :cond_4

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 212
    :cond_2
    :goto_1
    return-void

    .line 198
    :cond_3
    const/4 v0, 0x0

    .local v0, "isUserTrusted":Z
    goto :goto_0

    .line 206
    .end local v0    # "isUserTrusted":Z
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguard()V

    .line 207
    if-eqz p1, :cond_2

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 209
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    goto :goto_1
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    if-eqz p1, :cond_0

    .line 398
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected updateStates()V
    .locals 18

    .prologue
    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v15

    .line 606
    .local v15, "vis":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 607
    .local v13, "showing":Z
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 608
    .local v11, "occluded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v4

    .line 609
    .local v4, "bouncerShowing":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result v16

    xor-int/lit8 v3, v16, 0x1

    .line 610
    .local v3, "bouncerDismissible":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    .line 612
    .local v12, "remoteInputActive":Z
    if-nez v3, :cond_f

    xor-int/lit8 v16, v13, 0x1

    if-nez v16, :cond_f

    move/from16 v16, v12

    .line 613
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    move/from16 v17, v0

    xor-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    move/from16 v17, v0

    .line 612
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 614
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    move/from16 v16, v0

    .line 612
    if-eqz v16, :cond_2

    .line 615
    :cond_0
    if-nez v3, :cond_1

    xor-int/lit8 v16, v13, 0x1

    if-nez v16, :cond_1

    if-eqz v12, :cond_11

    .line 616
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const v17, -0x400001

    and-int v17, v17, v15

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 622
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isNavBarVisible()Z

    move-result v8

    .line 623
    .local v8, "navBarVisible":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getLastNavBarVisible()Z

    move-result v5

    .line 624
    .local v5, "lastNavBarVisible":Z
    if-ne v8, v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 625
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 626
    if-eqz v8, :cond_13

    .line 627
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getNavBarShowDelay()J

    move-result-wide v6

    .line 628
    .local v6, "delay":J
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-nez v16, :cond_12

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    .line 642
    .end local v6    # "delay":J
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mVzwBouncerPolicyEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    if-eqz v4, :cond_6

    .line 645
    const/4 v10, 0x0

    .line 646
    .local v10, "notificationPanelShown":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const v17, 0x7f0a01ea

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 647
    .local v9, "notificationPanel":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 648
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_14

    const/4 v10, 0x1

    .line 652
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v16

    if-nez v16, :cond_16

    .line 653
    if-eqz v10, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowBouncerByAod:Z

    .line 654
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setClockVisibility(Z)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setShowIconsOfStatusBar(Z)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setUseBrighterScrimInFrontAlpha(Z)V

    .line 660
    .end local v9    # "notificationPanel":Landroid/view/View;
    .end local v10    # "notificationPanelShown":Z
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v4, v0, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 661
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBouncerShowing(Z)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBouncerShowing(Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setBouncerShowing(Z)V

    .line 666
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v14

    .line 668
    .local v14, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v13, v0, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 669
    :cond_9
    invoke-virtual {v14, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onKeyguardShowingChanged(Z)V

    .line 672
    :cond_a
    if-eqz v13, :cond_17

    xor-int/lit8 v16, v11, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    move/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    move/from16 v17, v0

    xor-int/lit8 v17, v17, 0x1

    :goto_7
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 678
    :cond_b
    invoke-virtual {v14, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardBouncerShowingForFPS(Z)V

    .line 680
    if-eqz v13, :cond_19

    xor-int/lit8 v16, v11, 0x1

    :goto_8
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onKeyguardVisibilityChanged(Z)V

    .line 682
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v4, v0, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 683
    :cond_d
    invoke-virtual {v14, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardBouncerChanged(Z)V

    .line 686
    :cond_e
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 687
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    .line 688
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    .line 689
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    .line 690
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    .line 691
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    .line 692
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDeferScrimFadeOut:Z

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/StatusBar;->onKeyguardViewManagerStatesUpdated()V

    .line 694
    return-void

    .line 612
    .end local v5    # "lastNavBarVisible":Z
    .end local v8    # "navBarVisible":Z
    .end local v14    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_f
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 613
    :cond_10
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 618
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const/high16 v17, 0x400000

    or-int v17, v17, v15

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto/16 :goto_2

    .line 631
    .restart local v5    # "lastNavBarVisible":Z
    .restart local v6    # "delay":J
    .restart local v8    # "navBarVisible":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6, v7}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_3

    .line 635
    .end local v6    # "delay":J
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 648
    .restart local v9    # "notificationPanel":Landroid/view/View;
    .restart local v10    # "notificationPanelShown":Z
    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 653
    :cond_15
    const/4 v2, 0x1

    .local v2, "bVzwAppearance":Z
    goto/16 :goto_5

    .line 652
    .end local v2    # "bVzwAppearance":Z
    :cond_16
    const/4 v2, 0x0

    .restart local v2    # "bVzwAppearance":Z
    goto/16 :goto_5

    .line 672
    .end local v2    # "bVzwAppearance":Z
    .end local v9    # "notificationPanel":Landroid/view/View;
    .end local v10    # "notificationPanelShown":Z
    .restart local v14    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_17
    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 680
    :cond_19
    const/16 v16, 0x0

    goto/16 :goto_8
.end method
