.class public Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Lcom/android/systemui/SystemUI;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$1;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$2;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$3;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$4;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$5;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleted:Z

.field private mBootSendUserPresent:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelayedProfileShowingSequence:I

.field private mDelayedShowingSequence:I

.field private mDeviceInteractive:Z

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field private mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mFpsUnlockAllowed:Z

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private final mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

.field private mHideAnimationRun:Z

.field private mHideAnimationRunning:Z

.field private mHiding:Z

.field private mInputRestricted:Z

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private final mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

.field private final mKeyguardStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/IKeyguardStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLockAfterTimeOut:I

.field private mLockLater:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mLockWhenSimRemoved:Z

.field private mNeedToReshowWhenReenabled:Z

.field private mOccluded:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPendingLock:Z

.field private mPendingReset:Z

.field private mPhoneState:I

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private mShuttingDown:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mTrustedSoundId:I

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field private mUiSoundsStreamType:I

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndUnlocking:Z

.field private mWorkLockController:Lcom/android/systemui/keyguard/WorkLockActivityController;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockWhenSimRemoved:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/trust/TrustManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockWhenSimRemoved:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurnedOn()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyStartedGoingToSleep()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyStartedWakingUp()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/IBinder;ZZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "dismiss"    # Z
    .param p3, "collapsePanels"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleRequestUnlock(Landroid/os/IBinder;ZZ)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "isOccluded"    # Z
    .param p2, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetOccluded(ZZ)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lockProfile(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "hasLockscreenWallpaper"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyHasLockscreenWallpaperChanged(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "trusted"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyTrustedChangedLocked(Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playTrustedSound()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "allowed"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setFpsUnlockAllowedLocked(Z)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->tryKeyguardDone()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleDismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyFinishedGoingToSleep()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurnedOff()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    const/high16 v1, 0x24200000

    .line 303
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 215
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 241
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 248
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 252
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 255
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 258
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 262
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFpsUnlockAllowed:Z

    .line 282
    new-instance v0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 292
    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    .line 312
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 314
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 315
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 316
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 593
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1522
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1589
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 1870
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    .line 1910
    new-instance v0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    .line 143
    return-void
.end method

.method private adjustStatusBarLocked()V
    .locals 4

    .prologue
    .line 1986
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 1988
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1987
    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1990
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_1

    .line 1991
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :goto_0
    return-void

    .line 1995
    :cond_1
    const/4 v0, 0x0

    .line 1996
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2

    .line 2000
    const/high16 v0, 0x1000000

    .line 2002
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2003
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 2006
    :cond_3
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 2007
    const-string/jumbo v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mOccluded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2008
    const-string/jumbo v3, " isSecure="

    .line 2007
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2008
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    .line 2007
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2008
    const-string/jumbo v3, " --> flags=0x"

    .line 2007
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2008
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2007
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private cancelDoKeyguardForChildProfilesLocked()V
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    .line 1007
    return-void
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 1003
    return-void
.end method

.method private doKeyguardForChildProfilesLocked()V
    .locals 6

    .prologue
    .line 993
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 994
    .local v1, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    .line 995
    .local v0, "profileId":I
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 996
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lockProfile(I)V

    .line 994
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 999
    .end local v0    # "profileId":I
    :cond_1
    return-void
.end method

.method private doKeyguardLaterForChildProfilesLocked()V
    .locals 15

    .prologue
    const/high16 v14, 0x10000000

    const/4 v9, 0x0

    .line 971
    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 972
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_2

    aget v2, v10, v8

    .line 973
    .local v2, "profileId":I
    iget-object v12, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 974
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v4

    .line 975
    .local v4, "userTimeout":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_1

    .line 976
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardForChildProfilesLocked()V

    .line 972
    .end local v4    # "userTimeout":J
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 978
    .restart local v4    # "userTimeout":J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    add-long v6, v12, v4

    .line 979
    .local v6, "userWhen":J
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v12, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    .local v0, "lockIntent":Landroid/content/Intent;
    const-string/jumbo v12, "seq"

    iget v13, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 981
    const-string/jumbo v12, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 984
    iget-object v12, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 983
    invoke-static {v12, v9, v0, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 985
    .local v1, "lockSender":Landroid/app/PendingIntent;
    iget-object v12, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v6, v7, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 990
    .end local v0    # "lockIntent":Landroid/content/Intent;
    .end local v1    # "lockSender":Landroid/app/PendingIntent;
    .end local v2    # "profileId":I
    .end local v4    # "userTimeout":J
    .end local v6    # "userWhen":J
    :cond_2
    return-void
.end method

.method private doKeyguardLaterLocked()V
    .locals 4

    .prologue
    .line 948
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v0

    .line 949
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 950
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 954
    :goto_0
    return-void

    .line 952
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(J)V

    goto :goto_0
.end method

.method private doKeyguardLaterLocked(J)V
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const/high16 v6, 0x10000000

    .line 958
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v2, v4, p1

    .line 959
    .local v2, "when":J
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "seq"

    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 962
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 963
    const/4 v5, 0x0

    .line 962
    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 964
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 965
    sget-boolean v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting alarm to turn off keyguard, seq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 966
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterForChildProfilesLocked()V

    .line 968
    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 1303
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v5, :cond_1

    .line 1304
    sget-boolean v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "doKeyguard: not showing because externally disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_0
    return-void

    .line 1319
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1320
    sget-boolean v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "doKeyguard: not showing because it is already showing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 1322
    return-void

    .line 1326
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1327
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 1326
    if-eqz v5, :cond_10

    .line 1330
    :cond_4
    const-string/jumbo v5, "keyguard.no_require_sim"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/lit8 v4, v5, 0x1

    .line 1332
    .local v4, "requireSim":Z
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v5

    .line 1331
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 1334
    .local v0, "absent":Z
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v5

    .line 1333
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    .line 1335
    .local v1, "disabled":Z
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1336
    if-nez v0, :cond_5

    if-eqz v1, :cond_8

    :cond_5
    move v3, v4

    .line 1338
    :goto_0
    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1339
    sget-boolean v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_6
    return-void

    .line 1335
    :cond_7
    const/4 v3, 0x1

    .local v3, "lockedOrMissing":Z
    goto :goto_0

    .line 1336
    .end local v3    # "lockedOrMissing":Z
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "lockedOrMissing":Z
    goto :goto_0

    .line 1345
    .end local v3    # "lockedOrMissing":Z
    :cond_9
    const-string/jumbo v5, "encrypted"

    const-string/jumbo v6, "ro.crypto.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1346
    const-string/jumbo v5, "trigger_restart_min_framework"

    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1345
    if-eqz v5, :cond_b

    .line 1347
    sget-boolean v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "doKeyguard: don\'t lock because device is encrypted and in encryption lock screen"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_a
    return-void

    .line 1353
    :cond_b
    if-eqz p1, :cond_d

    const-string/jumbo v5, "force_show"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1354
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1355
    xor-int/lit8 v5, v3, 0x1

    .line 1354
    if-eqz v5, :cond_e

    .line 1355
    xor-int/lit8 v5, v2, 0x1

    .line 1354
    if-eqz v5, :cond_e

    .line 1356
    sget-boolean v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_c
    return-void

    .line 1353
    :cond_d
    const/4 v2, 0x0

    .local v2, "forceShow":Z
    goto :goto_1

    .line 1360
    .end local v2    # "forceShow":Z
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkVoldPassword(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1361
    sget-boolean v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v5, :cond_f

    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "Not showing lock screen since just decrypted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_f
    invoke-direct {p0, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1364
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1365
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    .line 1366
    return-void

    .line 1370
    .end local v0    # "absent":Z
    .end local v1    # "disabled":Z
    .end local v4    # "requireSim":Z
    :cond_10
    sget-boolean v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v5, :cond_11

    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "doKeyguard: showing the lock screen"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_11
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1372
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1373
    return-void
.end method

.method private getLockTimeout(I)J
    .locals 14
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v12, 0x0

    .line 919
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 923
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "lock_screen_lock_after_timeout"

    .line 924
    iget v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockAfterTimeOut:I

    .line 922
    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    .line 927
    .local v4, "lockAfterTimeout":J
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v6

    .line 932
    .local v6, "policyTimeout":J
    cmp-long v1, v6, v12

    if-gtz v1, :cond_0

    .line 933
    move-wide v8, v4

    .line 944
    .local v8, "timeout":J
    :goto_0
    return-wide v8

    .line 936
    .end local v8    # "timeout":J
    :cond_0
    const-string/jumbo v1, "screen_off_timeout"

    .line 937
    const/16 v10, 0x7530

    .line 936
    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    .line 940
    .local v2, "displayTimeout":J
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 941
    sub-long v10, v6, v2

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 942
    .restart local v8    # "timeout":J
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    goto :goto_0
.end method

.method private handleDismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .prologue
    .line 1388
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_2

    .line 1389
    if-eqz p1, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->addCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissAndCollapse()V

    .line 1396
    :cond_1
    :goto_0
    return-void

    .line 1393
    :cond_2
    if-eqz p1, :cond_1

    .line 1394
    new-instance v0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->notifyDismissError()V

    goto :goto_0
.end method

.method private handleHide()V
    .locals 4

    .prologue
    .line 1920
    const-string/jumbo v0, "KeyguardViewMediator#handleHide"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1921
    monitor-enter p0

    .line 1922
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1929
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "Split system user, quit unlocking."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1930
    return-void

    .line 1932
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1934
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1935
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1942
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1943
    return-void

    .line 1938
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1939
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 1937
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleKeyguardDone()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1703
    const-string/jumbo v2, "KeyguardViewMediator#handleKeyguardDone"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1704
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1705
    .local v0, "currentUser":I
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v3, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$2;

    invoke-direct {v3, v0, p0}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1710
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "handleKeyguardDone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_0
    monitor-enter p0

    .line 1712
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1715
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1716
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1718
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    if-eqz v2, :cond_1

    .line 1719
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Device is going to sleep, aborting keyguardDone"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    return-void

    .line 1711
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1722
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_2

    .line 1724
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1729
    :goto_0
    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1733
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1734
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1735
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    .line 1738
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1741
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1742
    const v3, 0x112006f

    .line 1741
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1744
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1745
    const-string/jumbo v3, "fps_onenav_show_navigation_bar"

    .line 1743
    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1750
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1751
    return-void

    .line 1725
    :catch_0
    move-exception v1

    .line 1726
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Failed to call onKeyguardExitResult()"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1777
    const-string/jumbo v0, "KeyguardViewMediator#handleKeyguardDoneDrawing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1778
    monitor-enter p0

    .line 1779
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_2

    .line 1781
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1783
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyAll()V

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 1791
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1792
    return-void

    .line 1778
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyFinishedGoingToSleep()V
    .locals 2

    .prologue
    .line 2052
    monitor-enter p0

    .line 2053
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyFinishedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onFinishedGoingToSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2056
    return-void

    .line 2052
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyScreenTurnedOff()V
    .locals 2

    .prologue
    .line 2096
    monitor-enter p0

    .line 2097
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOff()V

    .line 2099
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2102
    return-void

    .line 2096
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyScreenTurnedOn()V
    .locals 2

    .prologue
    .line 2084
    const-string/jumbo v0, "KeyguardViewMediator#handleNotifyScreenTurnedOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2085
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    .line 2088
    :cond_0
    monitor-enter p0

    .line 2089
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2092
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2093
    return-void

    .line 2088
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2068
    const-string/jumbo v0, "KeyguardViewMediator#handleNotifyScreenTurningOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2069
    monitor-enter p0

    .line 2070
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurningOn()V

    .line 2072
    if-eqz p1, :cond_1

    .line 2073
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_2

    .line 2074
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 2080
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2081
    return-void

    .line 2076
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2069
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyStartedGoingToSleep()V
    .locals 2

    .prologue
    .line 2041
    monitor-enter p0

    .line 2042
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onStartedGoingToSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2045
    return-void

    .line 2041
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyStartedWakingUp()V
    .locals 2

    .prologue
    .line 2059
    const-string/jumbo v0, "KeyguardViewMediator#handleMotifyStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2060
    monitor-enter p0

    .line 2061
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onStartedWakingUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2064
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2065
    return-void

    .line 2060
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleRequestUnlock(Landroid/os/IBinder;ZZ)V
    .locals 3
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "dismiss"    # Z
    .param p3, "collapsePanels"    # Z

    .prologue
    .line 2140
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2141
    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestUnlock - callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " collapsePanels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2146
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->requestUnlock(Landroid/os/IRemoteCallback;ZZ)V

    .line 2148
    :cond_1
    return-void
.end method

.method private handleReset()V
    .locals 2

    .prologue
    .line 2020
    monitor-enter p0

    .line 2021
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2024
    return-void

    .line 2020
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleSetOccluded(ZZ)V
    .locals 4
    .param p1, "isOccluded"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1236
    const-string/jumbo v0, "KeyguardViewMediator#handleSetOccluded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1237
    monitor-enter p0

    .line 1238
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1241
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 1244
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v0, p1, :cond_1

    .line 1245
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 1246
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz p2, :cond_2

    .line 1247
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1246
    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(ZZ)V

    .line 1248
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1251
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1252
    return-void

    .line 1246
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1843
    const-string/jumbo v1, "KeyguardViewMediator#handleShow"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1844
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1845
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1846
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardSecured(I)V

    .line 1848
    :cond_0
    monitor-enter p0

    .line 1849
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v1, :cond_2

    .line 1850
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "ignoring handleShow because system is not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1851
    return-void

    .line 1853
    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "handleShow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1857
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 1858
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1859
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 1860
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1861
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1862
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1863
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1864
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1866
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    .line 1867
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1868
    return-void

    .line 1848
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleStartKeyguardExitAnimation(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 1946
    const-string/jumbo v0, "KeyguardViewMediator#handleStartKeyguardExitAnimation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1947
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStartKeyguardExitAnimation startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1948
    const-string/jumbo v2, " fadeoutDuration="

    .line 1947
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_0
    monitor-enter p0

    .line 1951
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    .line 1952
    return-void

    .line 1954
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1956
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v0, :cond_2

    .line 1961
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->setReportNextDraw()V

    .line 1962
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 1968
    :cond_2
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    if-nez v0, :cond_3

    .line 1969
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1972
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 1973
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1974
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissSucceeded()V

    .line 1975
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    .line 1976
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1978
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1979
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1980
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1982
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1983
    return-void

    .line 1949
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleVerifyUnlock()V
    .locals 2

    .prologue
    .line 2031
    const-string/jumbo v0, "KeyguardViewMediator#handleVerifyUnlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2032
    monitor-enter p0

    .line 2033
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2035
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissAndCollapse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2037
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2038
    return-void

    .line 2032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 1485
    const-string/jumbo v1, "KeyguardViewMediator#hideLocked"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1486
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1488
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1489
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1490
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_keyguard_KeyguardViewMediator_77868(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .prologue
    .line 1832
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 1833
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private lockProfile(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 1377
    return-void
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 2

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1053
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 1052
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    goto :goto_0
.end method

.method private notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2105
    const-string/jumbo v1, "KeyguardViewMediator#notifyDrawn"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2107
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2112
    return-void

    .line 2108
    :catch_0
    move-exception v0

    .line 2109
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Exception calling onDrawn():"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyFinishedGoingToSleep()V
    .locals 2

    .prologue
    .line 1427
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "notifyFinishedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1429
    return-void
.end method

.method private notifyHasLockscreenWallpaperChanged(Z)V
    .locals 5
    .param p1, "hasLockscreenWallpaper"    # Z

    .prologue
    .line 2262
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2263
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2265
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v3, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onHasLockscreenWallpaperChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2263
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2267
    :catch_0
    move-exception v0

    .line 2268
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v4, "Failed to call onHasLockscreenWallpaperChanged"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2269
    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 2270
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2274
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 1437
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "notifyScreenOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1439
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1440
    return-void
.end method

.method private notifyScreenTurnedOff()V
    .locals 3

    .prologue
    .line 1449
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "notifyScreenTurnedOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1451
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1452
    return-void
.end method

.method private notifyScreenTurnedOn()V
    .locals 3

    .prologue
    .line 1443
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "notifyScreenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1445
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1446
    return-void
.end method

.method private notifyStartedGoingToSleep()V
    .locals 2

    .prologue
    .line 1422
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "notifyStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1424
    return-void
.end method

.method private notifyStartedWakingUp()V
    .locals 2

    .prologue
    .line 1432
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "notifyStartedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1434
    return-void
.end method

.method private notifyTrustedChangedLocked(Z)V
    .locals 5
    .param p1, "trusted"    # Z

    .prologue
    .line 2248
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2249
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2251
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v3, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2249
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2252
    :catch_0
    move-exception v0

    .line 2253
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v4, "Failed to call notifyTrustedChangedLocked"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2254
    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 2255
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2259
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 3
    .param p1, "soundId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1799
    if-nez p1, :cond_0

    return-void

    .line 1800
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1801
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "lockscreen_sounds_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1803
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 1805
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_2

    .line 1806
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1807
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    return-void

    .line 1808
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    .line 1811
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$3;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1823
    :cond_3
    return-void
.end method

.method private playSounds(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 1795
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    .line 1796
    return-void

    .line 1795
    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_0
.end method

.method private playTrustedSound()V
    .locals 1

    .prologue
    .line 1826
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    .line 1827
    return-void
.end method

.method private resetKeyguardDonePendingLocked()V
    .locals 2

    .prologue
    .line 2115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2116
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2117
    return-void
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 1407
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "resetStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1409
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1410
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 5

    .prologue
    .line 1754
    monitor-enter p0

    .line 1755
    :try_start_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v3, :cond_0

    .line 1756
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 1757
    .local v1, "currentUserId":I
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1758
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 1759
    const-string/jumbo v4, "user"

    .line 1758
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1760
    .local v2, "um":Landroid/os/UserManager;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v4, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$4;

    invoke-direct {v4, v1, p0, v2, v0}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v1    # "currentUserId":I
    .end local v2    # "um":Landroid/os/UserManager;
    :goto_0
    monitor-exit p0

    .line 1770
    return-void

    .line 1767
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1754
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private setFpsUnlockAllowedLocked(Z)V
    .locals 5
    .param p1, "allowed"    # Z

    .prologue
    .line 2278
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFpsUnlockAllowed:Z

    if-eq p1, v3, :cond_1

    .line 2279
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFpsUnlockAllowed:Z

    .line 2280
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2281
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2283
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v3, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onFpsUnlockAllowedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2284
    :catch_0
    move-exception v0

    .line 2285
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v4, "Failed to call setFpsUnlockAllowedLocked"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2286
    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 2287
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2292
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-void
.end method

.method private setShowingLocked(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 2221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 2222
    return-void
.end method

.method private setShowingLocked(ZZ)V
    .locals 6
    .param p1, "showing"    # Z
    .param p2, "forceCallbacks"    # Z

    .prologue
    .line 2225
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-ne p1, v4, :cond_0

    if-eqz p2, :cond_3

    .line 2226
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2227
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2228
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2229
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 2231
    .local v0, "callback":Lcom/android/internal/policy/IKeyguardStateCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2232
    :catch_0
    move-exception v1

    .line 2233
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "Failed to call onShowingStateChanged"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2234
    instance-of v4, v1, Landroid/os/DeadObjectException;

    if-eqz v4, :cond_1

    .line 2235
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2239
    .end local v0    # "callback":Lcom/android/internal/policy/IKeyguardStateCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 2240
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v5, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2243
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState(Z)V

    .line 2245
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_3
    return-void
.end method

.method private setupLocked()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 716
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 717
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "trust"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/trust/TrustManager;

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 719
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string/jumbo v7, "show keyguard"

    invoke-virtual {v5, v10, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 720
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 722
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 723
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string/jumbo v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    const-string/jumbo v5, "com.motorola.internal.policy.impl.REQUEST_UNLOCK"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 729
    new-instance v5, Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 731
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "alarm"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 733
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 735
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 736
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 740
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 741
    const v7, 0x7f050011

    .line 740
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v5

    if-nez v5, :cond_a

    .line 743
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 744
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    .line 743
    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 742
    :goto_0
    invoke-direct {p0, v5, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 748
    :cond_0
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 749
    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 748
    invoke-virtual {v5, v7, v8, v9}, Lcom/android/systemui/SystemUIFactory;->createStatusBarKeyguardViewManager(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v5

    .line 747
    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 750
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 752
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 754
    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v10, v10, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 755
    const-string/jumbo v5, "lock_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 756
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 757
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v4, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 759
    :cond_1
    if-eqz v4, :cond_2

    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v5, :cond_3

    .line 760
    :cond_2
    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to load lock sound from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_3
    const-string/jumbo v5, "unlock_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 763
    if-eqz v4, :cond_4

    .line 764
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v4, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 766
    :cond_4
    if-eqz v4, :cond_5

    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v5, :cond_6

    .line 767
    :cond_5
    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to load unlock sound from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_6
    const-string/jumbo v5, "trusted_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 770
    if-eqz v4, :cond_7

    .line 771
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v4, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    .line 773
    :cond_7
    if-eqz v4, :cond_8

    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v5, :cond_9

    .line 774
    :cond_8
    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to load trusted sound from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 778
    const v6, 0x10e004f

    .line 777
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 779
    .local v3, "lockSoundDefaultAttenuation":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-float v5, v3

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 781
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 782
    const v6, 0x10a0054

    .line 781
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 784
    new-instance v5, Lcom/android/systemui/keyguard/WorkLockActivityController;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWorkLockController:Lcom/android/systemui/keyguard/WorkLockActivityController;

    .line 788
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 789
    const v6, 0x10e00cd

    .line 788
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockAfterTimeOut:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_1
    return-void

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "lockSoundDefaultAttenuation":I
    .end local v4    # "soundPath":Ljava/lang/String;
    :cond_a
    move v5, v6

    .line 742
    goto/16 :goto_0

    .line 790
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "lockSoundDefaultAttenuation":I
    .restart local v4    # "soundPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 791
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/16 v5, 0x1388

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockAfterTimeOut:I

    .line 792
    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The exception is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shouldWaitForProvisioning()Z
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1459
    const-string/jumbo v4, "KeyguardViewMediator#showLocked aqcuiring mShowKeyguardWakeLock"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1460
    sget-boolean v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "showLocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1463
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1464
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1467
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 1468
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1469
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "USER_LOCKED intent sent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1471
    .local v0, "currentUser":Landroid/os/UserHandle;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.motorola.internal.intent.action.USER_LOCKED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v1, "mUserLockedIntent":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1474
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1477
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v1    # "mUserLockedIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1478
    return-void
.end method

.method private tryKeyguardDone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1689
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1690
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v0, :cond_0

    .line 1692
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1693
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 1694
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateActivityLockScreenState(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$5;

    invoke-direct {v1, p1}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$5;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1836
    return-void
.end method

.method private updateInputRestricted()V
    .locals 1

    .prologue
    .line 1274
    monitor-enter p0

    .line 1275
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1277
    return-void

    .line 1274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateInputRestrictedLocked()V
    .locals 7

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v3

    .line 1281
    .local v3, "inputRestricted":Z
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    if-eq v5, v3, :cond_1

    .line 1282
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 1283
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1284
    .local v4, "size":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1285
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 1287
    .local v0, "callback":Lcom/android/internal/policy/IKeyguardStateCallback;
    :try_start_0
    invoke-interface {v0, v3}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1288
    :catch_0
    move-exception v1

    .line 1289
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "Failed to call onDeviceProvisioned"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1290
    instance-of v5, v1, Landroid/os/DeadObjectException;

    if-eqz v5, :cond_0

    .line 1291
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1296
    .end local v0    # "callback":Lcom/android/internal/policy/IKeyguardStateCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 2296
    monitor-enter p0

    .line 2297
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2299
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    .line 2300
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V

    .line 2301
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V

    .line 2302
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2303
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 2302
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V

    .line 2304
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockscreenWallpaper()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onHasLockscreenWallpaperChanged(Z)V

    .line 2305
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onFpsUnlockAllowedStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 2310
    return-void

    .line 2306
    :catch_0
    move-exception v0

    .line 2307
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call to IKeyguardStateCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2296
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1400
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xa

    .line 1259
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1260
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1261
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1262
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2186
    const-string/jumbo v0, "  mSystemReady: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2187
    const-string/jumbo v0, "  mBootCompleted: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2188
    const-string/jumbo v0, "  mBootSendUserPresent: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2189
    const-string/jumbo v0, "  mExternallyEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2190
    const-string/jumbo v0, "  mShuttingDown: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2191
    const-string/jumbo v0, "  mNeedToReshowWhenReenabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2192
    const-string/jumbo v0, "  mShowing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2193
    const-string/jumbo v0, "  mInputRestricted: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2194
    const-string/jumbo v0, "  mOccluded: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2195
    const-string/jumbo v0, "  mDelayedShowingSequence: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2196
    const-string/jumbo v0, "  mExitSecureCallback: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2197
    const-string/jumbo v0, "  mDeviceInteractive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2198
    const-string/jumbo v0, "  mGoingToSleep: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2199
    const-string/jumbo v0, "  mHiding: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2200
    const-string/jumbo v0, "  mWaitingUntilKeyguardVisible: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2201
    const-string/jumbo v0, "  mKeyguardDonePending: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2202
    const-string/jumbo v0, "  mHideAnimationRun: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2203
    const-string/jumbo v0, "  mPendingReset: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2204
    const-string/jumbo v0, "  mPendingLock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2205
    const-string/jumbo v0, "  mWakeAndUnlocking: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2206
    const-string/jumbo v0, "  mDrawnCallback: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2207
    return-void
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 1270
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1493
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 1497
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone()V
    .locals 3

    .prologue
    .line 1573
    const-string/jumbo v1, "KeyguardViewMediator#keyguardDone"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1574
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "keyguardDone()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1576
    const v1, 0x11170

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1577
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1578
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1579
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1580
    return-void
.end method

.method synthetic lambda$-com_android_systemui_keyguard_KeyguardViewMediator_73174(I)V
    .locals 1
    .param p1, "currentUser"    # I

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardDismissed(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_keyguard_KeyguardViewMediator_75224(Landroid/os/UserManager;Landroid/os/UserHandle;I)V
    .locals 7
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "currentUser"    # Landroid/os/UserHandle;
    .param p3, "currentUserId"    # I

    .prologue
    .line 1761
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 1762
    .local v0, "profileId":I
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1764
    .end local v0    # "profileId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_keyguard_KeyguardViewMediator_77252(I)V
    .locals 8
    .param p1, "soundId"    # I

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 1816
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    .line 1815
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 1817
    .local v7, "id":I
    monitor-enter p0

    .line 1818
    :try_start_0
    iput v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1817
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$-com_android_systemui_keyguard_KeyguardViewMediator_81347()V
    .locals 1

    .prologue
    .line 1911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 1912
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->tryKeyguardDone()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_keyguard_KeyguardViewMediator_94477()V
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    return-void
.end method

.method mustNotUnlockCurrentUser()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 711
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 711
    :cond_1
    return v0
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 2122
    monitor-enter p0

    .line 2123
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 2124
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v0, :cond_0

    .line 2125
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 2128
    return-void

    .line 2122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStarted()V

    .line 1072
    monitor-enter p0

    .line 1073
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 1073
    if-eqz v0, :cond_0

    .line 1075
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1078
    return-void

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStopped()V

    .line 1085
    monitor-enter p0

    .line 1086
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    .line 1087
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1090
    return-void

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFinishedGoingToSleep(IZ)V
    .locals 4
    .param p1, "why"    # I
    .param p2, "cameraGestureTriggered"    # Z

    .prologue
    .line 872
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishedGoingToSleep("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    monitor-enter p0

    .line 874
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 877
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 880
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyFinishedGoingToSleep()V

    .line 882
    if-eqz p2, :cond_1

    .line 883
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "Camera gesture was triggered, preventing Keyguard locking."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 887
    const-string/jumbo v1, "com.android.systemui:CAMERA_GESTURE_PREVENT_LOCK"

    .line 886
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    .line 892
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    if-eqz v0, :cond_2

    .line 893
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    .line 897
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v0, :cond_3

    .line 898
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 905
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    if-nez v0, :cond_4

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    .line 906
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardForChildProfilesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    .line 910
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchFinishedGoingToSleep(I)V

    .line 911
    return-void

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 1047
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOff()V

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOff()V

    .line 1049
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 1040
    const-string/jumbo v0, "KeyguardViewMediator#onScreenTurnedOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1041
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOn()V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 1043
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1044
    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 1034
    const-string/jumbo v0, "KeyguardViewMediator#onScreenTurningOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1036
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1037
    return-void
.end method

.method public onShortPowerPressedGoHome()V
    .locals 0

    .prologue
    .line 2174
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 10
    .param p1, "why"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 826
    sget-boolean v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onStartedGoingToSleep("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    monitor-enter p0

    .line 828
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 829
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 834
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 836
    .local v0, "currentUser":I
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 837
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    xor-int/lit8 v2, v3, 0x1

    .line 838
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v4

    .line 839
    .local v4, "timeout":J
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    .line 840
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v3, :cond_5

    .line 841
    sget-boolean v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v6, "pending exit secure callback cancelled"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 848
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v3, :cond_2

    .line 849
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 863
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v3, :cond_3

    .line 864
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    .line 867
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedGoingToSleep(I)V

    .line 868
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyStartedGoingToSleep()V

    .line 869
    return-void

    .line 836
    .end local v4    # "timeout":J
    :cond_4
    const/4 v2, 0x1

    .local v2, "lockImmediately":Z
    goto :goto_0

    .line 844
    .end local v2    # "lockImmediately":Z
    .restart local v4    # "timeout":J
    :catch_0
    move-exception v1

    .line 845
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v6, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v3, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 827
    .end local v0    # "currentUser":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "timeout":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 851
    .restart local v0    # "currentUser":I
    .restart local v4    # "timeout":J
    :cond_5
    :try_start_4
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v3, :cond_6

    .line 852
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    goto :goto_2

    .line 853
    :cond_6
    const/4 v3, 0x3

    if-ne p1, v3, :cond_8

    cmp-long v3, v4, v8

    if-lez v3, :cond_8

    .line 857
    :cond_7
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(J)V

    .line 858
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    goto :goto_2

    .line 854
    :cond_8
    const/4 v3, 0x2

    if-ne p1, v3, :cond_9

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_9

    cmp-long v3, v4, v8

    if-gtz v3, :cond_7

    .line 855
    :cond_9
    const/4 v3, 0x4

    if-ne p1, v3, :cond_a

    .line 856
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->getFingerprintInstantlyLocked(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 853
    if-nez v3, :cond_7

    .line 859
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 860
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onStartedWakingUp()V
    .locals 3

    .prologue
    .line 1013
    const-string/jumbo v0, "KeyguardViewMediator#onStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1016
    monitor-enter p0

    .line 1017
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1018
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1019
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardForChildProfilesLocked()V

    .line 1020
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartedWakingUp, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyStartedWakingUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedWakingUp()V

    .line 1024
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.motorola.faceunlock"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlockService()V

    .line 1030
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1031
    return-void

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 809
    monitor-enter p0

    .line 810
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 812
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 813
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 817
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 818
    return-void

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onWakeAndUnlocking()V
    .locals 1

    .prologue
    .line 2131
    const-string/jumbo v0, "KeyguardViewMediator#onWakeAndUnlocking"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2133
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 2134
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2135
    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 6
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p4, "fingerprintUnlockController"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2157
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2155
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)V

    .line 2158
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 1516
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 1517
    monitor-enter p0

    .line 1518
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyTrustedChangedLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1520
    return-void

    .line 1517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setKeyguardEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_0
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setKeyguardEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1103
    if-nez p1, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_5

    .line 1104
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_2

    .line 1105
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "in process of verifyUnlock request, ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1108
    return-void

    .line 1112
    :cond_2
    :try_start_1
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1115
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1116
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    .line 1153
    return-void

    .line 1117
    :cond_5
    if-eqz p1, :cond_4

    :try_start_2
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v2, :cond_4

    .line 1119
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1122
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1124
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_8

    .line 1125
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "onKeyguardExitResult(false), resetting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1127
    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1131
    :goto_1
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1132
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1098
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1139
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1140
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1141
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_9
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_a

    .line 1144
    :try_start_6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1145
    :catch_1
    move-exception v1

    .line 1146
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 1149
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_a
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public setOccluded(ZZ)V
    .locals 7
    .param p1, "isOccluded"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/16 v6, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1224
    const-string/jumbo v3, "KeyguardViewMediator#setOccluded"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1225
    sget-boolean v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOccluded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1227
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    move v3, v1

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v4, v6, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1228
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1229
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1230
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    move v3, v2

    .line 1227
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public setSwitchingUser(Z)V
    .locals 5
    .param p1, "switching"    # Z

    .prologue
    const/16 v4, 0x12

    const/4 v2, 0x0

    .line 1502
    const-string/jumbo v1, "KeyguardViewMediator#setSwitchingUser"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1503
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1504
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1505
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1506
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1507
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 1504
    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 799
    monitor-enter p0

    .line 800
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setupLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 802
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 803
    return-void

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 2162
    const-string/jumbo v1, "KeyguardViewMediator#startKeyguardExitAnimation"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2164
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2166
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 2167
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;)V

    .line 2166
    const/16 v2, 0xc

    invoke-virtual {v7, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2168
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2169
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2170
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 708
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 1159
    const-string/jumbo v1, "KeyguardViewMediator#verifyUnlock"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1160
    monitor-enter p0

    .line 1161
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "verifyUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1164
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "ignoring because device isn\'t provisioned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1166
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1210
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1211
    return-void

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1160
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1170
    :cond_2
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v1, :cond_3

    .line 1174
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "verifyUnlock called when not externally disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1176
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1177
    :catch_1
    move-exception v0

    .line 1178
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1180
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_4

    .line 1183
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1184
    :catch_2
    move-exception v0

    .line 1185
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1193
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1195
    const/4 v1, 0x1

    :try_start_8
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1196
    :catch_3
    move-exception v0

    .line 1197
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_9
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 1204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    const/4 v1, 0x0

    :try_start_a
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 1205
    :catch_4
    move-exception v0

    .line 1206
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_b
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0
.end method
