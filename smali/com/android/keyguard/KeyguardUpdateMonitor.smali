.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$1;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$2;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$3;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$4;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$5;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$6;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$7;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$8;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$9;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$MotoSurveyIntent;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$ReportCheckinTouch2HomeTask;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

.field private static final mFPSGateLock:Ljava/lang/Object;

.field private static mFingerprintUnlockAttempts:I

.field private static mFingerprintUnlockErrors:I

.field private static sCurrentUser:I

.field private static sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private mBouncer:Z

.field private final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCalculateFingerprintUnlockTime:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceInteractive:Z

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private mFPSGatedByStowed:Z

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private mFingerprintLockout:Z

.field private mFingerprintRunningState:I

.field private mFingerprintStateCancellingRestartingTime:J

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoingToSleep:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareUnavailableRetryCount:I

.field private mHasLockscreenWallpaper:Z

.field private mInvalidCards:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStowedSensorRegistered:Z

.field private mKeyguardGoingAway:Z

.field private mKeyguardIsShowing:Z

.field private mKeyguardIsVisible:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field private mNeedsSlowUnlockTransition:Z

.field private mPLMNBySubIdList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPLMNList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneState:I

.field private mRetryFingerprintAuthentication:Ljava/lang/Runnable;

.field private mRingMode:I

.field private mSPNBySubIdList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field mServiceStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;",
            ">;"
        }
    .end annotation
.end field

.field private mSimExist:Landroid/util/SparseBooleanArray;

.field private mSm:Landroid/hardware/SensorManager;

.field private mSpnReceiver:Landroid/content/BroadcastReceiver;

.field private mStartTime:J

.field private mStowed:Z

.field private final mStowedListener:Landroid/hardware/SensorEventListener;

.field private mStowedSensor:Landroid/hardware/Sensor;

.field private final mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

.field private mSubIdSkipped:I

.field private mSubscriptionInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchingUser:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserFaceIDUnlockRunning:Landroid/util/SparseBooleanArray;

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field private mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPLMNBySubIdList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPLMNList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSPNBySubIdList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowed:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get3()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    return v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockAttempts:I

    return v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockErrors:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/HashMap;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mInvalidCards:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintLockoutReset()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "unlockType"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintUnlock(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "bouncer"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "subId"    # I
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceStateChange(ILandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/keyguard/KeyguardUpdateMonitor;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserUnlocked()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "bFpsLockout"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintLockoutChanged(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyStrongAuthStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/keyguard/KeyguardUpdateMonitor;J)V
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "duration"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportCheckinTouch2HomeTime(J)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "dreamStart"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDreamingStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceIDUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "acquireInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "authUserId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    .line 213
    new-instance v0, Landroid/content/ComponentName;

    .line 214
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.FallbackHome"

    .line 213
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGateLock:Ljava/lang/Object;

    .line 127
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1562
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 220
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowed:Z

    .line 257
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 262
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 273
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    .line 293
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubIdSkipped:I

    .line 296
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPLMNList:Landroid/util/SparseArray;

    .line 305
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSPNBySubIdList:Landroid/util/SparseArray;

    .line 311
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPLMNBySubIdList:Landroid/util/SparseArray;

    .line 394
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCalculateFingerprintUnlockTime:Z

    .line 413
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 519
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 518
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 559
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 560
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    .line 561
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    .line 562
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    .line 563
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceIDUnlockRunning:Landroid/util/SparseBooleanArray;

    .line 576
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimExist:Landroid/util/SparseBooleanArray;

    .line 729
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockout:Z

    .line 746
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedListener:Landroid/hardware/SensorEventListener;

    .line 859
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    .line 1059
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    .line 1061
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1142
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    .line 1178
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 1177
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 1186
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 1185
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 1983
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mInvalidCards:Ljava/util/HashMap;

    .line 1998
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSpnReceiver:Landroid/content/BroadcastReceiver;

    .line 1563
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 1564
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1565
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 1566
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 1570
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v2, :cond_0

    .line 1571
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 1575
    :cond_0
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/4 v3, 0x1

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 1579
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    .line 1580
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v12

    .line 1581
    .local v12, "numSlots":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_2

    .line 1582
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v14

    .line 1583
    .local v14, "state":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimExist:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    if-eq v14, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v11, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1581
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1583
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1592
    .end local v14    # "state":I
    :cond_2
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1593
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1594
    const-string/jumbo v2, "android.intent.action.TIME_SET"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1595
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1596
    const-string/jumbo v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1597
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1598
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1599
    const-string/jumbo v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1600
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1601
    const-string/jumbo v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1602
    const-string/jumbo v2, "com.motorola.keyguard.ACTION_SIM_PIN_UNLOCK"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1605
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1606
    .local v8, "bootCompleteFilter":Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1607
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1610
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1611
    .local v5, "allUserFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1612
    const-string/jumbo v2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1613
    const-string/jumbo v2, "com.android.facelock.FACE_UNLOCK_STARTED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1614
    const-string/jumbo v2, "com.android.facelock.FACE_UNLOCK_STOPPED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.motorola.faceunlock"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1617
    const-string/jumbo v2, "com.motorola.faceunlock.FACEID_START"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1618
    const-string/jumbo v2, "com.motorola.faceunlock.FACEID_STOP"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1621
    :cond_3
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1622
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1624
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    .line 1623
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1627
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1628
    .local v13, "spnFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSpnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1634
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1635
    new-instance v3, Lcom/android/keyguard/KeyguardUpdateMonitor$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$10;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 1646
    const-string/jumbo v4, "KeyguardUpdateMonitor"

    .line 1634
    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    :goto_2
    const-string/jumbo v2, "trust"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/TrustManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 1652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 1653
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.fingerprint"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1657
    const-string/jumbo v2, "fingerprint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1659
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_5

    .line 1661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    .line 1664
    :cond_5
    const-class v2, Landroid/os/UserManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 1667
    const-string/jumbo v2, "sensor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSm:Landroid/hardware/SensorManager;

    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSm:Landroid/hardware/SensorManager;

    const v3, 0x10003

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v15

    .line 1669
    .local v15, "stowedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1670
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedSensor:Landroid/hardware/Sensor;

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSm:Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v2, v3, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1676
    :goto_3
    return-void

    .line 1647
    .end local v15    # "stowedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catch_0
    move-exception v9

    .line 1648
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto/16 :goto_2

    .line 1673
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v15    # "stowedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedSensor:Landroid/hardware/Sensor;

    goto :goto_3
.end method

.method public static declared-synchronized getCurrentUser()I
    .locals 2

    .prologue
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 572
    :try_start_0
    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1390
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 1391
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1393
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private handleAirplaneModeChanged()V
    .locals 3

    .prologue
    .line 646
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 648
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 646
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 1968
    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KeyguardUpdateMonitor"

    const-string/jumbo v4, "handleBatteryUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 1970
    .local v0, "batteryUpdateInteresting":Z
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 1971
    if-eqz v0, :cond_2

    .line 1972
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1973
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1974
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_1

    .line 1975
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 1972
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1979
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private handleDreamingStateChanged(I)V
    .locals 5
    .param p1, "dreamStart"    # I

    .prologue
    .line 1471
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1472
    .local v1, "count":I
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const/4 v3, 0x1

    .line 1473
    .local v3, "showingDream":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1474
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1475
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1476
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    .line 1473
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1472
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "i":I
    .end local v3    # "showingDream":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "showingDream":Z
    goto :goto_0

    .line 1479
    .restart local v2    # "i":I
    :cond_2
    return-void
.end method

.method private handleFaceIDUnlockStateChanged(ZI)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 958
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceIDUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 959
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 960
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 961
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceIDUnlockStateChanged(ZI)V

    .line 959
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 965
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 947
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 948
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 949
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 950
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    .line 948
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 954
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 4
    .param p1, "acquireInfo"    # I

    .prologue
    .line 776
    if-eqz p1, :cond_3

    .line 778
    const/16 v2, 0x4b4

    if-ne p1, v2, :cond_2

    .line 779
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "Surpassed poor FPS quality threshold"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    sget-object v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 781
    :try_start_0
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 782
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    .line 783
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 800
    :cond_1
    return-void

    .line 780
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 786
    :cond_2
    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_1

    .line 788
    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockErrors:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockErrors:I

    .line 789
    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockErrors:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 790
    sget-object v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 791
    :try_start_1
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 792
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    .line 793
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 790
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 802
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 803
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 804
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_4

    .line 805
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAcquired()V

    .line 802
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 808
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_5
    return-void
.end method

.method private handleFingerprintAuthFailed()V
    .locals 5

    .prologue
    .line 706
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 707
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 708
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthFailed()V

    .line 706
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockAttempts:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockAttempts:I

    .line 714
    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockAttempts:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 715
    sget-object v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 716
    :try_start_0
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowed:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 717
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    .line 718
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 719
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v4, "Too many failed attempts in a row.  Starting stowed listener."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 725
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const v3, 0x7f1101ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    .line 726
    return-void

    .line 715
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleFingerprintAuthenticated(I)V
    .locals 7
    .param p1, "authUserId"    # I

    .prologue
    const/4 v6, 0x0

    .line 811
    const-string/jumbo v2, "KeyGuardUpdateMonitor#handlerFingerPrintAuthenticated"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 813
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCalculateFingerprintUnlockTime:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 814
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCalculateFingerprintUnlockTime:Z

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStartTime:J

    .line 822
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 827
    .local v1, "userId":I
    if-eq v1, p1, :cond_1

    .line 828
    :try_start_1
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fingerprint authenticated for wrong user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 845
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 829
    return-void

    .line 823
    .end local v1    # "userId":I
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "Failed to get current user id: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 845
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 825
    return-void

    .line 831
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "userId":I
    :cond_1
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 832
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 845
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 833
    return-void

    .line 836
    :cond_2
    :try_start_4
    sget-object v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 837
    :try_start_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    if-eqz v2, :cond_3

    .line 838
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    .line 839
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSm:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    monitor-exit v3

    .line 843
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 845
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 847
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 848
    return-void

    .line 836
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v3

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 844
    .end local v1    # "userId":I
    :catchall_1
    move-exception v2

    .line 845
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 844
    throw v2
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .locals 7
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 869
    if-ne p1, v6, :cond_4

    .line 870
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v2, v5, :cond_4

    .line 871
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 875
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    .line 883
    :cond_0
    :goto_0
    if-ne p1, v4, :cond_1

    .line 884
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    if-ge v2, v5, :cond_1

    .line 885
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    .line 886
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 887
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 891
    :cond_1
    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    .line 892
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 894
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 893
    const/16 v4, 0x8

    .line 892
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 897
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 898
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 899
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_3

    .line 900
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintError(ILjava/lang/String;)V

    .line 897
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 880
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    goto :goto_0

    .line 905
    .restart local v1    # "i":I
    :cond_5
    if-eq p1, v6, :cond_6

    .line 906
    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockErrors:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockErrors:I

    .line 909
    :cond_6
    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockErrors:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8

    .line 910
    sget-object v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 911
    :try_start_0
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowed:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    .line 912
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    .line 913
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit v3

    .line 918
    :cond_8
    return-void

    .line 910
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    .line 851
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 852
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 853
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintHelp(ILjava/lang/String;)V

    .line 851
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFingerprintLockoutReset()V
    .locals 1

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 922
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintLockoutChanged(Z)V

    .line 923
    return-void
.end method

.method private handleFingerprintUnlock(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "unlockType"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .prologue
    .line 1505
    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor$MotoSurveyIntent;->sInstalled:Z

    if-nez v1, :cond_0

    return-void

    .line 1506
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1507
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.motorola.survey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    const-string/jumbo v1, "com.motorola.internal.intent.action.KEYGUARD_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1509
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1511
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1512
    return-void
.end method

.method private handleInvalidCardInSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v6, 0x0

    .line 2054
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mInvalidCards:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2056
    .local v1, "isInvalidCard":Z
    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p3, v3, :cond_0

    .line 2057
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mInvalidCards:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    :cond_0
    if-nez v1, :cond_2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v3, :cond_2

    .line 2061
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mInvalidCards:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;

    invoke-direct {v5, p2, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2069
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2070
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 2071
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 2068
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2076
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 6
    .param p1, "bouncer"    # I

    .prologue
    .line 2321
    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleKeyguardBouncerChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    const/4 v2, 0x1

    .line 2323
    .local v2, "isBouncer":Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    .line 2324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2325
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2326
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 2327
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    .line 2324
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2322
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    .end local v2    # "isBouncer":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isBouncer":Z
    goto :goto_0

    .line 2330
    .restart local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2332
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.motorola.faceunlock"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2333
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    sget v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceIDUnlockRunning(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 2334
    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "KeyguardUpdateMonitor"

    const-string/jumbo v4, "bouncer change to shown while screen ON, start faceunlock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlockService()V

    .line 2339
    :cond_5
    return-void
.end method

.method private handleKeyguardReset()V
    .locals 2

    .prologue
    .line 2300
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "handleKeyguardReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2302
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 2303
    return-void
.end method

.method private handleReportEmergencyCallAction()V
    .locals 3

    .prologue
    .line 2345
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2346
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2347
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 2348
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    .line 2345
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2351
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleScreenTurnedOff()V
    .locals 4

    .prologue
    .line 1460
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    .line 1461
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1462
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1463
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1464
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1465
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 1462
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1468
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 10

    .prologue
    .line 1442
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCalculateFingerprintUnlockTime:Z

    if-eqz v6, :cond_0

    .line 1443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStartTime:J

    sub-long v4, v6, v8

    .line 1444
    .local v4, "touch2Home":J
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCalculateFingerprintUnlockTime:Z

    .line 1445
    new-instance v3, Lcom/android/keyguard/KeyguardUpdateMonitor$ReportCheckinTouch2HomeTask;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$ReportCheckinTouch2HomeTask;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;J)V

    .line 1446
    .local v3, "task":Lcom/android/keyguard/KeyguardUpdateMonitor$ReportCheckinTouch2HomeTask;
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1450
    .end local v3    # "task":Lcom/android/keyguard/KeyguardUpdateMonitor$ReportCheckinTouch2HomeTask;
    .end local v4    # "touch2Home":J
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1451
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1452
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1453
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1454
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 1451
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1457
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private handleServiceStateChange(ILandroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 2196
    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2197
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    .line 2198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleServiceStateChange(subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", serviceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2197
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2202
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "invalid subId in handleServiceStateChange()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    return-void

    .line 2206
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2209
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2210
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_2

    .line 2211
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 2208
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2214
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_3
    return-void
.end method

.method private handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2090
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2091
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasSIM()Z

    move-result v5

    .line 2092
    .local v5, "originalHasSimState":Z
    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimExist:Landroid/util/SparseBooleanArray;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p3, v6, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v9, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2094
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasSIM()Z

    move-result v6

    if-eq v6, v5, :cond_2

    .line 2101
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 2102
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2103
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 2104
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 2101
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v4    # "j":I
    :cond_1
    move v6, v8

    .line 2092
    goto :goto_0

    .line 2112
    .end local v5    # "originalHasSimState":Z
    :cond_2
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleInvalidCardInSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 2117
    const-string/jumbo v6, "KeyguardUpdateMonitor"

    const-string/jumbo v7, "invalid subId in handleSimStateChange()"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    return-void

    .line 2121
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2123
    .local v2, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    if-nez v2, :cond_7

    .line 2124
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .end local v2    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    invoke-direct {v2, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 2125
    .restart local v2    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    const/4 v1, 0x1

    .line 2152
    .local v1, "changed":Z
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSkippedSubId()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_5

    .line 2153
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getValidSimCount()I

    move-result v6

    if-gt v6, v7, :cond_5

    .line 2154
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 2158
    :cond_5
    if-eqz v1, :cond_d

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p3, v6, :cond_d

    .line 2159
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_d

    .line 2160
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2161
    .restart local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_6

    .line 2162
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 2159
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2128
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "changed":Z
    .end local v3    # "i":I
    :cond_7
    iget-object v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, p3, :cond_8

    iget v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-eq v6, p1, :cond_c

    :cond_8
    const/4 v1, 0x1

    .line 2130
    .restart local v1    # "changed":Z
    :goto_4
    iget v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-ne v6, p1, :cond_9

    iget v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSubIdSkipped(I)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v6, :cond_9

    move v8, v7

    :cond_9
    if-nez v8, :cond_a

    .line 2131
    iput-object p3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2132
    iput p1, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 2133
    iput p2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 2134
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSubIdSkipped(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2135
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 2140
    :cond_a
    if-nez v1, :cond_4

    .line 2141
    iget-object v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v8, :cond_b

    iget-object v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v8, :cond_4

    .line 2146
    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    .line 2128
    .end local v1    # "changed":Z
    :cond_c
    iget v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-ne v6, p2, :cond_8

    const/4 v1, 0x0

    .restart local v1    # "changed":Z
    goto :goto_4

    .line 2167
    :cond_d
    if-eqz v1, :cond_11

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v6, :cond_11

    .line 2169
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result p1

    .line 2170
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2171
    sget-object p3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2179
    :cond_e
    :goto_5
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p3, v6, :cond_11

    .line 2180
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p2

    .line 2181
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_11

    .line 2182
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2183
    .restart local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_f

    .line 2184
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 2181
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2173
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v3    # "i":I
    :cond_10
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result p1

    .line 2174
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2175
    sget-object p3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_5

    .line 2190
    :cond_11
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 4

    .prologue
    .line 1955
    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "handleTimeUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1957
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1958
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1959
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1956
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1962
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1544
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1545
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1546
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 1544
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1550
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUserUnlocked()V
    .locals 3

    .prologue
    .line 1553
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 1554
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1555
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1556
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1557
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    .line 1554
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1560
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 6
    .param p0, "old"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .param p1, "current"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v5, 0x1

    .line 2354
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 2355
    .local v0, "nowPluggedIn":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 2357
    .local v2, "wasPluggedIn":Z
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 2358
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 2361
    .local v1, "stateChangedWhilePluggedIn":Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_3

    .line 2362
    :cond_0
    return v5

    .line 2358
    .end local v1    # "stateChangedWhilePluggedIn":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "stateChangedWhilePluggedIn":Z
    goto :goto_0

    .line 2357
    .end local v1    # "stateChangedWhilePluggedIn":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "stateChangedWhilePluggedIn":Z
    goto :goto_0

    .line 2366
    :cond_3
    if-eqz v0, :cond_4

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-eq v3, v4, :cond_4

    .line 2367
    return v5

    .line 2371
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-eq v3, v4, :cond_5

    .line 2372
    return v5

    .line 2376
    :cond_5
    if-eqz v0, :cond_6

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-eq v3, v4, :cond_6

    .line 2377
    return v5

    .line 2380
    :cond_6
    const/4 v3, 0x0

    return v3
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1770
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1771
    const-string/jumbo v2, "device_provisioned"

    .line 1770
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFingerprintDisabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 992
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 993
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    goto :goto_0
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 3
    .param p0, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v1, 0x1

    .line 2658
    move-object v0, p0

    .line 2659
    .local v0, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v2, :cond_0

    .line 2660
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v2, :cond_1

    .line 2659
    :cond_0
    :goto_0
    return v1

    .line 2661
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTrustDisabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 987
    .local v0, "disabledBySimPin":Z
    return v0
.end method

.method private isUserChangedLocale(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "result":Z
    const-string/jumbo v1, "persist.sys.locale"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    const-string/jumbo v2, "ro.product.locale"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 533
    .local v0, "result":Z
    return v0
.end method

.method private notifyFingerprintLockoutChanged(Z)V
    .locals 3
    .param p1, "bFpsLockout"    # Z

    .prologue
    .line 735
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockout:Z

    .line 736
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 737
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 738
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 739
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockout:Z

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintLockoutStateChanged(Z)V

    .line 736
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private notifyFingerprintRunningStateChanged()V
    .locals 3

    .prologue
    .line 939
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 940
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 941
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintRunningStateChanged(Z)V

    .line 939
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private notifyStrongAuthStateChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1039
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1040
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1041
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 1039
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1045
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private onFingerprintAuthenticated(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 690
    const-string/jumbo v2, "KeyGuardUpdateMonitor#onFingerPrintAuthenticated"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 693
    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 694
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 695
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 696
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    .line 694
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x150

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 701
    const-wide/16 v4, 0x1f4

    .line 700
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 702
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 703
    return-void
.end method

.method private onKeyguardDeviceInteractiveChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2261
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2263
    sput v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockAttempts:I

    .line 2264
    sput v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockErrors:I

    .line 2265
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    .line 2268
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateStowedSensorState()V

    .line 2269
    return-void
.end method

.method private refreshSimState(II)Z
    .locals 9
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 2627
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 2628
    .local v5, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 2631
    .local v3, "simState":I
    :try_start_0
    invoke-static {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2636
    .local v4, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2638
    .local v1, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    if-nez v1, :cond_0

    .line 2639
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .end local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    invoke-direct {v1, v4, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 2640
    .restart local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2641
    const/4 v0, 0x1

    .line 2654
    .local v0, "changed":Z
    :goto_1
    return v0

    .line 2632
    .end local v0    # "changed":Z
    .end local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :catch_0
    move-exception v2

    .line 2633
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "KeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown sim state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 2644
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2647
    const/4 v6, 0x0

    return v6

    .line 2651
    :cond_1
    iget-object v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v4, :cond_2

    const/4 v0, 0x1

    .line 2652
    .restart local v0    # "changed":Z
    :goto_2
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 2651
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_2
.end method

.method private reportCheckinTouch2HomeTime(J)V
    .locals 9
    .param p1, "duration"    # J

    .prologue
    .line 2758
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2759
    .local v6, "cr":Landroid/content/ContentResolver;
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string/jumbo v1, "MOT_FPS"

    const-string/jumbo v2, "FPS_UNLOCK"

    .line 2760
    const-string/jumbo v3, "1.0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2759
    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2761
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    const-string/jumbo v1, "time2hm"

    invoke-virtual {v0, v1, p1, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    .line 2762
    invoke-virtual {v0, v6}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2766
    .end local v0    # "event":Lcom/motorola/android/provider/CheckinEvent;
    .end local v6    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 2763
    :catch_0
    move-exception v7

    .line 2764
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FPS :Fail reportCheckinTouch2HomeTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resolveNeedsSlowUnlockTransition()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2306
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2307
    return v4

    .line 2309
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2310
    const-string/jumbo v3, "android.intent.category.HOME"

    .line 2309
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2311
    .local v0, "homeIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2313
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 2428
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 2429
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 2430
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 2431
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 2432
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 2433
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 2434
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2435
    .local v0, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2436
    .local v2, "state":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    iget v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v5, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 2438
    .end local v0    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;>;"
    .end local v2    # "state":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_0
    return-void
.end method

.method public static declared-synchronized setCurrentUser(I)V
    .locals 2
    .param p0, "currentUser"    # I

    .prologue
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 568
    :try_start_0
    sput p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 569
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setFingerprintRunningState(I)V
    .locals 4
    .param p1, "fingerprintRunningState"    # I

    .prologue
    const/4 v3, 0x1

    .line 926
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 927
    .local v1, "wasRunning":Z
    :goto_0
    if-ne p1, v3, :cond_2

    const/4 v0, 0x1

    .line 928
    .local v0, "isRunning":Z
    :goto_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 933
    if-eq v1, v0, :cond_0

    .line 934
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintRunningStateChanged()V

    .line 936
    :cond_0
    return-void

    .line 926
    .end local v0    # "isRunning":Z
    .end local v1    # "wasRunning":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "wasRunning":Z
    goto :goto_0

    .line 927
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isRunning":Z
    goto :goto_1
.end method

.method private shouldListenForFingerprint()Z
    .locals 3

    .prologue
    .line 1696
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldListenForFingerprint mKeyguardIsVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1697
    const-string/jumbo v2, " mDeviceInteractive = "

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1697
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1697
    const-string/jumbo v2, " mBouncer = "

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1697
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1698
    const-string/jumbo v2, " mKeyguardGoingAway = "

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1698
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1699
    const-string/jumbo v2, " mGoingToSleep = "

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1699
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1699
    const-string/jumbo v2, " mSwitchingUser = "

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1699
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1700
    const-string/jumbo v2, " isFingerprintDisabled = "

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1700
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v2

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1701
    const-string/jumbo v2, " mFPSGatedByStowed = "

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1701
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    .line 1696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 1704
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1703
    if-nez v0, :cond_2

    .line 1704
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 1703
    if-eqz v0, :cond_3

    .line 1705
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1703
    if-eqz v0, :cond_3

    .line 1705
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1703
    if-eqz v0, :cond_3

    .line 1706
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1703
    if-eqz v0, :cond_3

    .line 1707
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1703
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startListeningForFingerprint()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 1711
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1712
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 1714
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintStateCancellingRestartingTime:J

    .line 1716
    return-void

    .line 1726
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v0, v3, :cond_2

    .line 1727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintStateCancellingRestartingTime:J

    sub-long/2addr v2, v4

    .line 1728
    const-wide/16 v4, 0x7d0

    .line 1727
    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 1729
    return-void

    .line 1731
    :cond_1
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1732
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v2, "start listening when the state is FINGERPRINT_STATE_CANCELLING_RESTARTING"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_2
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v2, "startListeningForFingerprint()"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1738
    .local v6, "userId":I
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1739
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_4

    .line 1740
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 1742
    :cond_4
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1743
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v3, 0x0

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 1744
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 1746
    :cond_5
    return-void
.end method

.method private stopListeningForFingerprint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1754
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "stopListeningForFingerprint()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1757
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 1758
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 1759
    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1762
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 1764
    :cond_2
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1765
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 1767
    :cond_3
    return-void
.end method

.method private static surveyPackageExists(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1515
    const/4 v2, 0x0

    .line 1517
    .local v2, "exists":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1518
    const-string/jumbo v4, "com.motorola.survey"

    const/4 v5, 0x0

    .line 1517
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1519
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_0

    .line 1521
    const/4 v2, 0x1

    .line 1525
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 1523
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private updateFingerprintListeningState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1681
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x150

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1682
    return-void

    .line 1684
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1685
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v0

    .line 1686
    .local v0, "shouldListenForFingerprint":Z
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v1, v3, :cond_2

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 1687
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    .line 1692
    :cond_1
    :goto_0
    return-void

    .line 1688
    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-eq v1, v3, :cond_1

    if-eqz v0, :cond_1

    .line 1690
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    goto :goto_0
.end method

.method private updateStowedSensorState()V
    .locals 4

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 2275
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2276
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsStowedSensorRegistered:Z

    if-nez v0, :cond_1

    .line 2277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsStowedSensorRegistered:Z

    .line 2287
    :cond_1
    :goto_0
    return-void

    .line 2281
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsStowedSensorRegistered:Z

    if-eqz v0, :cond_1

    .line 2282
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 2283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsStowedSensorRegistered:Z

    goto :goto_0
.end method

.method private watchForDeviceProvisioning()V
    .locals 5

    .prologue
    .line 1775
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$11;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 1787
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1788
    const-string/jumbo v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1789
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 1787
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1793
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 1794
    .local v0, "provisioned":Z
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 1795
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 1796
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 1797
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1800
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFailedUnlockAttempts()V
    .locals 2

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2509
    return-void
.end method

.method public clearFingerprintRecognized()V
    .locals 1

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2548
    return-void
.end method

.method public clearSkippedSubId()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSkippedSubId(I)V

    .line 336
    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->surveyPackageExists(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor$MotoSurveyIntent;->sInstalled:Z

    .line 1875
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1876
    return-void
.end method

.method public dispatchDreamingStarted()V
    .locals 5

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14d

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2704
    return-void
.end method

.method public dispatchDreamingStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2707
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14d

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2708
    return-void
.end method

.method public dispatchFinishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    const/4 v3, 0x0

    .line 2682
    monitor-enter p0

    .line 2683
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2685
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x140

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2686
    return-void

    .line 2682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchScreenTurnedOff()V
    .locals 2

    .prologue
    .line 2696
    monitor-enter p0

    .line 2697
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2699
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2700
    return-void

    .line 2696
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 2

    .prologue
    .line 2689
    monitor-enter p0

    .line 2690
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2692
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2693
    return-void

    .line 2689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchStartedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x141

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2679
    return-void
.end method

.method public dispatchStartedWakingUp()V
    .locals 2

    .prologue
    .line 2671
    monitor-enter p0

    .line 2672
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2674
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2675
    return-void

    .line 2671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2770
    const-string/jumbo v7, "KeyguardUpdateMonitor state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2771
    const-string/jumbo v7, "  SIM States:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2772
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2773
    .local v0, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2775
    .end local v0    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_0
    const-string/jumbo v7, "  Subs:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2776
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v7, :cond_1

    .line 2777
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 2778
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2777
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2781
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v7, "  Service states:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2782
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "subId$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2783
    .local v4, "subId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2785
    .end local v4    # "subId":I
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v7}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2786
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 2787
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v7, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    .line 2788
    .local v3, "strongAuthFlags":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Fingerprint state (user="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2789
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    allowed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2790
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    auth\'d="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2791
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    authSinceBoot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2792
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v8

    .line 2791
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2793
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    disabled(DPM)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    possible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2795
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    strongAuthFlags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2796
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    trustManaged="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2798
    .end local v3    # "strongAuthFlags":I
    .end local v6    # "userId":I
    :cond_3
    return-void
.end method

.method public getBroadcastPLMNForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPLMNList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcastPLMNForSubId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPLMNBySubIdList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcastSPNForSubId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSPNBySubIdList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFailedUnlockAttempts(I)I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2514
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2516
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 2517
    sget v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v6, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    .line 2518
    .local v2, "maxAttempts":I
    if-lez v2, :cond_0

    .line 2519
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v1

    .line 2520
    .local v1, "failedAttemptsDM":I
    if-ltz v1, :cond_0

    .line 2521
    return v1

    .line 2526
    .end local v1    # "failedAttemptsDM":I
    .end local v2    # "maxAttempts":I
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    return v3
.end method

.method public getFirstUnSkippedLockedSIMState(Z)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 9
    .param p1, "isPukUnlockScreenEnable"    # Z

    .prologue
    .line 373
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v4

    .line 374
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 375
    .local v5, "resultState":Lcom/android/internal/telephony/IccCardConstants$State;
    const v0, 0x7fffffff

    .line 376
    .local v0, "bestSlotId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 377
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 378
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 379
    .local v2, "id":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v6

    .line 380
    .local v6, "slotId":I
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    .line 381
    .local v7, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v7, v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v7, v8, :cond_1

    if-eqz p1, :cond_1

    .line 382
    :cond_0
    if-le v0, v6, :cond_1

    .line 383
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    .line 382
    if-eqz v8, :cond_1

    .line 383
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSubIdSkipped(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 382
    if-eqz v8, :cond_1

    .line 384
    move-object v5, v7

    .line 385
    move v0, v6

    .line 376
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v2    # "id":I
    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "slotId":I
    .end local v7    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    return-object v5
.end method

.method public getInvalidCards()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mInvalidCards:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLockedSimCount()I
    .locals 5

    .prologue
    .line 339
    const/4 v2, 0x0

    .line 341
    .local v2, "lockedSimCount":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 342
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 343
    .local v3, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    return v2
.end method

.method public getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I
    .locals 8
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 2724
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v4

    .line 2725
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v5, -0x1

    .line 2726
    .local v5, "resultId":I
    const v0, 0x7fffffff

    .line 2727
    .local v0, "bestSlotId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 2728
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 2729
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 2730
    .local v2, "id":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v6

    .line 2731
    .local v6, "slotId":I
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    if-ne p1, v7, :cond_1

    if-le v0, v6, :cond_1

    .line 2733
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v7, :cond_2

    .line 2734
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSubIdSkipped(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2727
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2739
    :cond_2
    move v5, v2

    .line 2740
    move v0, v6

    goto :goto_1

    .line 2743
    .end local v2    # "id":I
    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "slotId":I
    :cond_3
    return v5
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2612
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 2614
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public getSkippedSubId()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubIdSkipped:I

    return v0
.end method

.method public getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object v0
.end method

.method public getSubscriptionInfo(Z)Ljava/util/List;
    .locals 2
    .param p1, "forceReload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 657
    .local v0, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 660
    :cond_1
    if-nez v0, :cond_2

    .line 662
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 666
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    return-object v1

    .line 664
    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    goto :goto_0
.end method

.method public getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 2747
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v2

    .line 2748
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2749
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 2750
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_0

    return-object v1

    .line 2748
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2752
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getUserCanSkipBouncer(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 999
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 999
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserHasTrust(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserTrustIsManaged(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValidSimCount()I
    .locals 5

    .prologue
    .line 351
    const/4 v3, 0x0

    .line 353
    .local v3, "validSimCardCount":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 354
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 361
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_1

    .line 362
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_2

    .line 366
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_1

    .line 364
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_1

    .line 365
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 369
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    return v3
.end method

.method protected handleBootCompleted()V
    .locals 3

    .prologue
    .line 1882
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v2, :cond_0

    return-void

    .line 1883
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 1884
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1885
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1886
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1887
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    .line 1884
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1890
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 3

    .prologue
    .line 1830
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1831
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1832
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1833
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1834
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 1831
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1837
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1904
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1905
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1906
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1907
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 1904
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1910
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 1912
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1913
    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 1915
    :cond_2
    return-void
.end method

.method protected handleFinishedGoingToSleep(I)V
    .locals 4
    .param p1, "arg1"    # I

    .prologue
    .line 1426
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 1427
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1428
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1429
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1430
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1431
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 1428
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1435
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onKeyguardDeviceInteractiveChanged()V

    .line 1437
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1438
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "newState"    # Ljava/lang/String;

    .prologue
    .line 1921
    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handlePhoneStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_0
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1923
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 1929
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1930
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1931
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_2

    .line 1932
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 1929
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1924
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_3
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1925
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1926
    :cond_4
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1927
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1935
    .restart local v1    # "i":I
    :cond_5
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 1941
    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRingerModeChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 1943
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1944
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1945
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1946
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 1943
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1949
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method protected handleSimSubscriptionInfoChanged()V
    .locals 11

    .prologue
    .line 615
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v7

    .line 620
    .local v7, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v2, "changedSubscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 622
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 623
    .local v5, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v1

    .line 624
    .local v1, "changed":Z
    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 628
    .end local v1    # "changed":Z
    .end local v5    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 629
    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 630
    .local v3, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 631
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 632
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_2

    .line 633
    iget v8, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v9, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v10, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 630
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 628
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 637
    .end local v3    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .end local v6    # "j":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 638
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 639
    .restart local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_5

    .line 640
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 637
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 643
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_6
    return-void
.end method

.method protected handleStartedGoingToSleep(I)V
    .locals 4
    .param p1, "arg1"    # I

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1414
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1415
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1416
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1417
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    .line 1415
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1421
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 1422
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1423
    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 4

    .prologue
    .line 1397
    const-string/jumbo v3, "KeyguardUpdateMonitor#handleStartedWakingUp"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1399
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onKeyguardDeviceInteractiveChanged()V

    .line 1401
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1402
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1403
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1404
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1405
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1406
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 1403
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1409
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1410
    return-void
.end method

.method protected handleUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1859
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1860
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1861
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1862
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 1859
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1865
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1843
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1844
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1845
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 1843
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1850
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    :goto_1
    return-void

    .line 1851
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public hasLockscreenWallpaper()Z
    .locals 1

    .prologue
    .line 1823
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    return v0
.end method

.method public hasSIM()Z
    .locals 2

    .prologue
    .line 579
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimExist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimExist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    const/4 v1, 0x1

    return v1

    .line 579
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isDeviceInteractive()Z
    .locals 1

    .prologue
    .line 2711
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 2504
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isFaceIDUnlockRunning(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceIDUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isFaceUnlockRunning(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isFingerprintDetectionRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 979
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerprintLockedout()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockout:Z

    return v0
.end method

.method public isGoingToSleep()Z
    .locals 1

    .prologue
    .line 2715
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method public isSimLocalePresent(Landroid/telephony/TelephonyManager;)Z
    .locals 10
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 537
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 539
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLocaleFromDefaultSim()Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "simLanguage":Ljava/lang/String;
    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSimLocalePresent simLangauage read from sim is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 541
    const-string/jumbo v7, "; Sim state:"

    .line 540
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 541
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    .line 540
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-eqz v3, :cond_0

    .line 543
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 544
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 545
    .local v4, "simLocale":Ljava/util/Locale;
    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 546
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 547
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    return v9

    .line 551
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v3    # "simLanguage":Ljava/lang/String;
    .end local v4    # "simLocale":Ljava/util/Locale;
    :catch_0
    move-exception v2

    .line 552
    .local v2, "exception":Landroid/os/RemoteException;
    const-string/jumbo v5, "KeyguardUpdateMonitor"

    const-string/jumbo v6, "isSimLocalePresent RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return v8

    .line 555
    .end local v2    # "exception":Landroid/os/RemoteException;
    .restart local v3    # "simLanguage":Ljava/lang/String;
    :cond_0
    return v8
.end method

.method public isSimPinSecure()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2557
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2560
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 2561
    .local v2, "subId":I
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2562
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSubIdSkipped(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2563
    const/4 v3, 0x1

    return v3

    .line 2568
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subId":I
    :cond_1
    return v4
.end method

.method public isSimPinVoiceSecure()Z
    .locals 1

    .prologue
    .line 2552
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    return v0
.end method

.method public isSimReady()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2573
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2574
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 2575
    .local v2, "subId":I
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_0

    .line 2576
    const/4 v3, 0x1

    return v3

    .line 2579
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subId":I
    :cond_1
    return v5
.end method

.method public isSubIdSkipped(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 327
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubIdSkipped:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 328
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSwitchingUser()Z
    .locals 1

    .prologue
    .line 2418
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return v0
.end method

.method public isUnlockWithFingerprintPossible(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1749
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1750
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1749
    :cond_0
    return v0
.end method

.method public isUnlockingWithFingerprintAllowed()Z
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    return v0
.end method

.method public needsSlowUnlockTransition()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return v0
.end method

.method public onKeyguardShowingChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2245
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsShowing:Z

    .line 2246
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsShowing:Z

    if-nez v0, :cond_0

    .line 2248
    sput v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockAttempts:I

    .line 2249
    sput v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUnlockErrors:I

    .line 2250
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    .line 2252
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2254
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateStowedSensorState()V

    .line 2256
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .prologue
    .line 2222
    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyguardVisibilityChanged("

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

    .line 2223
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 2224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2225
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2226
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 2227
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    .line 2224
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2230
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2233
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.motorola.faceunlock"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2234
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceIDUnlockRunning(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 2235
    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "visibility change to show while screen ON, start faceunlock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlockService()V

    .line 2240
    :cond_4
    return-void
.end method

.method public onTrustChanged(ZII)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    .line 591
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 592
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 593
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 594
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    .line 596
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 597
    invoke-virtual {v0, p3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustGrantedWithFlags(II)V

    .line 592
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 3
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 671
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 673
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 674
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 675
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    .line 673
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 679
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 2403
    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2406
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 2407
    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    const-string/jumbo v2, "Object tried to add another callback"

    .line 2408
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2407
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2409
    :cond_1
    return-void

    .line 2405
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2412
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2413
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 2414
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 2415
    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 2389
    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2391
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 2392
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2390
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2395
    :cond_2
    return-void
.end method

.method public reportBackupUnlock(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1500
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Backup unlocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x19b

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1502
    return-void

    :cond_1
    move v0, v1

    .line 1501
    goto :goto_0
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 2
    .param p1, "bypassHandler"    # Z

    .prologue
    .line 2492
    if-nez p1, :cond_0

    .line 2493
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2497
    :goto_0
    return-void

    .line 2495
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    goto :goto_0
.end method

.method public reportFailedStrongAuthUnlockAttempt(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2532
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2534
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 2535
    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v4, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    .line 2536
    .local v1, "maxAttempts":I
    if-lez v1, :cond_0

    .line 2537
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 2538
    return-void

    .line 2543
    .end local v1    # "maxAttempts":I
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2544
    return-void
.end method

.method public reportFingerprintUnlock(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1495
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fingerprint unlocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x19a

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1497
    return-void

    :cond_1
    move v0, v1

    .line 1496
    goto :goto_0
.end method

.method public reportSimUnlocked(I)V
    .locals 8
    .param p1, "subId"    # I

    .prologue
    .line 2464
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v3

    .line 2465
    .local v3, "slotId":I
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, p1, v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 2468
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSkippedSubId()I

    move-result v2

    .line 2469
    .local v2, "skippedSubId":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 2470
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2471
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 2472
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    .line 2473
    .local v4, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_0

    .line 2474
    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Default SMS subId is modified to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 2481
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    return-void
.end method

.method public reportSuccessfulStrongAuthUnlockAttempt()V
    .locals 5

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, "token":[B
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->resetTimeout([B)V

    .line 1029
    .end local v0    # "token":[B
    :cond_0
    sget-object v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1030
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    if-eqz v1, :cond_1

    .line 1031
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFPSGatedByStowed:Z

    .line 1032
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSm:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStowedSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 1036
    return-void

    .line 1029
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 4
    .param p1, "showingBouncer"    # Z

    .prologue
    .line 2448
    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendKeyguardBouncerChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x142

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2450
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2451
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2452
    return-void

    .line 2450
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendKeyguardReset()V
    .locals 2

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2442
    return-void
.end method

.method public setHasLockscreenWallpaper(Z)V
    .locals 3
    .param p1, "hasLockscreenWallpaper"    # Z

    .prologue
    .line 1808
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    if-eq p1, v2, :cond_1

    .line 1809
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    .line 1810
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1811
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1812
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1813
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onHasLockscreenWallpaperChanged(Z)V

    .line 1810
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1817
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setKeyguardBouncerShowingForFPS(Z)V
    .locals 0
    .param p1, "showingBouncer"    # Z

    .prologue
    .line 2292
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    .line 2293
    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 0
    .param p1, "goingAway"    # Z

    .prologue
    .line 686
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 687
    return-void
.end method

.method public setSkippedSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubIdSkipped:I

    .line 324
    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 0
    .param p1, "switching"    # Z

    .prologue
    .line 2422
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 2423
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2424
    return-void
.end method

.method public startFaceUnlockService()V
    .locals 6

    .prologue
    .line 2802
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2803
    .local v2, "serviceIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.motorola.faceunlock"

    .line 2804
    const-string/jumbo v5, "com.motorola.faceunlock.service.CameraFaceUnlockService"

    .line 2803
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2806
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2807
    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KeyguardUpdateMonitor"

    const-string/jumbo v4, "startFaceUnlockService.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2813
    :cond_0
    :goto_0
    return-void

    .line 2810
    :catch_0
    move-exception v0

    .line 2811
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "KeyguardUpdateMonitor"

    const-string/jumbo v4, "FaceUnlockService can not be started"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2808
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 2809
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "KeyguardUpdateMonitor"

    const-string/jumbo v4, "Failed to start FaceUnlockService"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateSimPinLanguage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2584
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SimlocalSettings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/KeyguardPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2585
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserChangedLocale(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2586
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimReady()Z

    move-result v2

    .line 2585
    if-nez v2, :cond_0

    .line 2587
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v2

    .line 2585
    if-eqz v2, :cond_1

    .line 2588
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SimlocalSettings"

    invoke-static {v2, v3, v5}, Lcom/android/keyguard/KeyguardPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2589
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSubscriptionsChanged isUserChangedLocale or isSimReady; isDeviceProvisionedInSettingsDb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2590
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v4

    .line 2589
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    return-void

    .line 2593
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2594
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "onSubscriptionsChanged !isSimPinSecure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    return-void

    .line 2599
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2600
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocalePresent(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    .line 2601
    .local v0, "simLocalePresent":Z
    if-eqz v0, :cond_3

    .line 2602
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SimlocalSettings"

    invoke-static {v2, v3, v5}, Lcom/android/keyguard/KeyguardPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2604
    :cond_3
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSubscriptionsChanged SIM local present:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    .end local v0    # "simLocalePresent":Z
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    return-void
.end method
