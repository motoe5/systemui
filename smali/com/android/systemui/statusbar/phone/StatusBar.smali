.class public Lcom/android/systemui/statusbar/phone/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
.implements Lcom/android/systemui/plugins/ActivityStarter;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
.implements Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$10;,
        Lcom/android/systemui/statusbar/phone/StatusBar$11;,
        Lcom/android/systemui/statusbar/phone/StatusBar$12;,
        Lcom/android/systemui/statusbar/phone/StatusBar$13;,
        Lcom/android/systemui/statusbar/phone/StatusBar$14;,
        Lcom/android/systemui/statusbar/phone/StatusBar$15;,
        Lcom/android/systemui/statusbar/phone/StatusBar$16;,
        Lcom/android/systemui/statusbar/phone/StatusBar$17;,
        Lcom/android/systemui/statusbar/phone/StatusBar$18;,
        Lcom/android/systemui/statusbar/phone/StatusBar$19;,
        Lcom/android/systemui/statusbar/phone/StatusBar$1;,
        Lcom/android/systemui/statusbar/phone/StatusBar$20;,
        Lcom/android/systemui/statusbar/phone/StatusBar$21;,
        Lcom/android/systemui/statusbar/phone/StatusBar$22;,
        Lcom/android/systemui/statusbar/phone/StatusBar$23;,
        Lcom/android/systemui/statusbar/phone/StatusBar$24;,
        Lcom/android/systemui/statusbar/phone/StatusBar$25;,
        Lcom/android/systemui/statusbar/phone/StatusBar$2;,
        Lcom/android/systemui/statusbar/phone/StatusBar$3;,
        Lcom/android/systemui/statusbar/phone/StatusBar$4;,
        Lcom/android/systemui/statusbar/phone/StatusBar$5;,
        Lcom/android/systemui/statusbar/phone/StatusBar$6;,
        Lcom/android/systemui/statusbar/phone/StatusBar$7;,
        Lcom/android/systemui/statusbar/phone/StatusBar$8;,
        Lcom/android/systemui/statusbar/phone/StatusBar$9;,
        Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;,
        Lcom/android/systemui/statusbar/phone/StatusBar$FastColorDrawable;,
        Lcom/android/systemui/statusbar/phone/StatusBar$H;,
        Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;
    }
.end annotation


# static fields
.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

.field public static final ENABLE_REMOTE_INPUT:Z

.field public static final FORCE_REMOTE_INPUT_HISTORY:Z

.field private static final FREEFORM_WINDOW_MANAGEMENT:Z

.field private static final ONLY_CORE_APPS:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field mAbsPos:[I

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAllUsersReceiver:Landroid/content/BroadcastReceiver;

.field protected mAllowLockscreenRemoteInput:Z

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field protected mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field protected mBackdropBack:Landroid/widget/ImageView;

.field protected mBackdropFront:Landroid/widget/ImageView;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field protected mBouncerShowing:Z

.field mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraLaunchGestureVibePattern:[J

.field private mCarrierLabelUpdateMonitor:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field mCurrentDisplaySize:Landroid/graphics/Point;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field private final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private mDemoReceiver:Landroid/content/BroadcastReceiver;

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field protected mDisableNotificationAlerts:Z

.field mDisabled1:I

.field mDisabled2:I

.field private mDisabledUnmodified1:I

.field private mDisabledUnmodified2:I

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

.field private mDozing:Z

.field private mDozingRequested:Z

.field private mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field mExpandedContents:Landroid/view/View;

.field mExpandedVisible:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field protected mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field private mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

.field protected mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field protected mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

.field protected mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field protected mHeadsUpTicker:Z

.field protected mHideBackdropFront:Ljava/lang/Runnable;

.field protected mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private mInteractingWindows:I

.field private mIsSupportNewSpec:Z

.field mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field protected mKeyguardFadingAway:Z

.field protected mKeyguardFadingAwayDelay:J

.field protected mKeyguardFadingAwayDuration:J

.field private mKeyguardFadingWhilePulsing:Z

.field private mKeyguardGoingAway:Z

.field mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field protected mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field protected mKeysKeptForRemoteInput:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCameraLaunchSource:I

.field private mLastDispatchedSystemUiVisibility:I

.field private final mLastDockedStackBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenStackBounds:Landroid/graphics/Rect;

.field private mLastLoggedStateFingerprint:I

.field private mLastVisibilityReportUptimeMs:J

.field private mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mLaunchCameraOnFinishedGoingToSleep:Z

.field private mLaunchCameraOnScreenTurningOn:Z

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field protected mLaunchTransitionFadingAway:Z

.field protected mLayoutDirection:I

.field mLeaveOpenOnKeyguardHide:Z

.field mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLocale:Ljava/util/Locale;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field mMaxAllowedKeyguardNotifications:I

.field private mMaxKeyguardNotifications:I

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaListener:Landroid/media/session/MediaController$Callback;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field mNaturalBarHeight:I

.field private mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

.field private mNavigationBarRequestVisibility:Z

.field private mNavigationBarShowAccessibilityButton:Z

.field private mNavigationBarShowMenuIcon:Z

.field private mNavigationBarView:Landroid/view/View;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoAnimationOnNextBarModeChange:Z

.field private mNonBlockablePkgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationClicker:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private final mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field protected mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field protected mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private final mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mOneNavEnabled:Z

.field private mOneNavObserver:Landroid/database/ContentObserver;

.field private mPanelExpanded:Z

.field private mPendingNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemoteInputView:Landroid/view/View;

.field private mPendingWorkRemoteInputView:Landroid/view/View;

.field mPixelFormat:I

.field mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPowerManager:Landroid/os/PowerManager;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field mQueueLock:Ljava/lang/Object;

.field protected mRecents:Lcom/android/systemui/RecentsComponent;

.field private mReinflateNotificationsOnUserSwitched:Z

.field protected mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field protected mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mReportRejectedTouch:Landroid/view/View;

.field private mScreenPinning:Z

.field private mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

.field private mScreenTurningOn:Z

.field protected mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field protected mScrimSrcModeEnabled:Z

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field mShowIconsOfStatusBar:Z

.field protected mShowLockscreenNotifications:Z

.field protected mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

.field protected mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field mStartTracing:Ljava/lang/Runnable;

.field protected mStartedGoingToSleep:Z

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMode:I

.field private mStatusBarStateLog:Landroid/metrics/LogMaker;

.field protected mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field protected mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field protected mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mStatusBarWindowState:I

.field mStopTracing:Ljava/lang/Runnable;

.field protected mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mSystemUiVisibility:I

.field private mTmpChildOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTmpInt2:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field mTracking:Z

.field mTrackingPosition:I

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field protected mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mUserSetup:Z

.field private mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mUserSwitchCompleteObserver:Landroid/app/UserSwitchObserver;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field private mVibrator:Landroid/os/Vibrator;

.field protected final mVisibilityReporter:Ljava/lang/Runnable;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field protected mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field mVzwBouncerPolicyEnabled:Z

.field private mWaitingForKeyguardExit:Z

.field private mWakeUpComingFromTouch:Z

.field private mWakeUpTouchLocation:Landroid/graphics/PointF;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I


# direct methods
.method static synthetic -com_android_systemui_statusbar_phone_StatusBar-mthref-1(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .prologue
    .line 3901
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

.method static synthetic -com_android_systemui_statusbar_phone_StatusBar-mthref-2(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 5128
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/internal/logging/MetricsLogger;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/UserManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsSupportNewSpec:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/StatusBar;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "-value"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/StatusBar;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "-value"    # Landroid/media/MediaMetadata;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "-value"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOneNavEnabled:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "-value"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getOneNavEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/StatusBar;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPlaybackActive(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/util/ArraySet;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "array"    # Landroid/util/ArraySet;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeRemoteInputEntriesKeptUntilCollapsed()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationShade()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearCurrentMediaNotification()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "newlyVisible"    # Ljava/util/Collection;
    .param p2, "noLongerVisible"    # Ljava/util/Collection;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/phone/StatusBar;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "vis"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/Notification;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->processForRemoteInput(Landroid/app/Notification;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 296
    const-string/jumbo v4, "debug.enable_remote_input"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 295
    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_REMOTE_INPUT:Z

    .line 298
    const-string/jumbo v4, "debug.child_notifs"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 297
    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 300
    const-string/jumbo v4, "debug.force_remoteinput_history"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 299
    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    .line 301
    sput-boolean v5, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    .line 378
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 379
    const/4 v5, 0x4

    .line 378
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 380
    const/16 v5, 0xd

    .line 378
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 419
    :try_start_0
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 420
    .local v3, "packageManager":Landroid/content/pm/IPackageManager;
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v2

    .line 422
    .local v2, "onlyCoreApps":Z
    const-string/jumbo v4, "android.software.freeform_window_management"

    const/4 v5, 0x0

    .line 421
    invoke-interface {v3, v4, v5}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    .end local v2    # "onlyCoreApps":Z
    :goto_0
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    .line 428
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->FREEFORM_WINDOW_MANAGEMENT:Z

    .line 601
    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    sput-object v4, Lcom/android/systemui/statusbar/phone/StatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 602
    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sput-object v4, Lcom/android/systemui/statusbar/phone/StatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 287
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 425
    .local v2, "onlyCoreApps":Z
    const/4 v1, 0x0

    .local v1, "freeformWindowManagement":Z
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 447
    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 449
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 453
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 461
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsSupportNewSpec:Z

    .line 464
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    .line 507
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAbsPos:[I

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 511
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 512
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 515
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 516
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    .line 517
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 518
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    .line 521
    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDispatchedSystemUiVisibility:I

    .line 523
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 526
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 532
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 535
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    .line 536
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 556
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    .line 557
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 585
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 587
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 606
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 608
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 607
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 615
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 614
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 638
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 637
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 650
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 649
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 663
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVzwBouncerPolicyEnabled:Z

    .line 675
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowIconsOfStatusBar:Z

    .line 679
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 678
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 700
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 764
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 768
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    .line 779
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    .line 786
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 785
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 791
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 802
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCarrierLabelUpdateMonitor:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .line 807
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarRequestVisibility:Z

    .line 809
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarShowMenuIcon:Z

    .line 815
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOneNavObserver:Landroid/database/ContentObserver;

    .line 2570
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 3170
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    .line 3521
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 3907
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3945
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    .line 4242
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 4253
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 5959
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 5967
    new-instance v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 5969
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 5970
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 5972
    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLayoutDirection:I

    .line 5978
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    .line 5979
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    .line 5986
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    .line 5993
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    .line 5994
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpTicker:Z

    .line 5995
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisableNotificationAlerts:Z

    .line 6002
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    .line 6003
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 6004
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 6034
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    .line 6054
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 6066
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 6065
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 6073
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$19;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 6084
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 6097
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 6299
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 6383
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    .line 6403
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$24;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 6402
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 7821
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarShowAccessibilityButton:Z

    .line 7829
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$25;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitchCompleteObserver:Landroid/app/UserSwitchObserver;

    .line 287
    return-void
.end method

.method private abortExistingInflation(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1867
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1868
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1869
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    .line 1870
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1873
    .local v0, "addedEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v0, :cond_1

    .line 1874
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    .line 1876
    :cond_1
    return-void
.end method

.method private addEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "shadeEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 1879
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    .line 1880
    .local v0, "isHeadsUped":Z
    if-eqz v0, :cond_0

    .line 1881
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1883
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    .line 1885
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1887
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 1888
    return-void
.end method

.method private addNotificationChildrenAndSort()V
    .locals 11

    .prologue
    .line 2248
    const/4 v4, 0x0

    .line 2249
    .local v4, "orderChanged":Z
    const/4 v3, 0x0

    .end local v4    # "orderChanged":Z
    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 2250
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2251
    .local v7, "view":Landroid/view/View;
    instance-of v8, v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v8, :cond_0

    .line 2249
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 2256
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2257
    .local v6, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 2258
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2260
    .local v5, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v0, 0x0

    .local v0, "childIndex":I
    :goto_2
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 2262
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2263
    .local v1, "childView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 2264
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2265
    const-string/jumbo v8, "StatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trying to add a notification child that already has a parent. class:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2266
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 2265
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2267
    const-string/jumbo v10, "\n child: "

    .line 2265
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2271
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 2272
    invoke-virtual {v6, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    .line 2273
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyGroupChildAdded(Landroid/view/View;)V

    .line 2261
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2278
    .end local v1    # "childView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v6, v5, v8, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v8

    or-int/2addr v4, v8

    .local v4, "orderChanged":Z
    goto :goto_1

    .line 2280
    .end local v0    # "childIndex":I
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v4    # "orderChanged":Z
    .end local v5    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v6    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "view":Landroid/view/View;
    :cond_5
    if-eqz v4, :cond_6

    .line 2281
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildOrderChangedEvent()V

    .line 2283
    :cond_6
    return-void
.end method

.method private addStatusBarWindow()V
    .locals 3

    .prologue
    .line 3772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V

    .line 3773
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 3774
    new-instance v0, Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 3775
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->add(Landroid/view/View;I)V

    .line 3776
    return-void
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6976
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 6977
    return v1

    .line 6979
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 6981
    .local v0, "dpmFlags":I
    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 3
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7658
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 7659
    iget v2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    .line 7658
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 7659
    goto :goto_0
.end method

.method private areLightsOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3597
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private barMode(IIII)I
    .locals 4
    .param p1, "vis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "translucentFlag"    # I
    .param p4, "transparentFlag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3480
    or-int/lit8 v0, p4, 0x1

    .line 3481
    .local v0, "lightsOutTransparent":I
    and-int v3, p1, p2

    if-eqz v3, :cond_0

    :goto_0
    return v1

    .line 3482
    :cond_0
    and-int v1, p1, p3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 3483
    :cond_1
    and-int v1, p1, v0

    if-ne v1, v0, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    .line 3484
    :cond_2
    and-int v1, p1, p4

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    .line 3485
    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    move v1, v2

    .line 3486
    goto :goto_0
.end method

.method private bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 28
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    .line 6642
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->inflateGuts()V

    .line 6643
    invoke-virtual/range {p1 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 6644
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    .line 6645
    .local v9, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 6646
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v22

    .line 6647
    .local v22, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    new-instance v7, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$11;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V

    .line 6657
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v23

    .line 6658
    .local v23, "gutsView":Landroid/view/View;
    move-object/from16 v0, v23

    instance-of v7, v0, Lcom/android/systemui/statusbar/NotificationSnooze;

    if-eqz v7, :cond_0

    move-object/from16 v26, v23

    .line 6659
    check-cast v26, Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 6660
    .local v26, "snoozeGuts":Lcom/android/systemui/statusbar/NotificationSnooze;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    .line 6661
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/NotificationSnooze;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 6662
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->snoozeCriteria:Ljava/util/List;

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSnoozeOptions(Ljava/util/List;)V

    .line 6663
    new-instance v7, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationGuts;->setHeightChangedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;)V

    .line 6668
    .end local v26    # "snoozeGuts":Lcom/android/systemui/statusbar/NotificationSnooze;
    :cond_0
    move-object/from16 v0, v23

    instance-of v7, v0, Lcom/android/systemui/statusbar/NotificationInfo;

    if-eqz v7, :cond_6

    .line 6669
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v27

    .line 6670
    .local v27, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 6671
    invoke-virtual/range {v27 .. v27}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 6670
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 6673
    .local v4, "pmUser":Landroid/content/pm/PackageManager;
    const-string/jumbo v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 6672
    invoke-static {v7}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v5

    .line 6674
    .local v5, "iNotificationManager":Landroid/app/INotificationManager;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v3, v23

    .line 6675
    check-cast v3, Lcom/android/systemui/statusbar/NotificationInfo;

    .line 6678
    .local v3, "info":Lcom/android/systemui/statusbar/NotificationInfo;
    const/4 v10, 0x0

    .line 6679
    .local v10, "onSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    if-nez v7, :cond_2

    .line 6680
    :cond_1
    new-instance v10, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$21;

    .end local v10    # "onSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1, v6}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$21;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6686
    :cond_2
    new-instance v11, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$20;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1, v9}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6692
    .local v11, "onAppSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    new-instance v12, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$22;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v12, v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$22;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6696
    .local v12, "onDoneClick":Landroid/view/View$OnClickListener;
    new-instance v13, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$13;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6710
    .local v13, "checkSaveListener":Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 6712
    .local v16, "channels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/NotificationChannel;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v7

    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    .line 6713
    .local v15, "channel":Landroid/app/NotificationChannel;
    if-eqz v15, :cond_3

    .line 6714
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6717
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6720
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v20

    .line 6721
    .local v20, "childrenRows":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v25

    .line 6722
    .local v25, "numChildren":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 6723
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 6724
    .local v18, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v7

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    move-object/from16 v17, v0

    .line 6725
    .local v17, "childChannel":Landroid/app/NotificationChannel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v19

    .line 6726
    .local v19, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6727
    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 6726
    if-eqz v7, :cond_4

    .line 6728
    invoke-virtual/range {v16 .. v17}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6722
    :cond_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 6734
    .end local v17    # "childChannel":Landroid/app/NotificationChannel;
    .end local v18    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v19    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .end local v20    # "childrenRows":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v24    # "i":I
    .end local v25    # "numChildren":I
    :cond_5
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6736
    if-nez v15, :cond_7

    const/4 v8, 0x2

    .line 6741
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNonBlockablePkgs:Ljava/util/Set;

    .line 6734
    invoke-virtual/range {v3 .. v14}, Lcom/android/systemui/statusbar/NotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Ljava/util/List;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;Landroid/view/View$OnClickListener;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Ljava/util/Set;)V

    .line 6746
    .end local v3    # "info":Lcom/android/systemui/statusbar/NotificationInfo;
    .end local v4    # "pmUser":Landroid/content/pm/PackageManager;
    .end local v5    # "iNotificationManager":Landroid/app/INotificationManager;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v11    # "onAppSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .end local v12    # "onDoneClick":Landroid/view/View$OnClickListener;
    .end local v13    # "checkSaveListener":Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;
    .end local v15    # "channel":Landroid/app/NotificationChannel;
    .end local v16    # "channels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/NotificationChannel;>;"
    .end local v27    # "userHandle":Landroid/os/UserHandle;
    :cond_6
    :goto_2
    return-void

    .line 6737
    .restart local v3    # "info":Lcom/android/systemui/statusbar/NotificationInfo;
    .restart local v4    # "pmUser":Landroid/content/pm/PackageManager;
    .restart local v5    # "iNotificationManager":Landroid/app/INotificationManager;
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v11    # "onAppSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .restart local v12    # "onDoneClick":Landroid/view/View$OnClickListener;
    .restart local v13    # "checkSaveListener":Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;
    .restart local v15    # "channel":Landroid/app/NotificationChannel;
    .restart local v16    # "channels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/NotificationChannel;>;"
    .restart local v27    # "userHandle":Landroid/os/UserHandle;
    :cond_7
    invoke-virtual {v15}, Landroid/app/NotificationChannel;->getImportance()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_1

    .line 6742
    :catch_0
    move-exception v21

    .line 6743
    .local v21, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "StatusBar"

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private bindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "pmUser"    # Landroid/content/pm/PackageManager;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 7059
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, p0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    .line 7060
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 7061
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 7062
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {p4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    .line 7063
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V

    .line 7064
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 7065
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    .line 7072
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7073
    .local v3, "pkg":Ljava/lang/String;
    move-object v0, v3

    .line 7076
    .local v0, "appname":Ljava/lang/String;
    const/16 v4, 0x2200

    .line 7075
    :try_start_0
    invoke-virtual {p2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 7078
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 7079
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7084
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppName(Ljava/lang/String;)V

    .line 7085
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$15;

    invoke-direct {v4, p0, p4}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$15;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnDismissRunnable(Ljava/lang/Runnable;)V

    .line 7087
    const/high16 v4, 0x60000

    invoke-virtual {p4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 7088
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_REMOTE_INPUT:Z

    if-eqz v4, :cond_1

    .line 7089
    const/high16 v4, 0x20000

    invoke-virtual {p4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 7091
    :cond_1
    return-void

    .line 7081
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private cancelAutohide()V
    .locals 2

    .prologue
    .line 3565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohideSuspended:Z

    .line 3566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3567
    return-void
.end method

.method private checkRemoteInputOutside(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 3584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 3586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v0

    .line 3584
    if-eqz v0, :cond_0

    .line 3587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 3589
    :cond_0
    return-void
.end method

.method private clearCurrentMediaNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2549
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    .line 2550
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 2556
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2558
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    .line 2559
    return-void
.end method

.method private dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;
    .param p3, "afterKeyguardGone"    # Z

    .prologue
    .line 3987
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3988
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 3993
    :goto_0
    return-void

    .line 3991
    :cond_0
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    goto :goto_0
.end method

.method private dismissVolumeDialog()V
    .locals 1

    .prologue
    .line 3546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v0, :cond_0

    .line 3547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeComponent;->dismissNow()V

    .line 3549
    :cond_0
    return-void
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "id"    # I

    .prologue
    .line 4424
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_0

    return-void

    .line 4425
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4426
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/DemoMode;

    if-eqz v1, :cond_1

    .line 4427
    check-cast v0, Lcom/android/systemui/DemoMode;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4429
    :cond_1
    return-void
.end method

.method static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "var"    # Ljava/lang/String;
    .param p2, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 3763
    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3764
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3765
    return-void
.end method

.method private finishBarAnimations()V
    .locals 1

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 3514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3516
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_1

    .line 3517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->finishBarAnimations()V

    .line 3519
    :cond_1
    return-void
.end method

.method private getCameraSourceString(I)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 5594
    const/4 v0, 0x0

    .line 5596
    .local v0, "sourceStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 5608
    .end local v0    # "sourceStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 5598
    .restart local v0    # "sourceStr":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "wiggle_gesture"

    .local v0, "sourceStr":Ljava/lang/String;
    goto :goto_0

    .line 5601
    .local v0, "sourceStr":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "power_double_tap"

    .local v0, "sourceStr":Ljava/lang/String;
    goto :goto_0

    .line 5604
    .local v0, "sourceStr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "snap_power_tap"

    .local v0, "sourceStr":Ljava/lang/String;
    goto :goto_0

    .line 5596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getLoggingFingerprint(IZZZZZ)I
    .locals 4
    .param p0, "statusBarState"    # I
    .param p1, "keyguardShowing"    # Z
    .param p2, "keyguardOccluded"    # Z
    .param p3, "bouncerShowing"    # Z
    .param p4, "secure"    # Z
    .param p5, "currentlyInsecure"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4220
    and-int/lit16 v3, p0, 0xff

    .line 4221
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    shl-int/lit8 v2, v2, 0x8

    .line 4220
    or-int/2addr v3, v2

    .line 4222
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    shl-int/lit8 v2, v2, 0x9

    .line 4220
    or-int/2addr v3, v2

    .line 4223
    if-eqz p3, :cond_2

    move v2, v0

    :goto_2
    shl-int/lit8 v2, v2, 0xa

    .line 4220
    or-int/2addr v3, v2

    .line 4224
    if-eqz p4, :cond_3

    move v2, v0

    :goto_3
    shl-int/lit8 v2, v2, 0xb

    .line 4220
    or-int/2addr v2, v3

    .line 4225
    if-eqz p5, :cond_4

    :goto_4
    shl-int/lit8 v0, v0, 0xc

    .line 4220
    or-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    .line 4221
    goto :goto_0

    :cond_1
    move v2, v1

    .line 4222
    goto :goto_1

    :cond_2
    move v2, v1

    .line 4223
    goto :goto_2

    :cond_3
    move v2, v1

    .line 4224
    goto :goto_3

    :cond_4
    move v0, v1

    .line 4225
    goto :goto_4
.end method

.method private getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 2530
    if-eqz p1, :cond_0

    .line 2531
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 2532
    .local v0, "playbackState":Landroid/media/session/PlaybackState;
    if-eqz v0, :cond_0

    .line 2533
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    return v1

    .line 2536
    .end local v0    # "playbackState":Landroid/media/session/PlaybackState;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private getOneNavEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 825
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 826
    const-string/jumbo v2, "fps_onenav_enabled"

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 824
    invoke-static {v1, v2, v4, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 830
    .local v0, "isOneNavEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateOneNav(Z)V

    .line 835
    :cond_0
    return v0

    .line 824
    .end local v0    # "isOneNavEnabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isOneNavEnabled":Z
    goto :goto_0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 7743
    move-object v0, p0

    .line 7745
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 7750
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7752
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 7751
    const/4 v4, 0x4

    .line 7750
    invoke-virtual {p0, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7757
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    .line 7753
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private handleGroupSummaryRemoved(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2040
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2041
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_2

    .line 2042
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    .line 2041
    if-eqz v5, :cond_2

    .line 2043
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 2046
    return-void

    .line 2049
    :cond_0
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 2050
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2051
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 2052
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2053
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    .line 2051
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2058
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setKeepInParent(Z)V

    .line 2062
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoved()V

    goto :goto_1

    .line 2065
    .end local v1    # "i":I
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_2
    return-void
.end method

.method private handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 4283
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 4284
    return-void
.end method

.method private handleVisibleToUserChangedImpl(Z)V
    .locals 6
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 4108
    if-eqz p1, :cond_4

    .line 4109
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    .line 4111
    .local v3, "pinnedHeadsUp":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4112
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 4113
    .local v0, "clearNotificationEffects":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4114
    .local v2, "notificationLoad":I
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4115
    const/4 v2, 0x1

    .line 4117
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4, v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V

    .line 4124
    .end local v0    # "clearNotificationEffects":Z
    .end local v2    # "notificationLoad":I
    .end local v3    # "pinnedHeadsUp":Z
    :goto_1
    return-void

    .line 4112
    .restart local v3    # "pinnedHeadsUp":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "clearNotificationEffects":Z
    goto :goto_0

    .line 4111
    .end local v0    # "clearNotificationEffects":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "clearNotificationEffects":Z
    goto :goto_0

    .line 4119
    .end local v0    # "clearNotificationEffects":Z
    .end local v3    # "pinnedHeadsUp":Z
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4121
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private hasActiveClearableNotifications()Z
    .locals 4

    .prologue
    .line 2348
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 2349
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2350
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2351
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v3, :cond_1

    .line 2349
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2354
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2355
    const/4 v3, 0x1

    return v3

    .line 2358
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private inflateDismissView()V
    .locals 5

    .prologue
    .line 1587
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1588
    const v2, 0x1030128

    .line 1587
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1589
    .local v0, "themedContext":Landroid/view/ContextThemeWrapper;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1590
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v3, 0x7f0d0111

    const/4 v4, 0x0

    .line 1589
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/DismissView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    .line 1591
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$29;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$29;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/DismissView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 1598
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissView(Lcom/android/systemui/statusbar/DismissView;)V

    .line 1599
    return-void
.end method

.method private inflateEmptyShadeView()V
    .locals 4

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1581
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v2, 0x7f0d010f

    const/4 v3, 0x0

    .line 1580
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    .line 1583
    return-void
.end method

.method private inflateShelf()V
    .locals 4

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1496
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v2, 0x7f0d0113

    const/4 v3, 0x0

    .line 1495
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1494
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 1498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 1499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setStatusBarState(I)V

    .line 1501
    return-void
.end method

.method private inflateSignalClusters()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->reinflateSignalCluster(Landroid/view/View;)Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1550
    return-void
.end method

.method private instantCollapseNotificationPanel()V
    .locals 1

    .prologue
    .line 4907
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantCollapse()V

    .line 4908
    return-void
.end method

.method private instantExpandNotificationsPanel()V
    .locals 2

    .prologue
    .line 4902
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    .line 4903
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 4904
    return-void
.end method

.method private isAnyProfilePublicMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5180
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5181
    const/4 v1, 0x1

    return v1

    .line 5179
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5184
    :cond_1
    return v2
.end method

.method private isOneNavEnabled()Z
    .locals 1

    .prologue
    .line 1468
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOneNavEnabled:Z

    return v0
.end method

.method private isPlaybackActive(I)Z
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2540
    if-eq p1, v2, :cond_0

    .line 2541
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 2542
    if-eqz p1, :cond_0

    .line 2543
    return v2

    .line 2545
    :cond_0
    return v1
.end method

.method public static isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_284603(Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "saveImportance"    # Ljava/lang/Runnable;

    .prologue
    .line 6702
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6703
    const/4 v0, 0x1

    return v0
.end method

.method private logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4152
    .local p1, "newlyVisible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    .local p2, "noLongerVisible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4153
    return-void

    .line 4156
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-interface {p1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 4158
    .local v3, "newlyVisibleAr":[Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-interface {p2, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 4160
    .local v5, "noLongerVisibleAr":[Lcom/android/internal/statusbar/NotificationVisibility;
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6, v3, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4165
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4166
    .local v0, "N":I
    if-lez v0, :cond_2

    .line 4167
    new-array v4, v0, [Ljava/lang/String;

    .line 4168
    .local v4, "newlyVisibleKeyAr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 4169
    aget-object v6, v3, v2

    iget-object v6, v6, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    aput-object v6, v4, v2

    .line 4168
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4172
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNotificationsShown([Ljava/lang/String;)V

    .line 4174
    .end local v2    # "i":I
    .end local v4    # "newlyVisibleKeyAr":[Ljava/lang/String;
    :cond_2
    return-void

    .line 4161
    .end local v0    # "N":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private logStateToEventlog()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 4183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 4184
    .local v1, "isShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    .line 4185
    .local v2, "isOccluded":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    .line 4186
    .local v3, "isBouncerShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v4

    .line 4187
    .local v4, "isSecure":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v5

    .line 4188
    .local v5, "canSkipBouncer":Z
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLoggingFingerprint(IZZZZZ)I

    move-result v12

    .line 4194
    .local v12, "stateFingerprint":I
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    if-eq v12, v0, :cond_1

    .line 4195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-nez v0, :cond_0

    .line 4196
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v13}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 4198
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 4199
    if-eqz v3, :cond_2

    const/16 v0, 0xc5

    .line 4198
    :goto_0
    invoke-virtual {v7, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 4200
    if-eqz v1, :cond_3

    move v0, v11

    .line 4198
    :goto_1
    invoke-virtual {v7, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 4201
    if-eqz v4, :cond_4

    move v0, v11

    .line 4198
    :goto_2
    invoke-virtual {v7, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4202
    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    .line 4203
    if-eqz v1, :cond_5

    move v7, v11

    .line 4204
    :goto_3
    if-eqz v2, :cond_6

    move v8, v11

    .line 4205
    :goto_4
    if-eqz v3, :cond_7

    move v9, v11

    .line 4206
    :goto_5
    if-eqz v4, :cond_8

    move v10, v11

    .line 4207
    :goto_6
    if-eqz v5, :cond_9

    .line 4202
    :goto_7
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/EventLogTags;->writeSysuiStatusBarState(IIIIII)V

    .line 4208
    iput v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    .line 4210
    :cond_1
    return-void

    .line 4199
    :cond_2
    const/16 v0, 0xc4

    goto :goto_0

    .line 4200
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    move v0, v13

    .line 4201
    goto :goto_2

    :cond_5
    move v7, v13

    .line 4203
    goto :goto_3

    :cond_6
    move v8, v13

    .line 4204
    goto :goto_4

    :cond_7
    move v9, v13

    .line 4205
    goto :goto_5

    :cond_8
    move v10, v13

    .line 4206
    goto :goto_6

    :cond_9
    move v11, v13

    .line 4207
    goto :goto_7
.end method

.method private needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 8
    .param p1, "ent"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v6, 0x0

    .line 2219
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 2221
    .local v5, "userId":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v7

    xor-int/lit8 v0, v7, 0x1

    .line 2222
    .local v0, "currentUserWantsRedaction":Z
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v7

    xor-int/lit8 v1, v7, 0x1

    .line 2223
    .local v1, "notiUserWantsRedaction":Z
    if-nez v0, :cond_0

    move v3, v1

    .line 2226
    :goto_0
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->visibility:I

    if-nez v7, :cond_1

    const/4 v2, 0x1

    .line 2227
    .local v2, "notificationRequestsRedaction":Z
    :goto_1
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v4

    .line 2229
    .local v4, "userForcesRedaction":Z
    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    :goto_2
    return v3

    .line 2223
    .end local v2    # "notificationRequestsRedaction":Z
    .end local v4    # "userForcesRedaction":Z
    :cond_0
    const/4 v3, 0x1

    .local v3, "redactedLockscreen":Z
    goto :goto_0

    .line 2226
    .end local v3    # "redactedLockscreen":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "notificationRequestsRedaction":Z
    goto :goto_1

    .line 2229
    .restart local v4    # "userForcesRedaction":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v6

    goto :goto_2
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 4
    .param p1, "vis"    # I

    .prologue
    .line 3614
    :try_start_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDispatchedSystemUiVisibility:I

    if-eq v1, p1, :cond_0

    .line 3615
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V

    .line 3616
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDispatchedSystemUiVisibility:I

    .line 3618
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3619
    const-string/jumbo v2, "status_bar_visibility"

    .line 3620
    const/4 v3, -0x2

    .line 3618
    invoke-static {v1, v2, p1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3625
    :cond_0
    :goto_0
    return-void

    .line 3623
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private onLaunchTransitionFadingEnded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4472
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 4473
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runLaunchTransitionEndRunnable()V

    .line 4474
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    .line 4475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->forceHideScrims(Z)V

    .line 4476
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 4477
    return-void
.end method

.method private onLaunchTransitionTimeout()V
    .locals 2

    .prologue
    .line 4582
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "Launch transition: Timeout!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4584
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 4588
    return-void
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2334
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1679
    .local p1, "hideAnimatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBar$31;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$31;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1687
    .local v6, "animationFinishAction":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 1691
    const/16 v10, 0xa

    .line 1692
    .local v10, "rowDelayDecrement":I
    const/16 v7, 0x8c

    .line 1693
    .local v7, "currentDelay":I
    const/16 v3, 0xb4

    .line 1694
    .local v3, "totalDelay":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1696
    .local v9, "numItems":I
    if-nez v9, :cond_0

    .line 1697
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 1700
    :cond_0
    add-int/lit8 v8, v9, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_2

    .line 1701
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1702
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 1703
    .local v2, "endRunnable":Ljava/lang/Runnable;
    if-nez v8, :cond_1

    .line 1704
    move-object v2, v6

    .line 1706
    .end local v2    # "endRunnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const-wide/16 v4, 0x104

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    .line 1707
    add-int/lit8 v0, v7, -0xa

    const/16 v4, 0x32

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1708
    add-int/2addr v3, v7

    .line 1700
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1710
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private processForRemoteInput(Landroid/app/Notification;)V
    .locals 13
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v10, 0x0

    .line 7134
    sget-boolean v9, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_REMOTE_INPUT:Z

    if-nez v9, :cond_0

    return-void

    .line 7136
    :cond_0
    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v9, :cond_6

    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v11, "android.wearable.EXTENSIONS"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 7137
    iget-object v9, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v9, :cond_1

    iget-object v9, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v9, v9

    if-nez v9, :cond_6

    .line 7138
    :cond_1
    const/4 v7, 0x0

    .line 7139
    .local v7, "viableAction":Landroid/app/Notification$Action;
    new-instance v8, Landroid/app/Notification$WearableExtender;

    invoke-direct {v8, p1}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 7141
    .local v8, "we":Landroid/app/Notification$WearableExtender;
    invoke-virtual {v8}, Landroid/app/Notification$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v1

    .line 7142
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 7144
    .local v3, "numActions":I
    const/4 v2, 0x0

    .end local v7    # "viableAction":Landroid/app/Notification$Action;
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 7145
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    .line 7146
    .local v0, "action":Landroid/app/Notification$Action;
    if-nez v0, :cond_3

    .line 7144
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7149
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 7150
    .local v5, "remoteInputs":[Landroid/app/RemoteInput;
    if-eqz v5, :cond_2

    .line 7153
    array-length v11, v5

    move v9, v10

    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v6, v5, v9

    .line 7154
    .local v6, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 7155
    move-object v7, v0

    .line 7159
    .end local v6    # "ri":Landroid/app/RemoteInput;
    :cond_4
    if-eqz v7, :cond_2

    .line 7164
    .end local v0    # "action":Landroid/app/Notification$Action;
    .end local v5    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_5
    if-eqz v7, :cond_6

    .line 7165
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v9, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 7166
    .local v4, "rebuilder":Landroid/app/Notification$Builder;
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/app/Notification$Action;

    aput-object v7, v9, v10

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 7167
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 7170
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v2    # "i":I
    .end local v3    # "numActions":I
    .end local v4    # "rebuilder":Landroid/app/Notification$Builder;
    .end local v8    # "we":Landroid/app/Notification$WearableExtender;
    :cond_6
    return-void

    .line 7153
    .restart local v0    # "action":Landroid/app/Notification$Action;
    .restart local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .restart local v2    # "i":I
    .restart local v3    # "numActions":I
    .restart local v5    # "remoteInputs":[Landroid/app/RemoteInput;
    .restart local v6    # "ri":Landroid/app/RemoteInput;
    .restart local v8    # "we":Landroid/app/Notification$WearableExtender;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private recycleAllVisibilityObjects(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 773
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 774
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 777
    return-void
.end method

.method public static reinflateSignalCluster(Landroid/view/View;)Lcom/android/systemui/statusbar/SignalClusterView;
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1553
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1555
    .local v0, "context":Landroid/content/Context;
    const v7, 0x7f0a027d

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1556
    .local v5, "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    if-eqz v5, :cond_1

    .line 1557
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1558
    .local v4, "parent":Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    move-object v6, v4

    .line 1559
    check-cast v6, Landroid/view/ViewGroup;

    .line 1560
    .local v6, "viewParent":Landroid/view/ViewGroup;
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1561
    .local v1, "index":I
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1562
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1563
    const v8, 0x7f0d010a

    .line 1562
    invoke-virtual {v7, v8, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1565
    .local v3, "newCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1567
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1568
    const v8, 0x7f070297

    .line 1567
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1566
    invoke-virtual {v2, v7, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 1570
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1571
    invoke-virtual {v6, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1572
    return-object v3

    .line 1574
    .end local v1    # "index":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "newCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v6    # "viewParent":Landroid/view/ViewGroup;
    :cond_0
    return-object v5

    .line 1576
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_1
    return-object v8
.end method

.method private releaseGestureWakeLock()V
    .locals 1

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4652
    :cond_0
    return-void
.end method

.method private removeNotificationChildren()V
    .locals 12

    .prologue
    .line 2287
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2288
    .local v8, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 2289
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2290
    .local v9, "view":Landroid/view/View;
    instance-of v10, v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v10, :cond_1

    .line 2288
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v9

    .line 2295
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2296
    .local v5, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 2297
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2299
    .local v4, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-eqz v2, :cond_0

    .line 2300
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2301
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "childRow$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2302
    .local v0, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v4, :cond_3

    .line 2303
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 2302
    if-eqz v10, :cond_2

    .line 2304
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 2302
    if-eqz v10, :cond_2

    .line 2305
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2308
    .end local v0    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_4
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "remove$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2309
    .local v6, "remove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 2310
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v10

    if-nez v10, :cond_5

    .line 2313
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 2314
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v11

    .line 2313
    invoke-virtual {v10, v6, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_2

    .line 2319
    .end local v1    # "childRow$iterator":Ljava/util/Iterator;
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v4    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v5    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "remove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "remove$iterator":Ljava/util/Iterator;
    .end local v9    # "view":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private removeRemoteInputEntriesKeptUntilCollapsed()V
    .locals 4

    .prologue
    .line 3025
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3026
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3027
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V

    .line 3028
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3025
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3030
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 3031
    return-void
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 3552
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    .line 3553
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->scheduleAutohide()V

    .line 3554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3556
    :cond_0
    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4591
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 4592
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4596
    .local v0, "r":Ljava/lang/Runnable;
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4597
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4599
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private runPostCollapseRunnables()V
    .locals 4

    .prologue
    .line 3237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3238
    .local v0, "clonedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3239
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3240
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 3240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3243
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    .line 3244
    return-void
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .prologue
    .line 2562
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2563
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2564
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    return v0
.end method

.method private saveAndCloseNotificationMenu(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 11
    .param p1, "info"    # Lcom/android/systemui/statusbar/NotificationInfo;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p4, "done"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 6750
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 6751
    new-array v10, v0, [I

    .line 6752
    .local v10, "rowLocation":[I
    new-array v9, v0, [I

    .line 6753
    .local v9, "doneLocation":[I
    invoke-virtual {p2, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 6754
    invoke-virtual {p4, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6756
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 6757
    .local v7, "centerX":I
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 6758
    .local v8, "centerY":I
    aget v0, v9, v1

    aget v2, v10, v1

    sub-int/2addr v0, v2

    add-int v4, v0, v7

    .line 6759
    .local v4, "x":I
    aget v0, v9, v3

    aget v2, v10, v3

    sub-int/2addr v0, v2

    add-int v5, v0, v8

    .local v5, "y":I
    move-object v0, p0

    move v2, v1

    move v6, v3

    .line 6760
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    .line 6762
    return-void
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 3570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->cancelAutohide()V

    .line 3571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3572
    return-void
.end method

.method private shouldSuppressFullScreenIntent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1911
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInVrMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    const/4 v0, 0x1

    return v0

    .line 1915
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressScreenOn(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressScreenOff(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showBouncerIfKeyguard()V
    .locals 2

    .prologue
    .line 4889
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4890
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer()V

    .line 4892
    :cond_1
    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;

    .prologue
    .line 6604
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6605
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6606
    const-string/jumbo v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6607
    if-eqz p3, :cond_0

    .line 6608
    const-string/jumbo v1, ":settings:fragment_args_key"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6610
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 6611
    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I

    .prologue
    .line 6614
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$45;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$45;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;I)V

    .line 6629
    const/4 v1, 0x0

    .line 6614
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 6630
    return-void
.end method

.method private startNotificationLogging()V
    .locals 2

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4147
    return-void
.end method

.method private stopNotificationLogging()V
    .locals 2

    .prologue
    .line 4129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 4131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 4130
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    .line 4134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4136
    return-void
.end method

.method private suspendAutohide()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3559
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3560
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3561
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/high16 v2, 0xc000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohideSuspended:Z

    .line 3562
    return-void
.end method

.method private updateClearAll()V
    .locals 3

    .prologue
    .line 2339
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveClearableNotifications()Z

    move-result v0

    .line 2341
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateDismissView(Z)V

    .line 2342
    return-void

    .line 2339
    :cond_0
    const/4 v0, 0x0

    .local v0, "showDismissView":Z
    goto :goto_0
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .prologue
    .line 6501
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 6502
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 6503
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    .line 6504
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 6505
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6501
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v1    # "user$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    .line 6509
    return-void
.end method

.method private updateDozing()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5628
    const-string/jumbo v0, "StatusBar#updateDozing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5630
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    .line 5635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5637
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    .line 5642
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Looper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$9;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 5648
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 5649
    return-void

    .line 5631
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    .line 5632
    const/4 v3, 0x2

    .line 5631
    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 5645
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    goto :goto_1
.end method

.method private updateDozingState()V
    .locals 4

    .prologue
    .line 4799
    const-string/jumbo v1, "StatusBar#updateDozingState"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4800
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setDozing(Z)V

    .line 4801
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z

    move-result v0

    .line 4802
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(ZZ)V

    .line 4803
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZLandroid/graphics/PointF;)V

    .line 4804
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozing(Z)V

    .line 4805
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDozing(Z)V

    .line 4806
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDark(ZZ)V

    .line 4807
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 4808
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozing(ZZ)V

    .line 4809
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateRowStates()V

    .line 4810
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 4811
    return-void

    .line 4801
    :cond_0
    const/4 v0, 0x0

    .local v0, "animate":Z
    goto :goto_0
.end method

.method private updateEmptyShadeView()V
    .locals 3

    .prologue
    .line 2363
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2364
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2365
    .local v0, "showEmptyShadeView":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showEmptyShadeView(Z)V

    .line 2366
    return-void

    .line 2364
    .end local v0    # "showEmptyShadeView":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "showEmptyShadeView":Z
    goto :goto_0

    .line 2363
    .end local v0    # "showEmptyShadeView":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "showEmptyShadeView":Z
    goto :goto_0
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 7562
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 7563
    const-string/jumbo v7, "lock_screen_show_notifications"

    .line 7565
    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 7564
    const/4 v9, 0x1

    .line 7562
    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    .line 7566
    .local v4, "show":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 7567
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    const/4 v8, 0x0

    .line 7566
    invoke-virtual {v6, v8, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 7568
    .local v1, "dpmFlags":I
    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_1

    const/4 v0, 0x1

    .line 7571
    .local v0, "allowedByDpm":Z
    :goto_1
    if-eqz v4, :cond_2

    .end local v0    # "allowedByDpm":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setShowLockscreenNotifications(Z)V

    .line 7573
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    if-eqz v6, :cond_6

    .line 7574
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 7575
    const-string/jumbo v7, "lock_screen_allow_remote_input"

    .line 7577
    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 7574
    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    .line 7579
    .local v2, "remoteInput":Z
    :goto_3
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_4

    const/4 v3, 0x1

    .line 7581
    .local v3, "remoteInputDpm":Z
    :goto_4
    if-eqz v2, :cond_5

    .end local v3    # "remoteInputDpm":Z
    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockScreenAllowRemoteInput(Z)V

    .line 7585
    .end local v2    # "remoteInput":Z
    :goto_6
    return-void

    .line 7562
    .end local v1    # "dpmFlags":I
    .end local v4    # "show":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "show":Z
    goto :goto_0

    .line 7568
    .restart local v1    # "dpmFlags":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "allowedByDpm":Z
    goto :goto_1

    :cond_2
    move v0, v5

    .line 7571
    goto :goto_2

    .line 7574
    .end local v0    # "allowedByDpm":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "remoteInput":Z
    goto :goto_3

    .line 7579
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "remoteInputDpm":Z
    goto :goto_4

    :cond_5
    move v3, v5

    .line 7581
    goto :goto_5

    .line 7583
    .end local v2    # "remoteInput":Z
    .end local v3    # "remoteInputDpm":Z
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockScreenAllowRemoteInput(Z)V

    goto :goto_6
.end method

.method private updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "pmUser"    # Landroid/content/pm/PackageManager;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 7095
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v7

    invoke-virtual {p4, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    .line 7096
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v2

    .line 7097
    .local v2, "isLowPriority":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    .line 7098
    .local v3, "isUpdate":Z
    :goto_0
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v6

    .line 7099
    .local v6, "wasLowPriority":Z
    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsLowPriority(Z)V

    .line 7100
    if-eqz v3, :cond_1

    if-eq v6, v2, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p4, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLowPriorityStateUpdated(Z)V

    .line 7102
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    invoke-virtual {v7, p4, p3}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 7106
    :try_start_0
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 7107
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v7, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7111
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_2
    iget v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_3

    .line 7112
    iget v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_2

    const/4 v7, 0x1

    .line 7111
    :goto_3
    invoke-virtual {p4, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLegacy(Z)V

    .line 7113
    iget v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_4

    const/4 v7, 0x1

    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const v8, 0x7f0a0118

    invoke-virtual {p1, v8, v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setIconTag(ILjava/lang/Object;)V

    .line 7114
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :goto_5
    iput-boolean v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 7116
    iput-object p4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 7117
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 7119
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 7120
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v8

    .line 7119
    invoke-virtual {v7, p3, v8}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result v4

    .line 7121
    .local v4, "useIncreasedCollapsedHeight":Z
    if-eqz v4, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    .line 7122
    :goto_6
    invoke-virtual {p4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUseIncreasedCollapsedHeight(Z)V

    .line 7123
    invoke-virtual {p4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUseIncreasedHeadsUpHeight(Z)V

    .line 7124
    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 7125
    return-void

    .line 7097
    .end local v3    # "isUpdate":Z
    .end local v4    # "useIncreasedCollapsedHeight":Z
    .end local v6    # "wasLowPriority":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isUpdate":Z
    goto :goto_0

    .line 7100
    .restart local v6    # "wasLowPriority":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 7108
    :catch_0
    move-exception v0

    .line 7109
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed looking up ApplicationInfo for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 7112
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 7111
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 7113
    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .line 7114
    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    .line 7121
    .restart local v4    # "useIncreasedCollapsedHeight":Z
    :cond_6
    const/4 v5, 0x0

    .local v5, "useIncreasedHeadsUp":Z
    goto :goto_6
.end method

.method private updateNotificationShade()V
    .locals 24

    .prologue
    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    return-void

    .line 2095
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCollapsing()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 2096
    new-instance v22, Lcom/android/systemui/statusbar/phone/StatusBar$33;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$33;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 2102
    return-void

    .line 2105
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 2106
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2107
    .local v18, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2108
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_a

    .line 2109
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2110
    .local v7, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v22

    if-nez v22, :cond_2

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 2108
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2115
    :cond_3
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v19

    .line 2118
    .local v19, "userId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v5

    .line 2119
    .local v5, "devicePublic":Z
    if-nez v5, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v20

    .line 2120
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v10

    .line 2121
    .local v10, "needsRedaction":Z
    if-eqz v20, :cond_7

    move v14, v10

    .line 2122
    :goto_3
    if-eqz v5, :cond_8

    .line 2123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v22

    xor-int/lit8 v6, v22, 0x1

    .line 2124
    :goto_4
    if-eqz v14, :cond_4

    .line 2125
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 2127
    :cond_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(ZZ)V

    .line 2128
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v22, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v22, v0

    .line 2131
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v23

    .line 2130
    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v15

    .line 2133
    .local v15, "summary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2134
    .local v11, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-nez v11, :cond_5

    .line 2135
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2136
    .restart local v11    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    :cond_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2119
    .end local v10    # "needsRedaction":Z
    .end local v11    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v15    # "summary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6
    const/16 v20, 0x1

    .local v20, "userPublic":Z
    goto/16 :goto_2

    .line 2121
    .end local v20    # "userPublic":Z
    .restart local v10    # "needsRedaction":Z
    :cond_7
    const/4 v14, 0x0

    .local v14, "sensitive":Z
    goto/16 :goto_3

    .line 2122
    .end local v14    # "sensitive":Z
    :cond_8
    const/4 v6, 0x0

    .local v6, "deviceSensitive":Z
    goto :goto_4

    .line 2140
    .end local v6    # "deviceSensitive":Z
    :cond_9
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2145
    .end local v5    # "devicePublic":Z
    .end local v7    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v10    # "needsRedaction":Z
    .end local v19    # "userId":I
    :cond_a
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2146
    .local v17, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_c

    .line 2147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2148
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    instance-of v0, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 2149
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v4    # "child":Landroid/view/View;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2146
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2153
    :cond_c
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "remove$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2154
    .local v12, "remove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v22, v0

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildTransferInProgress(Z)V

    .line 2158
    :cond_d
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 2159
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeAllChildren()V

    .line 2161
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildTransferInProgress(Z)V

    goto :goto_6

    .line 2165
    .end local v12    # "remove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotificationChildren()V

    .line 2167
    const/4 v8, 0x0

    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_11

    .line 2168
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    .line 2169
    .local v21, "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    if-nez v22, :cond_10

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 2171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2167
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 2175
    .end local v21    # "v":Landroid/view/View;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNotificationChildrenAndSort()V

    .line 2180
    const/4 v9, 0x0

    .line 2181
    .local v9, "j":I
    const/4 v8, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_15

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2183
    .restart local v4    # "child":Landroid/view/View;
    instance-of v0, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v22, v0

    if-nez v22, :cond_12

    .line 2181
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 2188
    :cond_12
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2189
    .local v16, "targetChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, v16

    if-eq v4, v0, :cond_13

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2198
    :cond_13
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 2195
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    goto :goto_a

    .line 2202
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "targetChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onReorderingFinished()V

    .line 2204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    .line 2206
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateRowStates()V

    .line 2207
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateSpeedBumpIndex()V

    .line 2208
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateClearAll()V

    .line 2209
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateEmptyShadeView()V

    .line 2211
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V

    .line 2215
    return-void
.end method

.method private updateNotificationsOnDensityOrFontScaleChanged()V
    .locals 6

    .prologue
    .line 1535
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getAllNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 1536
    .local v0, "allNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1538
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_2

    .line 1539
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 1540
    .local v3, "exposedGuts":Z
    :goto_1
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onDensityOrFontScaleChanged()V

    .line 1541
    if-eqz v3, :cond_0

    .line 1542
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1543
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    goto :goto_0

    .line 1539
    .end local v3    # "exposedGuts":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "exposedGuts":Z
    goto :goto_1

    .line 1538
    .end local v3    # "exposedGuts":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "exposedGuts":Z
    goto :goto_1

    .line 1546
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v3    # "exposedGuts":Z
    :cond_3
    return-void
.end method

.method private updatePublicMode()V
    .locals 7

    .prologue
    .line 4738
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    .line 4739
    .local v3, "showingKeyguard":Z
    if-eqz v3, :cond_1

    .line 4740
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure(I)Z

    move-result v0

    .line 4745
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 4746
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    .line 4747
    .local v4, "userId":I
    move v2, v0

    .line 4748
    .local v2, "isProfilePublic":Z
    if-nez v0, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    if-eq v4, v5, :cond_0

    .line 4753
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4754
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure(I)Z

    move-result v5

    .line 4753
    if-eqz v5, :cond_0

    .line 4755
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5, v4}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    .line 4758
    :cond_0
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockscreenPublicMode(ZI)V

    .line 4745
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4739
    .end local v1    # "i":I
    .end local v2    # "isProfilePublic":Z
    .end local v4    # "userId":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "devicePublic":Z
    goto :goto_0

    .line 4760
    .end local v0    # "devicePublic":Z
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method private updateQsExpansionEnabled()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2238
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2239
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-nez v2, :cond_2

    .line 2241
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 2242
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    xor-int/lit8 v2, v2, 0x1

    .line 2238
    if-eqz v2, :cond_1

    .line 2243
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2238
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 2244
    return-void

    .line 2240
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 2238
    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method private updateReportRejectedTouchVisibility()V
    .locals 3

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2750
    return-void

    .line 2752
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isReportingEnabled()Z

    move-result v0

    .line 2752
    if-eqz v0, :cond_1

    .line 2753
    const/4 v0, 0x0

    .line 2752
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2754
    return-void

    .line 2753
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateSpeedBumpIndex()V
    .locals 9

    .prologue
    .line 2369
    const/4 v5, 0x0

    .line 2370
    .local v5, "speedBumpIndex":I
    const/4 v1, 0x0

    .line 2371
    .local v1, "currentIndex":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2372
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2373
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2374
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    instance-of v7, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 2372
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v6

    .line 2377
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2378
    .local v4, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v1, v1, 0x1

    .line 2379
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2380
    move v5, v1

    goto :goto_1

    .line 2383
    .end local v4    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    if-ne v5, v0, :cond_3

    const/4 v3, 0x1

    .line 2384
    .local v3, "noAmbient":Z
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v5, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex(IZ)V

    .line 2385
    return-void

    .line 2383
    .end local v3    # "noAmbient":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "noAmbient":Z
    goto :goto_2
.end method

.method private userAutohide()V
    .locals 4

    .prologue
    .line 3592
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->cancelAutohide()V

    .line 3593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3594
    return-void
.end method

.method private vibrateForCameraGesture()V
    .locals 3

    .prologue
    .line 5391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 5392
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 3645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3646
    const-string/jumbo v1, ") "

    .line 3645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3646
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3646
    const-string/jumbo v1, "x"

    .line 3645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3646
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3646
    const-string/jumbo v1, "]"

    .line 3645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_StatusBar-mthref-0()V
    .locals 0

    .prologue
    .line 3894
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 7
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1815
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1818
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1819
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    .line 1820
    .local v3, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    .line 1821
    .local v1, "isHeadsUped":Z
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 1822
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldSuppressFullScreenIntent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1858
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->abortExistingInflation(Ljava/lang/String;)V

    .line 1860
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 1861
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v5

    .line 1860
    invoke-interface {v4, p1, v5}, Lcom/android/systemui/ForegroundServiceController;->addNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 1863
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    return-void

    .line 1826
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v4

    .line 1827
    const/4 v5, 0x4

    .line 1826
    if-lt v4, v5, :cond_0

    .line 1835
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 1839
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1840
    const-string/jumbo v4, "StatusBar"

    const-string/jumbo v5, "To show one activity associated with a headsup, the bouncer has to be closed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 1849
    :cond_2
    const v4, 0x8ca2

    :try_start_0
    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1851
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V

    .line 1852
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;->notifyFullScreenIntentLaunched()V

    .line 1853
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v5, "note_fullscreen"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1854
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 7470
    if-nez p1, :cond_0

    .line 7471
    return-void

    .line 7474
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 7475
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 7476
    return-void
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 4484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4485
    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;)V

    .line 2323
    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 3167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    .line 3168
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 3197
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3196
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    .line 3198
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 3201
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    .line 3202
    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "delayed"    # Z

    .prologue
    .line 3205
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    .line 3206
    return-void
.end method

.method public animateCollapsePanels(IZZF)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "delayed"    # Z
    .param p4, "speedUpFactor"    # F

    .prologue
    const/16 v2, 0x3fc

    const/4 v1, 0x0

    .line 3210
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    .line 3211
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 3212
    return-void

    .line 3220
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 3221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 3223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 3227
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 3231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 3232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    .line 3234
    :cond_2
    return-void
.end method

.method public animateCollapseQuickSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3278
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    .line 3281
    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 2

    .prologue
    .line 3249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3250
    return-void

    .line 3253
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 3256
    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 1
    .param p1, "subPanel"    # Ljava/lang/String;

    .prologue
    .line 3261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3262
    return-void

    .line 3266
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    return-void

    .line 3269
    :cond_1
    if-eqz p1, :cond_2

    .line 3270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->openDetails(Ljava/lang/String;)V

    .line 3272
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithQs()V

    .line 3275
    return-void
.end method

.method public animateKeyguardUnoccluding()V
    .locals 4

    .prologue
    .line 4563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateKeyguardUnoccluding(J)V

    .line 4564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpandedFraction(F)V

    .line 4566
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_0

    .line 4567
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    .line 4569
    :cond_0
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 2

    .prologue
    .line 5444
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 5445
    return-void
.end method

.method public appTransitionFinished()V
    .locals 2

    .prologue
    .line 5449
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 5450
    return-void
.end method

.method awakenDreams()V
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->awakenDreamsAsync()V

    .line 1807
    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .locals 4

    .prologue
    .line 4655
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 6885
    const/16 v0, 0x3ff

    .line 6886
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 6887
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 6888
    return-void
.end method

.method checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "windowState"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 3503
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v1

    .line 3504
    .local v1, "powerSave":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v2, :cond_1

    .line 3505
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    xor-int/lit8 v0, v1, 0x1

    .line 3506
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v2

    if-nez v2, :cond_0

    .line 3507
    const/4 p1, 0x5

    .line 3509
    :cond_0
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3510
    return-void

    .line 3504
    :cond_1
    const/4 v0, 0x0

    .local v0, "anim":Z
    goto :goto_0
.end method

.method checkBarModes()V
    .locals 3

    .prologue
    .line 3490
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 3491
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 3492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    .line 3491
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3493
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 3494
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    .line 3495
    return-void
.end method

.method checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 3575
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3576
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3577
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 3578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3575
    if-eqz v0, :cond_0

    .line 3579
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAutohide()V

    .line 3581
    :cond_0
    return-void
.end method

.method public clearAllNotifications()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1615
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v6

    .line 1617
    .local v6, "numChildren":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    .local v9, "viewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1619
    .local v10, "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_7

    .line 1620
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1621
    .local v0, "child":Landroid/view/View;
    instance-of v11, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v11, :cond_6

    move-object v8, v0

    .line 1622
    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1623
    .local v8, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v7, 0x0

    .line 1624
    .local v7, "parentVisible":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    .line 1625
    .local v4, "hasClipBounds":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1626
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    .line 1628
    if-eqz v4, :cond_0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v11, :cond_1

    .line 1629
    :cond_0
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    const/4 v7, 0x1

    .line 1636
    :cond_1
    :goto_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    .line 1637
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-eqz v3, :cond_6

    .line 1638
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "childRow$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1639
    .local v1, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    if-eqz v7, :cond_2

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1641
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v11

    .line 1640
    if-eqz v11, :cond_2

    .line 1642
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    .line 1643
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    .line 1644
    if-eqz v4, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v11, :cond_2

    .line 1645
    :cond_3
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1632
    .end local v1    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "childRow$iterator":Ljava/util/Iterator;
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    .line 1633
    if-eqz v4, :cond_5

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v11, :cond_1

    .line 1634
    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    .line 1619
    .end local v4    # "hasClipBounds":Z
    .end local v7    # "parentVisible":Z
    .end local v8    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1652
    .end local v0    # "child":Landroid/view/View;
    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1653
    invoke-virtual {p0, v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    .line 1654
    return-void

    .line 1657
    :cond_8
    new-instance v11, Lcom/android/systemui/statusbar/phone/StatusBar$30;

    invoke-direct {v11, p0, v10}, Lcom/android/systemui/statusbar/phone/StatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 1674
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->performDismissAllAnimations(Ljava/util/ArrayList;)V

    .line 1676
    return-void
.end method

.method public clearNotificationEffects()V
    .locals 2

    .prologue
    .line 7423
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7427
    :goto_0
    return-void

    .line 7424
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->clickTile(Landroid/content/ComponentName;)V

    .line 2331
    return-void
.end method

.method public closeAndSaveGuts(ZZZIIZ)V
    .locals 6
    .param p1, "removeLeavebehinds"    # Z
    .param p2, "force"    # Z
    .param p3, "removeControls"    # Z
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "resetMenu"    # Z

    .prologue
    .line 6863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 6864
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(ZZIIZ)V

    .line 6866
    :cond_0
    if-eqz p6, :cond_1

    .line 6867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    .line 6869
    :cond_1
    return-void
.end method

.method protected computeBarMode(IIIII)I
    .locals 3
    .param p1, "oldVis"    # I
    .param p2, "newVis"    # I
    .param p3, "transientFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "transparentFlag"    # I

    .prologue
    .line 3471
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(IIII)I

    move-result v1

    .line 3472
    .local v1, "oldMode":I
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(IIII)I

    move-result v0

    .line 3473
    .local v0, "newMode":I
    if-ne v1, v0, :cond_0

    .line 3474
    const/4 v2, -0x1

    return v2

    .line 3476
    :cond_0
    return v0
.end method

.method protected computeStatusBarMode(II)I
    .locals 6
    .param p1, "oldVal"    # I
    .param p2, "newVal"    # I

    .prologue
    .line 3461
    const/high16 v3, 0x4000000

    .line 3462
    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0x8

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 3461
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeBarMode(IIIII)I

    move-result v0

    return v0
.end method

.method public createAndAddWindows()V
    .locals 0

    .prologue
    .line 3768
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->addStatusBarWindow()V

    .line 3769
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;
    .locals 1

    .prologue
    .line 2839
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method protected createNavigationBar()V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$4;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    .line 1387
    return-void
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .prologue
    .line 7461
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 7462
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/LeakDetector;->trackInstance(Ljava/lang/Object;)V

    .line 7463
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->createIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 7465
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V

    .line 7466
    return-object v0
.end method

.method protected createUserSwitcher()V
    .locals 5

    .prologue
    .line 1602
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a014f

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1604
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1602
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 1605
    return-void
.end method

.method public disable(IIZ)V
    .locals 12
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    const/high16 v11, 0x40000

    const/high16 v10, 0x10000

    const/16 v7, 0x21

    const/16 v8, 0x20

    const/4 v6, 0x0

    .line 2761
    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    const/4 v9, 0x2

    if-eq v5, v9, :cond_5

    const/4 v5, 0x1

    :goto_0
    and-int/2addr p3, v5

    .line 2762
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabledUnmodified1:I

    .line 2763
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabledUnmodified2:I

    .line 2764
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 2765
    .local v3, "old1":I
    xor-int v0, p1, v3

    .line 2766
    .local v0, "diff1":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 2768
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 2769
    .local v4, "old2":I
    xor-int v1, p2, v4

    .line 2770
    .local v1, "diff2":I
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 2779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2780
    .local v2, "flagdbg":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "disable<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    and-int v5, p1, v10

    if-eqz v5, :cond_6

    const/16 v5, 0x45

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2782
    and-int v5, v0, v10

    if-eqz v5, :cond_7

    move v5, v7

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2783
    const/high16 v5, 0x20000

    and-int/2addr v5, p1

    if-eqz v5, :cond_8

    const/16 v5, 0x49

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2784
    const/high16 v5, 0x20000

    and-int/2addr v5, v0

    if-eqz v5, :cond_9

    move v5, v7

    :goto_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2785
    and-int v5, p1, v11

    if-eqz v5, :cond_a

    const/16 v5, 0x41

    :goto_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2786
    and-int v5, v0, v11

    if-eqz v5, :cond_b

    move v5, v7

    :goto_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2787
    const/high16 v5, 0x100000

    and-int/2addr v5, p1

    if-eqz v5, :cond_c

    const/16 v5, 0x53

    :goto_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2788
    const/high16 v5, 0x100000

    and-int/2addr v5, v0

    if-eqz v5, :cond_d

    move v5, v7

    :goto_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2789
    const/high16 v5, 0x400000

    and-int/2addr v5, p1

    if-eqz v5, :cond_e

    const/16 v5, 0x42

    :goto_9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2790
    const/high16 v5, 0x400000

    and-int/2addr v5, v0

    if-eqz v5, :cond_f

    move v5, v7

    :goto_a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2791
    const/high16 v5, 0x200000

    and-int/2addr v5, p1

    if-eqz v5, :cond_10

    const/16 v5, 0x48

    :goto_b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2792
    const/high16 v5, 0x200000

    and-int/2addr v5, v0

    if-eqz v5, :cond_11

    move v5, v7

    :goto_c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2793
    const/high16 v5, 0x1000000

    and-int/2addr v5, p1

    if-eqz v5, :cond_12

    const/16 v5, 0x52

    :goto_d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2794
    const/high16 v5, 0x1000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_13

    move v5, v7

    :goto_e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2795
    const/high16 v5, 0x800000

    and-int/2addr v5, p1

    if-eqz v5, :cond_14

    const/16 v5, 0x43

    :goto_f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2796
    const/high16 v5, 0x800000

    and-int/2addr v5, v0

    if-eqz v5, :cond_15

    move v5, v7

    :goto_10
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2797
    const/high16 v5, 0x2000000

    and-int/2addr v5, p1

    if-eqz v5, :cond_16

    const/16 v5, 0x53

    :goto_11
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2798
    const/high16 v5, 0x2000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_17

    move v5, v7

    :goto_12
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2799
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_18

    const/16 v5, 0x51

    :goto_13
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2800
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_19

    :goto_14
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2801
    const/16 v5, 0x3e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2802
    const-string/jumbo v5, "StatusBar"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    and-int v5, v0, v10

    if-eqz v5, :cond_0

    .line 2805
    and-int v5, p1, v10

    if-eqz v5, :cond_0

    .line 2806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 2810
    :cond_0
    const/high16 v5, 0x1000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    .line 2811
    const/high16 v5, 0x1000000

    and-int/2addr v5, p1

    if-eqz v5, :cond_1

    .line 2813
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v7, 0x3fc

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 2814
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v7, 0x3fc

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 2818
    :cond_1
    and-int v5, v0, v11

    if-eqz v5, :cond_3

    .line 2820
    and-int v5, p1, v11

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    .line 2819
    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisableNotificationAlerts:Z

    .line 2821
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2824
    :cond_3
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_4

    .line 2825
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 2827
    :cond_4
    return-void

    .end local v0    # "diff1":I
    .end local v1    # "diff2":I
    .end local v2    # "flagdbg":Ljava/lang/StringBuilder;
    .end local v3    # "old1":I
    .end local v4    # "old2":I
    :cond_5
    move v5, v6

    .line 2761
    goto/16 :goto_0

    .line 2781
    .restart local v0    # "diff1":I
    .restart local v1    # "diff2":I
    .restart local v2    # "flagdbg":Ljava/lang/StringBuilder;
    .restart local v3    # "old1":I
    .restart local v4    # "old2":I
    :cond_6
    const/16 v5, 0x65

    goto/16 :goto_1

    :cond_7
    move v5, v8

    .line 2782
    goto/16 :goto_2

    .line 2783
    :cond_8
    const/16 v5, 0x69

    goto/16 :goto_3

    :cond_9
    move v5, v8

    .line 2784
    goto/16 :goto_4

    .line 2785
    :cond_a
    const/16 v5, 0x61

    goto/16 :goto_5

    :cond_b
    move v5, v8

    .line 2786
    goto/16 :goto_6

    .line 2787
    :cond_c
    const/16 v5, 0x73

    goto/16 :goto_7

    :cond_d
    move v5, v8

    .line 2788
    goto/16 :goto_8

    .line 2789
    :cond_e
    const/16 v5, 0x62

    goto/16 :goto_9

    :cond_f
    move v5, v8

    .line 2790
    goto/16 :goto_a

    .line 2791
    :cond_10
    const/16 v5, 0x68

    goto/16 :goto_b

    :cond_11
    move v5, v8

    .line 2792
    goto/16 :goto_c

    .line 2793
    :cond_12
    const/16 v5, 0x72

    goto/16 :goto_d

    :cond_13
    move v5, v8

    .line 2794
    goto/16 :goto_e

    .line 2795
    :cond_14
    const/16 v5, 0x63

    goto/16 :goto_f

    :cond_15
    move v5, v8

    .line 2796
    goto/16 :goto_10

    .line 2797
    :cond_16
    const/16 v5, 0x73

    goto/16 :goto_11

    :cond_17
    move v5, v8

    .line 2798
    goto/16 :goto_12

    .line 2799
    :cond_18
    const/16 v5, 0x71

    goto/16 :goto_13

    :cond_19
    move v7, v8

    .line 2800
    goto/16 :goto_14
.end method

.method protected dismissKeyboardShortcuts()V
    .locals 0

    .prologue
    .line 6916
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 6917
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 2

    .prologue
    .line 6892
    const/16 v0, 0x403

    .line 6893
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 6894
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 6895
    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 1
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 3982
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 3983
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4364
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_0

    .line 4365
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 4366
    const-string/jumbo v10, "sysui_demo_allowed"

    .line 4365
    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    .line 4368
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_2

    return-void

    :cond_1
    move v7, v9

    .line 4365
    goto :goto_0

    .line 4369
    :cond_2
    const-string/jumbo v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 4370
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    .line 4378
    :cond_3
    :goto_1
    const-string/jumbo v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string/jumbo v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 4379
    :goto_2
    if-nez v3, :cond_4

    const-string/jumbo v7, "volume"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v7, :cond_5

    .line 4380
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v7, p1, p2}, Lcom/android/systemui/volume/VolumeComponent;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4382
    :cond_5
    if-nez v3, :cond_6

    const-string/jumbo v7, "clock"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4383
    :cond_6
    const v7, 0x7f0a0083

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4385
    :cond_7
    if-nez v3, :cond_8

    const-string/jumbo v7, "battery"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4386
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v7, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4388
    :cond_9
    if-nez v3, :cond_a

    const-string/jumbo v7, "status"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4389
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4391
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v7, :cond_d

    if-nez v3, :cond_c

    const-string/jumbo v7, "network"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4392
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v7, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4394
    :cond_d
    if-nez v3, :cond_e

    const-string/jumbo v7, "notifications"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4395
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v7, :cond_15

    const/4 v4, 0x0

    .line 4397
    :goto_3
    if-eqz v4, :cond_f

    .line 4398
    const-string/jumbo v7, "visible"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4399
    .local v6, "visible":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v7, :cond_16

    const-string/jumbo v7, "false"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v5, 0x4

    .line 4400
    .local v5, "vis":I
    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4403
    .end local v5    # "vis":I
    .end local v6    # "visible":Ljava/lang/String;
    :cond_f
    const-string/jumbo v7, "bars"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 4404
    const-string/jumbo v7, "mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4405
    .local v2, "mode":Ljava/lang/String;
    const-string/jumbo v7, "opaque"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v1, 0x0

    .line 4411
    .local v1, "barMode":I
    :goto_5
    const/4 v7, -0x1

    if-eq v1, v7, :cond_11

    .line 4412
    const/4 v0, 0x1

    .line 4413
    .local v0, "animate":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v7, :cond_10

    .line 4414
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4416
    :cond_10
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v7, :cond_11

    .line 4417
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4421
    .end local v0    # "animate":Z
    .end local v1    # "barMode":I
    .end local v2    # "mode":Ljava/lang/String;
    :cond_11
    return-void

    .line 4371
    :cond_12
    const-string/jumbo v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 4372
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    .line 4373
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto/16 :goto_1

    .line 4374
    :cond_13
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-nez v7, :cond_3

    .line 4376
    const-string/jumbo v7, "enter"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 4378
    :cond_14
    const/4 v3, 0x1

    .local v3, "modeChange":Z
    goto/16 :goto_2

    .line 4396
    .end local v3    # "modeChange":Z
    :cond_15
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f0a01e4

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .local v4, "notifications":Landroid/view/View;
    goto :goto_3

    .line 4399
    .end local v4    # "notifications":Landroid/view/View;
    .restart local v6    # "visible":Ljava/lang/String;
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "vis":I
    goto :goto_4

    .line 4406
    .end local v5    # "vis":I
    .end local v6    # "visible":Ljava/lang/String;
    .restart local v2    # "mode":Ljava/lang/String;
    :cond_17
    const-string/jumbo v7, "translucent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v1, 0x2

    .restart local v1    # "barMode":I
    goto :goto_5

    .line 4407
    .end local v1    # "barMode":I
    :cond_18
    const-string/jumbo v7, "semi-transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v1, 0x1

    .restart local v1    # "barMode":I
    goto :goto_5

    .line 4408
    .end local v1    # "barMode":I
    :cond_19
    const-string/jumbo v7, "transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v1, 0x4

    .restart local v1    # "barMode":I
    goto :goto_5

    .line 4409
    .end local v1    # "barMode":I
    :cond_1a
    const-string/jumbo v7, "warning"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v1, 0x5

    .restart local v1    # "barMode":I
    goto :goto_5

    .line 4410
    .end local v1    # "barMode":I
    :cond_1b
    const/4 v1, -0x1

    .restart local v1    # "barMode":I
    goto :goto_5
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3651
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3652
    :try_start_0
    const-string/jumbo v3, "Current Status Bar state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mExpandedVisible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3654
    const-string/jumbo v5, ", mTrackingPosition="

    .line 3653
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3654
    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTrackingPosition:I

    .line 3653
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mTracking="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTracking:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mDisplayMetrics="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mStackScroller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mStackScroller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3659
    const-string/jumbo v5, " scroll "

    .line 3658
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3659
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v5

    .line 3658
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3660
    const-string/jumbo v5, ","

    .line 3658
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3660
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v5

    .line 3658
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 3662
    const-string/jumbo v3, "  mPendingNotifications="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3663
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 3664
    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    :cond_0
    const-string/jumbo v3, "  mInteractingWindows="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3672
    const-string/jumbo v3, "  mStatusBarWindowState="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3673
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    invoke-static {v3}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    const-string/jumbo v3, "  mStatusBarMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3675
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    const-string/jumbo v3, "  mDozing="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3677
    const-string/jumbo v3, "  mZenMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3678
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenMode:I

    invoke-static {v3}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3679
    const-string/jumbo v3, "  mUseHeadsUp="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3680
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3681
    const-string/jumbo v3, "mStatusBarView"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3683
    const-string/jumbo v3, "  mMediaSessionManager="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3684
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3685
    const-string/jumbo v3, "  mMediaNotificationKey="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3686
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3687
    const-string/jumbo v3, "  mMediaController="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3688
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3689
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_1

    .line 3690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3692
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3693
    const-string/jumbo v3, "  mMediaMetadata="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3694
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3695
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v3, :cond_2

    .line 3696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v5, "android.media.metadata.TITLE"

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3698
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3700
    const-string/jumbo v3, "  Panels: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3701
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v3, :cond_3

    .line 3702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    mNotificationPanel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3703
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 3702
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3703
    const-string/jumbo v4, " params="

    .line 3702
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3703
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3702
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3704
    const-string/jumbo v3, "      "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3705
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3708
    :cond_3
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    .line 3711
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v4

    .line 3712
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const-string/jumbo v5, "  "

    invoke-virtual {v3, p2, v5}, Lcom/android/systemui/statusbar/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    .line 3736
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v3, :cond_6

    .line 3737
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3741
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v3, :cond_7

    .line 3742
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3747
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3749
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3750
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3753
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/systemui/classifier/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    .line 3754
    invoke-static {p2}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 3756
    const-string/jumbo v3, "SharedPreferences:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3757
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3758
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    const-string/jumbo v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 3651
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3666
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3667
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 3711
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3739
    :cond_6
    const-string/jumbo v3, "  mHeadsUpManager: null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3744
    :cond_7
    const-string/jumbo v3, "  mGroupManager: null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3760
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_8
    return-void
.end method

.method public endAffordanceLaunch()V
    .locals 1

    .prologue
    .line 4853
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 4854
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4855
    return-void
.end method

.method public executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;
    .param p3, "dismissShade"    # Z
    .param p4, "afterKeyguardGone"    # Z
    .param p5, "deferred"    # Z

    .prologue
    .line 3878
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$25;

    invoke-direct {v0, p3, p5, p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$25;-><init>(ZZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 3905
    return-void
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "beforeFading"    # Ljava/lang/Runnable;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4501
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 4502
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4503
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$41;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$41;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    .line 4537
    .local v0, "hideRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4538
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    .line 4542
    :goto_0
    return-void

    .line 4540
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public fadeKeyguardWhilePulsing()V
    .locals 4

    .prologue
    .line 4549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyStartFading()V

    .line 4550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingWhilePulsing:Z

    .line 4551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4552
    const/4 v1, 0x0

    .line 4551
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4553
    const-wide/16 v2, 0x0

    .line 4551
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4554
    const-wide/16 v2, 0x60

    .line 4551
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4555
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 4551
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4557
    return-void
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 17

    .prologue
    .line 2437
    const/4 v9, 0x0

    .line 2439
    .local v9, "metaDataChanged":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v14

    .line 2440
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    .line 2441
    .local v4, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2444
    .local v1, "N":I
    const/4 v8, 0x0

    .line 2445
    .local v8, "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v5, 0x0

    .line 2446
    .local v5, "controller":Landroid/media/session/MediaController;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 2447
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2448
    .local v6, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2450
    iget-object v13, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2451
    const-string/jumbo v15, "android.mediaSession"

    .line 2450
    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/media/session/MediaSession$Token;

    .line 2452
    .local v12, "token":Landroid/media/session/MediaSession$Token;
    if-eqz v12, :cond_2

    .line 2453
    new-instance v2, Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v13, v12}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 2455
    .local v2, "aController":Landroid/media/session/MediaController;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v13

    .line 2454
    const/4 v15, 0x3

    if-ne v15, v13, :cond_2

    .line 2460
    move-object v8, v6

    .line 2461
    .local v8, "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object v5, v2

    .line 2467
    .end local v2    # "aController":Landroid/media/session/MediaController;
    .end local v5    # "controller":Landroid/media/session/MediaController;
    .end local v6    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v8    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v12    # "token":Landroid/media/session/MediaSession$Token;
    :cond_0
    if-nez v8, :cond_4

    .line 2472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz v13, :cond_4

    .line 2474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 2475
    const/4 v15, 0x0

    .line 2476
    const/16 v16, -0x1

    .line 2474
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v11

    .line 2478
    .local v11, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "aController$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 2480
    .restart local v2    # "aController":Landroid/media/session/MediaController;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v13

    .line 2479
    const/4 v15, 0x3

    if-ne v15, v13, :cond_1

    .line 2482
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2484
    .local v10, "pkg":Ljava/lang/String;
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_1

    .line 2485
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2486
    .restart local v6    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v13, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2491
    move-object v5, v2

    .line 2492
    .local v5, "controller":Landroid/media/session/MediaController;
    move-object v8, v6

    .line 2493
    .restart local v8    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_1

    .line 2446
    .end local v2    # "aController":Landroid/media/session/MediaController;
    .end local v3    # "aController$iterator":Ljava/util/Iterator;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    .local v5, "controller":Landroid/media/session/MediaController;
    .local v8, "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2484
    .end local v5    # "controller":Landroid/media/session/MediaController;
    .end local v8    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v2    # "aController":Landroid/media/session/MediaController;
    .restart local v3    # "aController$iterator":Ljava/util/Iterator;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2501
    .end local v2    # "aController":Landroid/media/session/MediaController;
    .end local v3    # "aController$iterator":Ljava/util/Iterator;
    .end local v6    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_6

    .line 2503
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearCurrentMediaNotification()V

    .line 2504
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    .line 2505
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v13, v15}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2506
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v13}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2512
    if-eqz v8, :cond_5

    .line 2513
    iget-object v13, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2519
    :cond_5
    const/4 v9, 0x1

    :cond_6
    monitor-exit v14

    .line 2523
    if-eqz v9, :cond_7

    .line 2524
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 2526
    :cond_7
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 2527
    return-void

    .line 2439
    .end local v1    # "N":I
    .end local v4    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v7    # "i":I
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13
.end method

.method public finishKeyguardFadingAway()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4716
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingWhilePulsing:Z

    if-eqz v0, :cond_0

    .line 4717
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibility(I)V

    .line 4719
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingWhilePulsing:Z

    .line 4721
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    .line 4722
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardGoingAway:Z

    .line 4725
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOneNavEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4726
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarVisibility()V

    .line 4730
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardDoneFading()V

    .line 4731
    return-void
.end method

.method public fireWakeUpDozing()V
    .locals 1

    .prologue
    .line 5348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->fireWakeUpDozing()V

    .line 5349
    return-void
.end method

.method protected getActivityOptions()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 7393
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 7394
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 7395
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getBarState()I
    .locals 1

    .prologue
    .line 4435
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    return v0
.end method

.method protected getBouncerContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method getDisplayDensity()F
    .locals 1

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    .prologue
    .line 6848
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getFingerprintUnlockController()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .locals 1

    .prologue
    .line 3382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-object v0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method public getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    .prologue
    .line 6591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .prologue
    .line 5276
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .prologue
    .line 5280
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method public getMaxKeyguardNotifications()I
    .locals 1

    .prologue
    .line 5017
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v0

    return v0
.end method

.method protected getMaxKeyguardNotifications(Z)I
    .locals 2
    .param p1, "recompute"    # Z

    .prologue
    .line 5007
    if-eqz p1, :cond_0

    .line 5009
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 5010
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxAllowedKeyguardNotifications:I

    .line 5009
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->computeMaxKeyguardNotifications(I)I

    move-result v0

    .line 5008
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxKeyguardNotifications:I

    .line 5011
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxKeyguardNotifications:I

    return v0

    .line 5013
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxKeyguardNotifications:I

    return v0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5022
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-nez v0, :cond_0

    .line 5023
    return-object v1

    .line 5025
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    .prologue
    .line 6765
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$46;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$46;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method public getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1

    .prologue
    .line 3038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method public getShowIconsOfStatusBar()Z
    .locals 1

    .prologue
    .line 5671
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowIconsOfStatusBar:Z

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 1774
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 1775
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1777
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1776
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 1779
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method protected getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 3466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    return-object v0
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method protected getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1481
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getVzwBouncerPolicyEnabled()Z
    .locals 1

    .prologue
    .line 5678
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVzwBouncerPolicyEnabled:Z

    return v0
.end method

.method public goToKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5268
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onGoToKeyguard()V

    .line 5270
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    .line 5271
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    .line 5273
    :cond_0
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 7
    .param p1, "expandView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 5085
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 5086
    .local v2, "userId":I
    const/4 v1, 0x0

    .line 5087
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 5088
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5089
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1, v4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 5092
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 5093
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5094
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    .line 5097
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5098
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowLockscreenNotifications:Z

    xor-int/lit8 v3, v3, 0x1

    .line 5097
    if-nez v3, :cond_1

    .line 5098
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v0

    .line 5099
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 5100
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 5102
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5103
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 5109
    :goto_1
    return-void

    .line 5097
    :cond_1
    const/4 v0, 0x1

    .local v0, "fullShadeNeedsBouncer":Z
    goto :goto_0

    .line 5105
    .end local v0    # "fullShadeNeedsBouncer":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5106
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    .line 5107
    invoke-virtual {p0, v6, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    goto :goto_1
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1892
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 1893
    return-void
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 9
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 7436
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 7438
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 7439
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    .line 7438
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7443
    :goto_0
    return-void

    .line 7440
    :catch_0
    move-exception v8

    .local v8, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method handlePeekToExpandTransistion()V
    .locals 4

    .prologue
    .line 4094
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4095
    .local v1, "notificationLoad":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4099
    .end local v1    # "notificationLoad":I
    :goto_0
    return-void

    .line 4096
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public handleSystemNavigationKey(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    const/4 v2, 0x1

    .line 3116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isDeviceInteractive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 3117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3116
    if-eqz v0, :cond_1

    .line 3118
    :cond_0
    return-void

    .line 3122
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_2

    return-void

    .line 3124
    :cond_2
    const/16 v0, 0x118

    if-ne v0, p1, :cond_4

    .line 3125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x1ed

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 3126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    .line 3138
    :cond_3
    :goto_0
    return-void

    .line 3127
    :cond_4
    const/16 v0, 0x119

    if-ne v0, p1, :cond_3

    .line 3128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x1ee

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 3129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 3131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v1, "panel_open"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    goto :goto_0

    .line 3132
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isExpanding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 3133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 3134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v1, "panel_open_qs"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 0
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 4081
    if-eqz p1, :cond_0

    .line 4082
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    .line 4083
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startNotificationLogging()V

    .line 4088
    :goto_0
    return-void

    .line 4085
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->stopNotificationLogging()V

    .line 4086
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    goto :goto_0
.end method

.method public hasActiveNotifications()Z
    .locals 1

    .prologue
    .line 5426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideKeyguard()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4605
    const-string/jumbo v4, "StatusBar#hideKeyguard"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4606
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4607
    .local v2, "staying":Z
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    .line 4608
    const/4 v3, 0x0

    .line 4609
    .local v3, "viewToClick":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v4, :cond_4

    .line 4610
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4611
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v0

    .line 4612
    .local v0, "delay":J
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 4613
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    .line 4614
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 4615
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4617
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 4618
    .local v3, "viewToClick":Landroid/view/View;
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 4622
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v4, :cond_1

    .line 4623
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->disableAnimationsDuringHide(J)V

    .line 4628
    .end local v0    # "delay":J
    .end local v3    # "viewToClick":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    .line 4630
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4631
    invoke-virtual {v3}, Landroid/view/View;->callOnClick()Z

    .line 4636
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v4, :cond_3

    .line 4637
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 4639
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v5, 0x3eb

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 4640
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 4641
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4642
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4643
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4644
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 4645
    return v2

    .line 4625
    .local v3, "viewToClick":Landroid/view/View;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4626
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    goto :goto_0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 1

    .prologue
    .line 3055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    return v0
.end method

.method protected inflateStatusBarWindow(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1609
    const v0, 0x7f0d0115

    const/4 v1, 0x0

    .line 1608
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 1610
    return-void
.end method

.method protected inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 7040
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 7041
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 7040
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 7043
    .local v0, "pmUser":Landroid/content/pm/PackageManager;
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 7044
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 7045
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    .line 7046
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 7055
    :goto_0
    return-void

    .line 7048
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/RowInflaterTask;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/RowInflaterTask;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 7049
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$23;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$23;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7048
    invoke-virtual {v2, v3, p2, p1, v4}, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;)V

    goto :goto_0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4834
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 4834
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3364
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-nez v1, :cond_0

    .line 3366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 3367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3368
    .local v0, "upOrCancel":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 3369
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 3374
    .end local v0    # "upOrCancel":Z
    :cond_0
    :goto_1
    return v4

    .line 3366
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "upOrCancel":Z
    goto :goto_0

    .line 3367
    .end local v0    # "upOrCancel":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "upOrCancel":Z
    goto :goto_0

    .line 3371
    :cond_3
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    goto :goto_1
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 7735
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    return v0
.end method

.method isCameraAllowedByAdmin()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5612
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5613
    return v1

    .line 5614
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5616
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 5620
    :cond_2
    return v0
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 4480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    return v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 6584
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 6585
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6584
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDeviceInVrMode()Z
    .locals 1

    .prologue
    .line 6062
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVrMode:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 6044
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 2877
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    return v0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 2865
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .prologue
    .line 4488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    .line 4488
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isKeyguardCurrentlySecure()Z
    .locals 1

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .prologue
    .line 4700
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isKeyguardFadingWhilePulsing()Z
    .locals 1

    .prologue
    .line 4705
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingWhilePulsing:Z

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    .prologue
    .line 7772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    .line 7776
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    .line 7777
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 7776
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7778
    const/4 v0, 0x0

    return v0

    .line 7780
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowing()Z
    .locals 2

    .prologue
    .line 5652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    .line 5653
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "isKeyguardShowing() called before startKeyguard(), returning true"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5654
    const/4 v0, 0x1

    return v0

    .line 5656
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isLaunchTransitionFadingAway()Z
    .locals 1

    .prologue
    .line 3051
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    return v0
.end method

.method public isLockscreenPublicMode(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 6927
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 6928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0

    .line 6930
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v0, 0x0

    .line 6596
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6597
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v1

    .line 6598
    const v2, 0x10202f5

    .line 6597
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 6596
    :cond_0
    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 6562
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 6563
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 6568
    .local v0, "notificationUserId":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public isPanelFullyCollapsed()Z
    .locals 1

    .prologue
    .line 4439
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method public isPulsing()Z
    .locals 1

    .prologue
    .line 3042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    return v0
.end method

.method public isScrimSrcModeEnabled()Z
    .locals 1

    .prologue
    .line 2886
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    return v0
.end method

.method public isSecurelyLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 7009
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v0

    return v0
.end method

.method protected isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWakeUpComingFromTouch()Z
    .locals 1

    .prologue
    .line 2869
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return v0
.end method

.method public keyguardGoingAway()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4665
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardGoingAway:Z

    .line 4668
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOneNavEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4669
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarVisibility()V

    .line 4673
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardGoingAway(Z)V

    .line 4674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(Z)V

    .line 4675
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_168038(Ljava/lang/Runnable;ZZ)Z
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "dismissShade"    # Z
    .param p3, "deferred"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3879
    if-eqz p1, :cond_0

    .line 3880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    .line 3880
    if-eqz v0, :cond_2

    .line 3882
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    .line 3887
    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 3888
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_3

    .line 3889
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    .line 3903
    :cond_1
    :goto_1
    return p3

    .line 3884
    :cond_2
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3894
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$6;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3896
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$7;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$7;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_183860(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 4265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4266
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$16;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$16;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_183959(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_184175(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 4273
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_184364(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4279
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_240253()V
    .locals 0

    .prologue
    .line 5643
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_281558(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "g"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    const/4 v2, 0x0

    .line 6648
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationGuts;->willBeRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 6651
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-ne v0, p2, :cond_1

    .line 6652
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 6653
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    :cond_1
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_282341(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "g"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 6664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShown()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_283347(Lcom/android/systemui/statusbar/NotificationGuts;Ljava/lang/String;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 2
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "channel"    # Landroid/app/NotificationChannel;
    .param p5, "appUid"    # I

    .prologue
    .line 6681
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 6682
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 6683
    invoke-direct {p0, p2, p5, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_283718(Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Landroid/view/View;Landroid/content/Intent;)V
    .locals 2
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 6689
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 6690
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    invoke-direct {p0, p4, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_284022(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Lcom/android/systemui/statusbar/NotificationInfo;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p4, "v"    # Landroid/view/View;

    .prologue
    .line 6693
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->saveAndCloseNotificationMenu(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_284210(Landroid/os/UserHandle;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "saveImportance"    # Ljava/lang/Runnable;

    .prologue
    .line 6698
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6699
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 6700
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6701
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$3;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLockedNotificationImportanceChange(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    :goto_0
    return-void

    .line 6706
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_299202(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "pmUser"    # Landroid/content/pm/PackageManager;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 7050
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->bindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 7051
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_300751(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 7086
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_330718(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 7764
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 7765
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_35287(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 780
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 781
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;)V

    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_51490(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    move-object v6, p2

    .line 1135
    check-cast v6, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .line 1136
    .local v6, "statusBarFragment":Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 1137
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 1138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 1142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCarrierLabelUpdateMonitor:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 1146
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object v1, p0

    .line 1145
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_59115(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .param p1, "qsh"    # Lcom/android/systemui/qs/QSTileHost;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "f"    # Landroid/app/Fragment;

    .prologue
    move-object v0, p3

    .line 1289
    check-cast v0, Lcom/android/systemui/plugins/qs/QS;

    .line 1290
    .local v0, "qs":Lcom/android/systemui/plugins/qs/QS;
    instance-of v1, v0, Lcom/android/systemui/qs/QSFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1291
    check-cast v1, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSFragment;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 1292
    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    .end local v0    # "qs":Lcom/android/systemui/plugins/qs/QS;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 1293
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 1294
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_59746(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 1303
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object v2

    .line 1304
    .local v2, "session":Landroid/net/Uri;
    if-nez v2, :cond_0

    return-void

    .line 1306
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1307
    .local v1, "message":Ljava/io/StringWriter;
    const-string/jumbo v3, "Build info: "

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1308
    const-string/jumbo v3, "ro.build.description"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1309
    const-string/jumbo v3, "\nSerial number: "

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1310
    const-string/jumbo v3, "ro.serialno"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1311
    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1313
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1314
    .local v0, "falsingPw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 1315
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1317
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1318
    const-string/jumbo v4, "*/*"

    .line 1317
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1319
    const-string/jumbo v4, "android.intent.extra.SUBJECT"

    const-string/jumbo v5, "Rejected touch report"

    .line 1317
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1320
    const-string/jumbo v4, "android.intent.extra.STREAM"

    .line 1317
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 1321
    const-string/jumbo v4, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1317
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1322
    const-string/jumbo v4, "Share rejected touch report"

    .line 1317
    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 1323
    const/high16 v4, 0x10000000

    .line 1317
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_63205(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1374
    check-cast p2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .end local p2    # "fragment":Landroid/app/Fragment;
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setCurrentSysuiVisibility(I)V

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setNavigationBarFragmentView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar_68145(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1482
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1483
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkRemoteInputOutside(Landroid/view/MotionEvent;)V

    .line 1484
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1485
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected loadDimens()V
    .locals 4

    .prologue
    .line 4064
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4066
    .local v1, "res":Landroid/content/res/Resources;
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 4068
    .local v0, "oldBarHeight":I
    const v2, 0x105014b

    .line 4067
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 4069
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-eq v2, v0, :cond_0

    .line 4070
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBarHeight(I)V

    .line 4073
    :cond_0
    const v2, 0x7f0b001d

    .line 4072
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxAllowedKeyguardNotifications:I

    .line 4076
    return-void
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 7762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$26;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$26;-><init>(ZZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 7769
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 1

    .prologue
    .line 3285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible(Z)V

    .line 3287
    return-void
.end method

.method public makeExpandedInvisible(Z)V
    .locals 8
    .param p1, "bShowBouncer"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 3298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarShowNotification(Z)V

    .line 3303
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_1

    .line 3304
    :cond_0
    return-void

    .line 3308
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 3309
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3308
    invoke-virtual {v0, v7, v7, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    .line 3311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 3313
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 3314
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 3317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelVisible(Z)V

    .line 3318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceStatusBarVisible(Z)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    .line 3321
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    .line 3324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 3325
    invoke-virtual {p0, v1, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 3326
    if-eqz p1, :cond_2

    .line 3327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 3328
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 3332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3333
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 3335
    :cond_3
    return-void
.end method

.method makeExpandedVisible(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3146
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3147
    :cond_0
    return-void

    .line 3150
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 3154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelVisible(Z)V

    .line 3156
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 3157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWaitingForKeyguardExit:Z

    .line 3158
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 3159
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 3162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarShowNotification(Z)V

    .line 3164
    return-void
.end method

.method protected makeStatusBarView()V
    .locals 28

    .prologue
    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 1105
    .local v18, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 1106
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 1110
    .local v25, "res":Landroid/content/res/Resources;
    const v2, 0x7f050053

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsSupportNewSpec:Z

    .line 1113
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateStatusBarWindow(Landroid/content/Context;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setService(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 1120
    const v3, 0x7f0a01ea

    .line 1119
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 1122
    const v3, 0x7f0a01ef

    .line 1121
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a013e

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1127
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/SystemUIFactory;->createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 1129
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateShelf()V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 1131
    const-class v2, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    .line 1133
    const-string/jumbo v3, "CollapsedStatusBarFragment"

    new-instance v7, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$5;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$5;-><init>(Ljava/lang/Object;)V

    .line 1132
    invoke-virtual {v2, v3, v7}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1150
    new-instance v3, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;-><init>()V

    .line 1151
    const-string/jumbo v7, "CollapsedStatusBarFragment"

    .line 1150
    const v8, 0x7f0a028f

    .line 1132
    invoke-virtual {v2, v8, v3, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1153
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1154
    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v8, 0x7f0a028d

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;)V

    .line 1153
    invoke-interface {v2, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 1155
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1157
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar$FastColorDrawable;

    .line 1160
    const v7, 0x7f060099

    .line 1159
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-direct {v3, v7}, Lcom/android/systemui/statusbar/phone/StatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1163
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, v18

    invoke-direct {v2, v0, v3, v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setVisualStabilityManager(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    .line 1181
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v27

    .line 1183
    .local v27, "showNav":Z
    if-eqz v27, :cond_1

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createNavigationBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    .end local v27    # "showNav":Z
    :cond_1
    :goto_0
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPixelFormat:I

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V

    .line 1200
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateEmptyShadeView()V

    .line 1201
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateDismissView()V

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedContents:Landroid/view/View;

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a0047

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/BackDropView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v3, 0x7f0a0049

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v3, 0x7f0a0048

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    .line 1209
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0, v7}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a014e

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardStatusView;

    .line 1212
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a013b

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1214
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1217
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f0a0140

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1219
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v8

    .line 1217
    invoke-virtual {v3, v7, v2, v8}, Lcom/android/systemui/SystemUIFactory;->createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v2

    .line 1216
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar$27;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$27;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 1241
    new-instance v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v2, :cond_2

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 1246
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a0259

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ScrimView;

    .line 1247
    .local v4, "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a025a

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ScrimView;

    .line 1248
    .local v5, "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a010b

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1249
    .local v6, "headsUpScrim":Landroid/view/View;
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1250
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 1249
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/SystemUIFactory;->createScrimController(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Landroid/view/View;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1251
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v2, :cond_3

    .line 1252
    new-instance v26, Lcom/android/systemui/statusbar/phone/StatusBar$28;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$28;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1260
    .local v26, "runnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/BackDropView;->setOnVisibilityChangedRunnable(Ljava/lang/Runnable;)V

    .line 1261
    invoke-interface/range {v26 .. v26}, Ljava/lang/Runnable;->run()V

    .line 1263
    .end local v26    # "runnable":Ljava/lang/Runnable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1265
    new-instance v2, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 1268
    const-class v2, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createUserSwitcher()V

    .line 1277
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a021c

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1278
    .local v17, "container":Landroid/view/View;
    if-eqz v17, :cond_5

    .line 1279
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v20

    .line 1280
    .local v20, "fragmentHostManager":Lcom/android/systemui/fragments/FragmentHostManager;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1281
    new-instance v3, Lcom/android/systemui/qs/QSFragment;

    invoke-direct {v3}, Lcom/android/systemui/qs/QSFragment;-><init>()V

    const-string/jumbo v7, "QS"

    const v8, 0x7f0a021c

    .line 1280
    invoke-virtual {v2, v8, v3, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1283
    new-instance v2, Lcom/android/systemui/fragments/PluginFragmentListener;

    const-string/jumbo v3, "QS"

    const-class v7, Lcom/android/systemui/qs/QSFragment;

    const-class v8, Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3, v7, v8}, Lcom/android/systemui/fragments/PluginFragmentListener;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v2}, Lcom/android/systemui/fragments/PluginFragmentListener;->startListening()V

    .line 1285
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1286
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1285
    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0, v7}, Lcom/android/systemui/SystemUIFactory;->createQSTileHost(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v24

    .line 1287
    .local v24, "qsh":Lcom/android/systemui/qs/QSTileHost;
    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1288
    const-string/jumbo v2, "QS"

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$10;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 1299
    .end local v20    # "fragmentHostManager":Lcom/android/systemui/fragments/FragmentHostManager;
    .end local v24    # "qsh":Lcom/android/systemui/qs/QSTileHost;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a022b

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 1301
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1329
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/PowerManager;

    .line 1330
    .local v23, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1334
    :cond_7
    const-string/jumbo v2, "GestureWakeLock"

    .line 1333
    const/16 v3, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1337
    const v3, 0x7f030024

    .line 1336
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v22

    .line 1338
    .local v22, "pattern":[I
    move-object/from16 v0, v22

    array-length v2, v0

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    .line 1339
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_8

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    aget v3, v22, v21

    int-to-long v8, v3

    aput-wide v8, v2, v21

    .line 1339
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 1344
    :cond_8
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1345
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1346
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1347
    const-string/jumbo v2, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1349
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, v18

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1353
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 1357
    .local v14, "demoFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.systemui.demo"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1359
    const-string/jumbo v15, "android.permission.DUMP"

    const/16 v16, 0x0

    move-object/from16 v11, v18

    .line 1358
    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    .line 1366
    const-string/jumbo v2, "disableProfileBars"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const-string/jumbo v2, "ambientRatio"

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    return-void

    .line 1186
    .end local v4    # "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    .end local v5    # "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    .end local v6    # "headsUpScrim":Landroid/view/View;
    .end local v10    # "filter":Landroid/content/IntentFilter;
    .end local v14    # "demoFilter":Landroid/content/IntentFilter;
    .end local v17    # "container":Landroid/view/View;
    .end local v21    # "i":I
    .end local v22    # "pattern":[I
    .end local v23    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v19

    .local v19, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public maybeEscalateHeadsUp()V
    .locals 8

    .prologue
    .line 3089
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getAllEntries()Ljava/util/Collection;

    move-result-object v1

    .line 3090
    .local v1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 3091
    .local v2, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v6, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3092
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 3093
    .local v4, "notification":Landroid/app/Notification;
    iget-object v6, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_0

    .line 3099
    :try_start_0
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 3098
    const v7, 0x8ca3

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3100
    iget-object v6, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->send()V

    .line 3101
    iget-object v6, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData$Entry;->notifyFullScreenIntentLaunched()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3102
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 3106
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    .line 3107
    return-void
.end method

.method public notifyFpAuthModeChanged()V
    .locals 0

    .prologue
    .line 5624
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    .line 5625
    return-void
.end method

.method public notifyFpsError(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 5360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->notifyFpsError(I)V

    .line 5361
    return-void
.end method

.method public notifyFpsHelp(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 5366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->notifyFpsHelp(I)V

    .line 5367
    return-void
.end method

.method public notifyFpsUnlock()V
    .locals 1

    .prologue
    .line 5372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->notifyFpsUnlock()V

    .line 5373
    return-void
.end method

.method protected notifyHeadsUpScreenOff()V
    .locals 0

    .prologue
    .line 7654
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    .line 7655
    return-void
.end method

.method public notifyPowerKeyWakeup()V
    .locals 1

    .prologue
    .line 5354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->notifyPowerKeyWakeup()V

    .line 5355
    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .locals 12

    .prologue
    const/high16 v11, 0x10000000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6512
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 6513
    const-string/jumbo v7, "show_note_about_notification_hiding"

    .line 6512
    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    .line 6514
    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6515
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6516
    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "insecure lockscreen, skipping notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6517
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 6518
    const-string/jumbo v7, "show_note_about_notification_hiding"

    .line 6517
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6519
    return-void

    .line 6521
    :cond_0
    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "disabling lockecreen notifications and alerting the user"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6523
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 6524
    const-string/jumbo v7, "lock_screen_show_notifications"

    .line 6523
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6525
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 6526
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    .line 6525
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6528
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 6529
    .local v4, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 6530
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 6529
    invoke-static {v6, v9, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 6532
    .local v0, "cancelIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 6533
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 6532
    invoke-static {v6, v9, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 6536
    .local v5, "setupIntent":Landroid/app/PendingIntent;
    const v1, 0x1060149

    .line 6538
    .local v1, "colorRes":I
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6539
    const v7, 0x7f0800bf

    .line 6538
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 6540
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 6541
    const v8, 0x7f110213

    .line 6540
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6538
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 6542
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f110212

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6538
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 6544
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v8, 0x1060149

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 6538
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 6547
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f110210

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6546
    const v8, 0x7f0800d0

    .line 6538
    invoke-virtual {v6, v8, v7, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 6550
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f110211

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6549
    const v8, 0x7f0801ee

    .line 6538
    invoke-virtual {v6, v8, v7, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 6552
    .local v3, "note":Landroid/app/Notification$Builder;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 6555
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 6556
    .local v2, "noMan":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v2, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 6558
    .end local v0    # "cancelIntent":Landroid/app/PendingIntent;
    .end local v1    # "colorRes":I
    .end local v2    # "noMan":Landroid/app/NotificationManager;
    .end local v3    # "note":Landroid/app/Notification$Builder;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "setupIntent":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    const/4 v3, 0x0

    .line 4912
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 4913
    const/16 v2, 0xc0

    .line 4912
    invoke-virtual {v1, v2, v3, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 4915
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v2, 0x7f11037b

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 4916
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 4917
    .local v0, "previousView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    if-eqz v0, :cond_0

    .line 4918
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 4920
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 4921
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 4954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 4956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 4958
    :cond_0
    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 1897
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1901
    .local v0, "isNew":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1902
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->addEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1907
    :cond_0
    :goto_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLowPriorityStateUpdated(Z)V

    .line 1908
    return-void

    .line 1900
    .end local v0    # "isNew":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isNew":Z
    goto :goto_0

    .line 1903
    :cond_2
    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasLowPriorityStateUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1904
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onLowPriorityUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1905
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationShade()V

    goto :goto_1
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4858
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4859
    return v2

    .line 4861
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    .line 4867
    :goto_0
    return v2

    .line 4865
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs()V

    goto :goto_0

    .line 4869
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 4870
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 4871
    return v2

    .line 4873
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4874
    return v2

    .line 4876
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 6050
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->playEriSoundAfterBoot()V

    .line 6051
    return-void
.end method

.method public onCameraHintStarted()V
    .locals 2

    .prologue
    .line 4984
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onCameraHintStarted()V

    .line 4985
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f110170

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 4986
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 14
    .param p1, "source"    # I

    .prologue
    const/high16 v7, 0x10000000

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 5458
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    .line 5459
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartedGoingToSleep:Z

    if-eqz v2, :cond_0

    .line 5463
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    .line 5464
    return-void

    .line 5466
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 5467
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 5466
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canCameraGestureBeLaunched(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5471
    return-void

    .line 5473
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_3

    .line 5474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 5475
    .local v11, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v0, "com.android.systemui:CAMERA_GESTURE"

    invoke-virtual {v11, v4, v5, v0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 5476
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 5480
    .end local v11    # "pm":Landroid/os/PowerManager;
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v1

    .line 5482
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 5486
    .local v12, "resolved":Landroid/content/pm/ResolveInfo;
    if-nez v12, :cond_4

    .line 5490
    return-void

    .line 5495
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getCameraSourceString(I)Ljava/lang/String;

    move-result-object v13

    .line 5496
    .local v13, "sourceStr":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 5497
    const-string/jumbo v0, "com.android.systemui.camera_launch_source"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5513
    :cond_5
    if-eqz p1, :cond_6

    .line 5514
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 5521
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v1

    .line 5523
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5528
    const-string/jumbo v0, "com.android.systemui.camera_launch_source"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getPreloadedCamera(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 5538
    .local v9, "cameraPackage":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getMotoCameraAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 5539
    .local v10, "motoCameraPackage":Ljava/lang/String;
    if-eqz v9, :cond_7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 5540
    :cond_7
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5562
    .end local v9    # "cameraPackage":Ljava/lang/String;
    .end local v10    # "motoCameraPackage":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrateForCameraGesture()V

    .line 5564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5565
    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    .line 5586
    :goto_0
    return-void

    .line 5545
    .restart local v9    # "cameraPackage":Ljava/lang/String;
    .restart local v10    # "motoCameraPackage":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5555
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, -0x1

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 5556
    return-void

    .line 5567
    .end local v9    # "cameraPackage":Ljava/lang/String;
    .end local v10    # "motoCameraPackage":Ljava/lang/String;
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_b

    .line 5570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dontAnimateBouncerChangesUntilNextFrame()V

    .line 5571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5573
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenTurningOn:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isScreenTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5577
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->launchCamera(ZI)V

    goto :goto_0

    .line 5583
    :cond_d
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    goto :goto_0
.end method

.method public onClosingFinished()V
    .locals 2

    .prologue
    .line 4965
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 4966
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 4971
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3998
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 3999
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 4005
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateRowStates()V

    .line 4006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequest;->onConfigurationChanged()V

    .line 4008
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVzwBouncerPolicyEnabled:Z

    if-eqz v0, :cond_0

    .line 4009
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4012
    :cond_0
    return-void
.end method

.method public onCrossedThreshold(Z)V
    .locals 3
    .param p1, "above"    # Z

    .prologue
    .line 5063
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5064
    return-void
.end method

.method protected onDensityOrFontScaleChanged()V
    .locals 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1506
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationsOnDensityOrFontScaleChanged()V

    .line 1511
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onDensityOrFontScaleChanged()V

    .line 1513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onDensityOrFontScaleChanged()V

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onDensityOrFontScaleChanged()V

    .line 1517
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateSignalClusters()V

    .line 1518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    .line 1519
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateDismissView()V

    .line 1520
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateClearAll()V

    .line 1521
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateEmptyShadeView()V

    .line 1522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateEmptyShadeView()V

    .line 1523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onDensityOrFontScaleChanged()V

    .line 1525
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->onDensityOrFontScaleChanged()V

    .line 1527
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->onDensityOrFontScaleChanged()V

    .line 1528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_2

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->onDensityOrFontScaleChanged()V

    .line 1531
    :cond_2
    return-void

    .line 1508
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReinflateNotificationsOnUserSwitched:Z

    goto :goto_0
.end method

.method public onDragDownReset()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 5058
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 5059
    return-void
.end method

.method public onDraggedDown(Landroid/view/View;I)Z
    .locals 6
    .param p1, "startingChild"    # Landroid/view/View;
    .param p2, "dragLengthY"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5034
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v1, v4, :cond_2

    .line 5035
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v1

    .line 5034
    if-eqz v1, :cond_2

    .line 5035
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v1

    .line 5034
    if-eqz v1, :cond_2

    .line 5036
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 5038
    int-to-float v2, p2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 5037
    const/16 v3, 0xbb

    .line 5036
    invoke-virtual {v1, v3, v2, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 5042
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 5043
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 5044
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5045
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    .line 5047
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return v4

    .line 5050
    :cond_2
    return v5
.end method

.method public onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 2
    .param p1, "clickedEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "nowExpanded"    # Z

    .prologue
    .line 5258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setExpanded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 5259
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 5260
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 5262
    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 5299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 5300
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    .line 5301
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartedGoingToSleep:Z

    .line 5302
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 5304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOneNavEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarVisibility()V

    .line 5308
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    .line 5309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    .line 5310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setScreenOn(Z)V

    .line 5312
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 5317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelCurrentTouch()V

    .line 5319
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    if-eqz v0, :cond_1

    .line 5320
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    .line 5324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$44;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$44;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 5331
    :cond_1
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 2950
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    .line 2951
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 2
    .param p1, "inPinnedMode"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2908
    if-eqz p1, :cond_1

    .line 2909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setHeadsUpShowing(Z)V

    .line 2910
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceStatusBarVisible(Z)V

    .line 2911
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 2917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceWindowCollapsed(Z)V

    .line 2918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$36;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$36;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    .line 2946
    :cond_0
    :goto_0
    return-void

    .line 2926
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2929
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setHeadsUpShowing(Z)V

    goto :goto_0

    .line 2933
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setHeadsUpGoingAway(Z)V

    .line 2934
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$37;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$37;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2959
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2960
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2961
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2963
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2972
    :cond_0
    :goto_0
    return-void

    .line 2966
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2967
    if-eqz p2, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->fireNotificationHeadsUp()V

    goto :goto_0
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 2955
    return-void
.end method

.method public onHintFinished()V
    .locals 4

    .prologue
    .line 4980
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 4981
    return-void
.end method

.method public onKeyguardOccludedChanged(Z)V
    .locals 1
    .param p1, "keyguardOccluded"    # Z

    .prologue
    .line 4177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onKeyguardOccludedChanged(Z)V

    .line 4178
    :cond_0
    return-void
.end method

.method public onKeyguardViewManagerStatesUpdated()V
    .locals 0

    .prologue
    .line 2893
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    .line 2894
    return-void
.end method

.method public onLockedNotificationImportanceChange(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 1
    .param p1, "dismissAction"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    const/4 v0, 0x1

    .line 5112
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5113
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 5114
    return-void
.end method

.method protected onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "clicked"    # Landroid/view/View;

    .prologue
    .line 5117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer()V

    .line 5119
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 5120
    return-void
.end method

.method protected onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "clicked"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 5171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 5172
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    .line 5175
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    .line 5176
    return-void
.end method

.method protected onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "clickedView"    # Landroid/view/View;

    .prologue
    .line 5124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5125
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 5130
    :goto_0
    return-void

    .line 5127
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 5128
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$8;

    invoke-direct {v1, p2}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setOnExpandedVisibleListener(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMenuPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4844
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldUnlockOnMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4846
    const/4 v0, 0x2

    .line 4845
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    .line 4847
    return v1

    .line 4849
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelLaidOut()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7028
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v2, v3, :cond_0

    .line 7031
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v0

    .line 7032
    .local v0, "maxBefore":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v1

    .line 7033
    .local v1, "maxNotifications":I
    if-eq v0, v1, :cond_0

    .line 7034
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateRowStates()V

    .line 7037
    .end local v0    # "maxBefore":I
    .end local v1    # "maxNotifications":I
    :cond_0
    return-void
.end method

.method public onPhoneHintStarted()V
    .locals 2

    .prologue
    .line 4994
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onLeftAffordanceHintStarted()V

    .line 4995
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f110386

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 4996
    return-void
.end method

.method public onReorderingAllowed()V
    .locals 0

    .prologue
    .line 3047
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 3048
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onScreenOff()V

    .line 3035
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5395
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenTurningOn:Z

    .line 5396
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->onScreenTurnedOn()V

    .line 5398
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 5399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getButtonDispatchers()Landroid/util/SparseArray;

    move-result-object v0

    .line 5400
    .local v0, "btnDispatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/statusbar/phone/ButtonDispatcher;>;"
    if-nez v0, :cond_0

    return-void

    .line 5401
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 5402
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 5403
    .local v1, "buttonDispatcher":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getViews()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "view$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5404
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->doNavBarTranslation(Landroid/view/View;)V

    goto :goto_1

    .line 5401
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5409
    .end local v0    # "btnDispatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/statusbar/phone/ButtonDispatcher;>;"
    .end local v1    # "buttonDispatcher":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .end local v2    # "i":I
    .end local v4    # "view$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenTurningOn:Z

    .line 5380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->delayOnScreenTurningOn()V

    .line 5382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurningOn()V

    .line 5383
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    if-eqz v0, :cond_0

    .line 5384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->launchCamera(ZI)V

    .line 5385
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    .line 5387
    :cond_0
    return-void
.end method

.method public onSpacePressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4880
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    .line 4882
    const/4 v0, 0x2

    .line 4881
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    .line 4883
    return v2

    .line 4885
    :cond_0
    return v1
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    .prologue
    .line 5294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartedGoingToSleep:Z

    .line 5295
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5334
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 5336
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOneNavEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5337
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarVisibility()V

    .line 5340
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setScreenOn(Z)V

    .line 5342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 5344
    return-void
.end method

.method public onTouchSlopExceeded()V
    .locals 1

    .prologue
    .line 5068
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 5069
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 5070
    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    .prologue
    .line 4961
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 4962
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 4999
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5000
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 5001
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 5004
    :cond_1
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 2

    .prologue
    .line 4974
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onUnlockHintStarted()V

    .line 4975
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f11027f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 4976
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 4

    .prologue
    .line 2898
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    .line 2900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 2901
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v2

    .line 2902
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v3

    .line 2900
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardState(ZZZ)V

    .line 2904
    return-void
.end method

.method public onVoiceAssistHintStarted()V
    .locals 2

    .prologue
    .line 4989
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onLeftAffordanceHintStarted()V

    .line 4990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f11051d

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 4991
    return-void
.end method

.method protected onWorkChallengeChanged()V
    .locals 3

    .prologue
    .line 5188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicMode()V

    .line 5189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 5190
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isAnyProfilePublicMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5192
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$42;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$42;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 5239
    .local v0, "clickPendingViewRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 5240
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$43;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$43;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    .line 5239
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantExpandNotificationsPanel()V

    .line 5254
    .end local v0    # "clickPendingViewRunnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method panelsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3141
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method protected performRemoveNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 9
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v8, 0x0

    .line 2068
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2069
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2070
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v6, v0, v8}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V

    .line 2073
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2074
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 2075
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    .line 2076
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 2078
    .local v5, "userId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6, v3, v4, v2, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2079
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/StatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v6, :cond_1

    .line 2080
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 2079
    if-eqz v6, :cond_1

    .line 2081
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2083
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2089
    :goto_0
    return-void

    .line 2085
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3179
    return-void
.end method

.method public postAnimateForceCollapsePanels()V
    .locals 2

    .prologue
    .line 3182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$38;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$38;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3188
    return-void
.end method

.method public postAnimateOpenPanels()V
    .locals 2

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 3192
    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$17;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$17;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 4269
    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 4273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$18;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$18;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 4274
    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .prologue
    .line 4278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$19;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$19;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4279
    int-to-long v2, p2

    .line 4278
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4280
    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 6878
    const/16 v0, 0x3fe

    .line 6879
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 6880
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 6881
    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 1

    .prologue
    .line 3870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    .line 3871
    return-void
.end method

.method public recomputeDisableFlags(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(Z)V

    .line 2836
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Landroid/content/ComponentName;)V

    .line 2327
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 25
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1928
    const/4 v15, 0x0

    .line 1929
    .local v15, "deferRemoval":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->abortExistingInflation(Ljava/lang/String;)V

    .line 1930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1936
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    xor-int/lit8 v3, v3, 0x1

    .line 1935
    if-nez v3, :cond_4

    .line 1937
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v3

    xor-int/lit8 v19, v3, 0x1

    .line 1938
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v15, v3, 0x1

    .line 1940
    .end local v15    # "deferRemoval":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1941
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearCurrentMediaNotification()V

    .line 1942
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 1944
    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v17

    .line 1946
    .local v17, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    .line 1949
    .local v23, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v4

    .line 1948
    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 1950
    .local v14, "b":Landroid/app/Notification$Builder;
    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1951
    const-string/jumbo v4, "android.remoteInputHistory"

    .line 1950
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v22

    .line 1953
    .local v22, "oldHistory":[Ljava/lang/CharSequence;
    if-nez v22, :cond_5

    .line 1954
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 1961
    .local v20, "newHistory":[Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v20, v4

    .line 1962
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1964
    invoke-virtual {v14}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 1967
    .local v9, "newNotification":Landroid/app/Notification;
    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v3, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1968
    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v3, v9, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1969
    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v3, v9, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1971
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1972
    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v4

    .line 1973
    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v8

    .line 1974
    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v12

    .line 1971
    invoke-direct/range {v2 .. v13}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 1975
    .local v2, "newSbn":Landroid/service/notification/StatusBarNotification;
    const/16 v24, 0x0

    .line 1977
    .local v24, "updated":Z
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1978
    const/16 v24, 0x1

    .line 1982
    :goto_1
    if-eqz v24, :cond_6

    .line 1983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1984
    return-void

    .line 1935
    .end local v2    # "newSbn":Landroid/service/notification/StatusBarNotification;
    .end local v9    # "newNotification":Landroid/app/Notification;
    .end local v14    # "b":Landroid/app/Notification$Builder;
    .end local v17    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v20    # "newHistory":[Ljava/lang/CharSequence;
    .end local v22    # "oldHistory":[Ljava/lang/CharSequence;
    .end local v23    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v24    # "updated":Z
    .restart local v15    # "deferRemoval":Z
    :cond_4
    const/16 v19, 0x1

    .local v19, "ignoreEarliestRemovalTime":Z
    goto/16 :goto_0

    .line 1956
    .end local v15    # "deferRemoval":Z
    .end local v19    # "ignoreEarliestRemovalTime":Z
    .restart local v14    # "b":Landroid/app/Notification$Builder;
    .restart local v17    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v22    # "oldHistory":[Ljava/lang/CharSequence;
    .restart local v23    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_5
    move-object/from16 v0, v22

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 1957
    .restart local v20    # "newHistory":[Ljava/lang/CharSequence;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 1958
    add-int/lit8 v3, v18, 0x1

    aget-object v4, v22, v18

    aput-object v4, v20, v3

    .line 1957
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1979
    .end local v18    # "i":I
    .restart local v2    # "newSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v9    # "newNotification":Landroid/app/Notification;
    .restart local v24    # "updated":Z
    :catch_0
    move-exception v16

    .line 1980
    .local v16, "e":Lcom/android/systemui/statusbar/notification/InflationException;
    const/4 v15, 0x0

    .restart local v15    # "deferRemoval":Z
    goto :goto_1

    .line 1987
    .end local v2    # "newSbn":Landroid/service/notification/StatusBarNotification;
    .end local v9    # "newNotification":Landroid/app/Notification;
    .end local v14    # "b":Landroid/app/Notification$Builder;
    .end local v15    # "deferRemoval":Z
    .end local v16    # "e":Lcom/android/systemui/statusbar/notification/InflationException;
    .end local v17    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v20    # "newHistory":[Ljava/lang/CharSequence;
    .end local v22    # "oldHistory":[Ljava/lang/CharSequence;
    .end local v23    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v24    # "updated":Z
    :cond_6
    if-eqz v15, :cond_7

    .line 1988
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1990
    return-void

    .line 1992
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v17

    .line 1994
    .restart local v17    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1995
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_8

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1994
    if-eqz v3, :cond_8

    .line 1996
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1998
    return-void

    .line 2001
    :cond_8
    if-eqz v17, :cond_9

    .line 2002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v3, v4}, Lcom/android/systemui/ForegroundServiceController;->removeNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 2005
    :cond_9
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_a

    .line 2006
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoved()V

    .line 2007
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cleanUpViewState(Landroid/view/View;)V

    .line 2010
    :cond_a
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleGroupSummaryRemoved(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2011
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    move-result-object v21

    .line 2014
    .local v21, "old":Landroid/service/notification/StatusBarNotification;
    if-eqz v21, :cond_b

    .line 2015
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    .line 2016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 2015
    if-eqz v3, :cond_b

    .line 2016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 2015
    if-eqz v3, :cond_b

    .line 2017
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v3, :cond_c

    .line 2018
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 2024
    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 2025
    return-void

    .line 2019
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCollapsing()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    .line 2020
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToKeyguard()V

    goto :goto_3
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v4, 0x0

    .line 7446
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 7447
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 7448
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7449
    return-object v4

    .line 7451
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 7452
    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    .line 7453
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    return-object v1
.end method

.method public requestNotificationUpdate()V
    .locals 0

    .prologue
    .line 2398
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 2399
    return-void
.end method

.method public resetPanelViewForFPS()V
    .locals 1

    .prologue
    .line 7801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetPanelViewForFPS()V

    .line 7802
    return-void
.end method

.method public resetUserExpandedStates()V
    .locals 5

    .prologue
    .line 3971
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 3972
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3973
    .local v3, "notificationCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3974
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3975
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    .line 3976
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetUserExpansion()V

    .line 3973
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3979
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    return-void
.end method

.method public setAccessibilityButtonState(Z)V
    .locals 0
    .param p1, "showAccessibilityButton"    # Z

    .prologue
    .line 7823
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarShowAccessibilityButton:Z

    .line 7824
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarVisibility()V

    .line 7825
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2411
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v5, :cond_1

    .line 2412
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v6, 0x7f0a01e6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2413
    .local v0, "nlo":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->areLightsOn()Z

    move-result v5

    xor-int/lit8 v1, v5, 0x1

    .line 2414
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    move v5, v2

    :goto_1
    if-eq v1, v5, :cond_1

    .line 2415
    if-eqz v1, :cond_0

    .line 2416
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2417
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2419
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 2420
    if-eqz v1, :cond_4

    :goto_2
    int-to-float v2, v2

    .line 2419
    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2421
    if-eqz v1, :cond_5

    const/16 v2, 0x2ee

    :goto_3
    int-to-long v6, v2

    .line 2419
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2422
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v3, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 2419
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2423
    if-eqz v1, :cond_6

    move-object v2, v4

    .line 2419
    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2433
    .end local v0    # "nlo":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->findAndUpdateMediaNotifications()V

    .line 2434
    return-void

    .line 2413
    .restart local v0    # "nlo":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    .local v1, "showDot":Z
    goto :goto_0

    .end local v1    # "showDot":Z
    :cond_3
    move v5, v3

    .line 2414
    goto :goto_1

    :cond_4
    move v2, v3

    .line 2420
    goto :goto_2

    .line 2421
    :cond_5
    const/16 v2, 0xfa

    goto :goto_3

    .line 2423
    :cond_6
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$34;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$34;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V

    goto :goto_4
.end method

.method public setBarState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 4931
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 4932
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToNotificationShade()Z

    move-result v1

    .line 4931
    if-eqz v1, :cond_1

    .line 4933
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    .line 4935
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 4936
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeRemoteInputEntriesKeptUntilCollapsed()V

    .line 4937
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    .line 4939
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v1, p1, :cond_3

    const/4 v0, 0x1

    .line 4940
    .local v0, "barStateChanged":Z
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    .line 4941
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setStatusBarState(I)V

    .line 4942
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setStatusBarState(I)V

    .line 4943
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/FalsingManager;->setStatusBarState(I)V

    .line 4944
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarState(I)V

    .line 4945
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStatusBarState(I)V

    .line 4946
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 4947
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    .line 4948
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setStatusBarState(I)V

    .line 4949
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCarrierLabelUpdateMonitor:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->updateCarrierLabelVisibility(Z)V

    .line 4950
    return-void

    .line 4939
    .end local v0    # "barStateChanged":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "barStateChanged":Z
    goto :goto_0
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 5284
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    .line 5285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBouncerShowing(Z)V

    .line 5286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 5289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarVisibility()V

    .line 5291
    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 5074
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEmptyDragAmount(F)V

    .line 5075
    return-void
.end method

.method protected setHeadsUpUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    .line 2992
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setUser(I)V

    .line 2994
    :cond_0
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 3
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3529
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eq v1, p2, :cond_2

    const/4 v0, 0x1

    .line 3530
    .local v0, "changing":Z
    :goto_0
    if-eqz p2, :cond_3

    .line 3531
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    or-int/2addr v1, p1

    .line 3530
    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    .line 3533
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    if-eqz v1, :cond_4

    .line 3534
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->suspendAutohide()V

    .line 3539
    :goto_2
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    .line 3542
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 3543
    return-void

    .line 3529
    .end local v0    # "changing":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changing":Z
    goto :goto_0

    .line 3532
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    not-int v2, p1

    and-int/2addr v1, v2

    goto :goto_1

    .line 3536
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resumeSuspendedAutohide()V

    goto :goto_2
.end method

.method public setKeyguardFadingAway(JJJ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "delay"    # J
    .param p5, "fadeoutDuration"    # J

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x78

    const/4 v6, 0x1

    .line 4685
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    .line 4686
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    .line 4687
    iput-wide p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    .line 4688
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWaitingForKeyguardExit:Z

    .line 4689
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    add-long v2, p1, p5

    sub-long/2addr v2, v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(JJZ)V

    .line 4692
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-lez v1, :cond_0

    move v0, v6

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 4693
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 4694
    sub-long v2, p1, v4

    .line 4693
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(JJZ)V

    .line 4696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardFadingAway(JJ)V

    .line 4697
    return-void
.end method

.method public setLightsOn(Z)V
    .locals 10
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3601
    const-string/jumbo v0, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLightsOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    if-eqz p1, :cond_0

    .line 3604
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move v2, v1

    move v3, v1

    .line 3603
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3610
    :goto_0
    return-void

    .line 3607
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    .line 3608
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    move-object v3, p0

    move v5, v1

    move v6, v1

    move v7, v4

    .line 3606
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected setLockScreenAllowRemoteInput(Z)V
    .locals 0
    .param p1, "allowLockscreenRemoteInput"    # Z

    .prologue
    .line 7558
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAllowLockscreenRemoteInput:Z

    .line 7559
    return-void
.end method

.method public setLockscreenPublicMode(ZI)V
    .locals 1
    .param p1, "publicMode"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 6923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6924
    return-void
.end method

.method protected setLockscreenUser(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 4035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->setCurrentUser(I)V

    .line 4036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentUser(I)V

    .line 4037
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 4038
    return-void
.end method

.method public setNavigationBarVisibility(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    .line 1391
    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNavigationBarVisibility: vis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarRequestVisibility:Z

    .line 1396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinning:Z

    .line 1398
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarVisibility()V

    .line 1414
    return-void
.end method

.method protected setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 6572
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNotificationsShown([Ljava/lang/String;)V

    .line 6573
    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "snoozeOption"    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .prologue
    .line 6633
    iget-object v0, p2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->criterion:Landroid/service/notification/SnoozeCriterion;

    if-eqz v0, :cond_0

    .line 6634
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->criterion:Landroid/service/notification/SnoozeCriterion;

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 6639
    :goto_0
    return-void

    .line 6636
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 6637
    iget v2, p2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->snoozeForMinutes:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 6636
    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected setNotificationsShown([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 6577
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6581
    :goto_0
    return-void

    .line 6578
    :catch_0
    move-exception v0

    .line 6579
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "failed setNotificationsShown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPanelExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 3009
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    .line 3010
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelExpanded(Z)V

    .line 3011
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPanelExpanded(Z)V

    .line 3012
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3016
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    .line 3019
    :cond_0
    if-nez p1, :cond_1

    .line 3020
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeRemoteInputEntriesKeptUntilCollapsed()V

    .line 3022
    :cond_1
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setQsExpanded(Z)V

    .line 2859
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    if-eqz p1, :cond_0

    .line 2860
    const/4 v0, 0x4

    .line 2859
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardStatusView;->setImportantForAccessibility(I)V

    .line 2862
    return-void

    .line 2861
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setQsScrimEnabled(Z)V
    .locals 1
    .param p1, "scrimEnabled"    # Z

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsScrimEnabled(Z)V

    .line 3500
    return-void
.end method

.method public setShowIconsOfStatusBar(Z)V
    .locals 0
    .param p1, "bShow"    # Z

    .prologue
    .line 5664
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowIconsOfStatusBar:Z

    .line 5665
    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 7554
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowLockscreenNotifications:Z

    .line 7555
    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3403
    iget v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 3404
    .local v11, "oldVal":I
    move/from16 v0, p4

    not-int v1, v0

    and-int/2addr v1, v11

    and-int v2, p1, p4

    or-int v10, v1, v2

    .line 3405
    .local v10, "newVal":I
    xor-int v9, v10, v11

    .line 3411
    .local v9, "diff":I
    const/4 v7, 0x0

    .line 3412
    .local v7, "sbModeChanged":Z
    if-eqz v9, :cond_5

    .line 3413
    iput v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 3416
    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_0

    .line 3417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 3421
    :cond_0
    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 3422
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 3423
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    .line 3427
    :cond_1
    invoke-virtual {p0, v11, v10}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeStatusBarMode(II)I

    move-result v12

    .line 3429
    .local v12, "sbMode":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_6

    const/4 v7, 0x1

    .line 3430
    :goto_0
    if-eqz v7, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    if-eq v12, v1, :cond_3

    .line 3431
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    if-eq v12, v1, :cond_2

    .line 3432
    iput v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    .line 3433
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 3435
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoHide()V

    .line 3438
    :cond_3
    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 3439
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const v2, -0x20000001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 3443
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyUiVisibilityChanged(I)V

    .line 3446
    .end local v12    # "sbMode":I
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 3447
    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 3446
    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    .line 3448
    return-void

    .line 3429
    .restart local v12    # "sbMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 3387
    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 3388
    .local v0, "showing":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v1, :cond_0

    .line 3389
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3390
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-eq v1, p2, :cond_0

    .line 3391
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 3393
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v1, :cond_0

    .line 3394
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 3395
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3394
    invoke-virtual {v1, v3, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    .line 3398
    :cond_0
    return-void

    .line 3387
    .end local v0    # "showing":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "showing":Z
    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1714
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenMode:I

    .line 1716
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 1719
    :cond_0
    return-void
.end method

.method public shouldHideNotifications(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 6990
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAllowsNotificationsInPublic(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 6991
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldHideNotifications(I)Z

    move-result v0

    .line 6990
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6991
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 7000
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7001
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 7000
    :cond_0
    return v0
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 7663
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 7667
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInVrMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7669
    :cond_0
    return v5

    .line 7672
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7674
    return v5

    .line 7677
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDreaming()Z

    move-result v3

    xor-int/lit8 v1, v3, 0x1

    .line 7680
    :goto_0
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->-get0(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Lcom/android/systemui/doze/IDozeHostCallback;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 7685
    :cond_3
    return v5

    .line 7677
    :cond_4
    const/4 v1, 0x0

    .local v1, "inUse":Z
    goto :goto_0

    .line 7688
    .end local v1    # "inUse":Z
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressScreenOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7690
    return v5

    .line 7693
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7695
    return v5

    .line 7698
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7700
    return v5

    .line 7704
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v0, 0x3

    .line 7706
    .local v0, "importanceLevel":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v0, :cond_a

    .line 7708
    return v5

    .line 7705
    .end local v0    # "importanceLevel":I
    :cond_9
    const/4 v0, 0x4

    .restart local v0    # "importanceLevel":I
    goto :goto_1

    .line 7711
    :cond_a
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_d

    .line 7712
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 7714
    return v5

    .line 7717
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 7718
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    .line 7717
    :cond_c
    return v2

    .line 7723
    :cond_d
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 7725
    return v5

    .line 7728
    :cond_e
    return v2
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 7549
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldUnlockOnMenuPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4839
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v1, :cond_0

    .line 4840
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDismissOnMenuPressed()Z

    move-result v0

    .line 4839
    :cond_0
    return v0
.end method

.method public showAssistDisclosure()V
    .locals 1

    .prologue
    .line 7785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 7786
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 7788
    :cond_0
    return-void
.end method

.method protected showBouncer()V
    .locals 1

    .prologue
    .line 4895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWaitingForKeyguardExit:Z

    .line 4896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 4897
    return-void
.end method

.method public showKeyguard()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4443
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v0, :cond_0

    .line 4444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    .line 4447
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 4448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4449
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    .line 4453
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    .line 4454
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v4, :cond_4

    .line 4455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantExpandNotificationsPanel()V

    .line 4459
    :cond_1
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    .line 4461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 4462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 4463
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4465
    :cond_2
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 4466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->onLockscreenShown()V

    .line 4467
    return-void

    .line 4451
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    goto :goto_0

    .line 4456
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v5, :cond_1

    .line 4457
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    goto :goto_1
.end method

.method public showScreenPinningRequest(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 5413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5415
    return-void

    .line 5418
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    .line 5419
    return-void
.end method

.method public showScreenPinningRequest(IZ)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "allowCancel"    # Z

    .prologue
    .line 5422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/ScreenPinningRequest;->showPrompt(IZ)V

    .line 5423
    return-void
.end method

.method public start()V
    .locals 26

    .prologue
    .line 842
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getOneNavEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOneNavEnabled:Z

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 844
    const-string/jumbo v3, "fps_onenav_enabled"

    invoke-static {v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 845
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOneNavObserver:Landroid/database/ContentObserver;

    .line 844
    const/4 v11, 0x0

    .line 843
    invoke-virtual {v2, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 850
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOneNavEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 851
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarRequestVisibility:Z

    .line 858
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 859
    const v3, 0x11200c2

    .line 858
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVzwBouncerPolicyEnabled:Z

    .line 862
    const-class v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 863
    const-class v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 864
    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 865
    const-class v2, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 866
    const-class v2, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/assist/AssistManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 867
    const-class v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 870
    const-class v2, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ForegroundServiceController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 876
    const v3, 0x7f050052

    .line 875
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    .line 878
    invoke-static {}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->getInstance()Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCarrierLabelUpdateMonitor:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .line 880
    sget-object v2, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-static {v2}, Landroid/widget/DateTimeView;->setReceiverHandler(Landroid/os/Handler;)V

    .line 881
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 884
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 886
    const-string/jumbo v3, "device_policy"

    .line 885
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 888
    new-instance v2, Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 889
    new-instance v2, Lcom/android/internal/util/NotificationMessagingUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 891
    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 896
    const-class v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 899
    const-string/jumbo v3, "zen_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 900
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 899
    const/4 v11, 0x0

    .line 898
    invoke-virtual {v2, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 902
    const-string/jumbo v3, "lock_screen_show_notifications"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 903
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 902
    const/4 v11, 0x0

    .line 904
    const/4 v12, -0x1

    .line 901
    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 905
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    if-eqz v2, :cond_0

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 907
    const-string/jumbo v3, "lock_screen_allow_remote_input"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 909
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 908
    const/4 v11, 0x0

    .line 910
    const/4 v12, -0x1

    .line 906
    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 913
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 914
    const-string/jumbo v3, "lock_screen_allow_private_notifications"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 916
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 915
    const/4 v11, 0x1

    .line 917
    const/4 v12, -0x1

    .line 913
    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 920
    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 919
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 922
    const-class v2, Lcom/android/systemui/recents/Recents;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    .line 925
    .local v18, "currentConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLocale:Ljava/util/Locale;

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLayoutDirection:I

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserManager:Landroid/os/UserManager;

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 930
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 933
    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 936
    const/16 v2, 0x9

    new-array v6, v2, [I

    .line 937
    .local v6, "switches":[I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v7, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v4, "iconSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v5, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 941
    .local v8, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 943
    .local v9, "dockedStackBounds":Landroid/graphics/Rect;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 949
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createAndAddWindows()V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v10, 0x6

    aget v10, v6, v10

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v10, v11}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIZ)V

    .line 953
    const/4 v2, 0x1

    aget v11, v6, v2

    const/4 v2, 0x7

    aget v12, v6, v2

    const/16 v2, 0x8

    aget v13, v6, v2

    const/4 v14, -0x1

    move-object/from16 v10, p0

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 955
    const/4 v2, 0x2

    aget v2, v6, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->topAppWindowChanged(Z)V

    .line 957
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    const/4 v3, 0x3

    aget v10, v6, v3

    const/4 v3, 0x4

    aget v11, v6, v3

    const/4 v3, 0x5

    aget v3, v6, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 960
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 961
    .local v17, "N":I
    const/16 v24, 0x0

    .line 962
    .local v24, "viewIndex":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 963
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v10, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 962
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 853
    .end local v4    # "iconSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    .end local v6    # "switches":[I
    .end local v7    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v8    # "fullscreenStackBounds":Landroid/graphics/Rect;
    .end local v9    # "dockedStackBounds":Landroid/graphics/Rect;
    .end local v17    # "N":I
    .end local v18    # "currentConfig":Landroid/content/res/Configuration;
    .end local v22    # "i":I
    .end local v24    # "viewIndex":I
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarRequestVisibility:Z

    goto/16 :goto_0

    .line 955
    .restart local v4    # "iconSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    .restart local v6    # "switches":[I
    .restart local v7    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v8    # "fullscreenStackBounds":Landroid/graphics/Rect;
    .restart local v9    # "dockedStackBounds":Landroid/graphics/Rect;
    .restart local v18    # "currentConfig":Landroid/content/res/Configuration;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 957
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 968
    .restart local v17    # "N":I
    .restart local v22    # "i":I
    .restart local v24    # "viewIndex":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 969
    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const/4 v11, -0x1

    .line 968
    invoke-virtual {v2, v3, v10, v11}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 987
    :goto_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 988
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setHeadsUpUser(I)V

    .line 990
    new-instance v21, Landroid/content/IntentFilter;

    invoke-direct/range {v21 .. v21}, Landroid/content/IntentFilter;-><init>()V

    .line 991
    .local v21, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 992
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 993
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 998
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitchCompleteObserver:Landroid/app/UserSwitchObserver;

    const-string/jumbo v10, "StatusBar"

    .line 998
    invoke-interface {v2, v3, v10}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1005
    :goto_6
    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    .line 1006
    .local v23, "internalFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v2, "com.android.systemui.statusbar.banner_action_cancel"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1008
    const-string/jumbo v2, "com.android.systemui.statusbar.banner_action_setup"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v10, "com.android.systemui.permission.SELF"

    const/4 v11, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1011
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1013
    .local v13, "allUsersFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 1012
    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1014
    const-string/jumbo v2, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1016
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1015
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1017
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateCurrentProfilesCache()V

    .line 1020
    const-string/jumbo v2, "vrmanager"

    .line 1019
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v25

    .line 1022
    .local v25, "vrManager":Landroid/service/vr/IVrManager;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1027
    :goto_7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNonBlockablePkgs:Ljava/util/Set;

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNonBlockablePkgs:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1029
    const v10, 0x1070041

    .line 1028
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "media_session"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    .line 1032
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarVisibility()V

    .line 1048
    invoke-static {}, Lcom/motorola/multibluetooth/MultiBTFrameworkHelper;->isMultiBTFeatureAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1049
    new-instance v2, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v2, v3, v10}, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 1054
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ImsIconController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/ImsIconController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ImsIconController;->initialize(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1062
    const-string/jumbo v3, "heads_up_notifications_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1063
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 1062
    const/4 v11, 0x1

    .line 1061
    invoke-virtual {v2, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1065
    const-string/jumbo v3, "ticker_gets_heads_up"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1066
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 1065
    const/4 v11, 0x1

    .line 1064
    invoke-virtual {v2, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startKeyguard()V

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1073
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 1074
    const-class v2, Lcom/android/systemui/doze/DozeHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyUserAboutHiddenNotifications()V

    .line 1078
    new-instance v2, Lcom/android/systemui/recents/ScreenPinningRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/ScreenPinningRequest;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 1081
    const-class v2, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ActivityStarterDelegate;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/ActivityStarterDelegate;->setActivityStarterImpl(Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 1083
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$26;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 1094
    const-class v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 1095
    return-void

    .line 971
    .end local v13    # "allUsersFilter":Landroid/content/IntentFilter;
    .end local v21    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "internalFilter":Landroid/content/IntentFilter;
    .end local v25    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_0
    move-exception v19

    .line 972
    .local v19, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "Unable to register notification listener"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1000
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v21    # "filter":Landroid/content/IntentFilter;
    :catch_1
    move-exception v19

    .line 1001
    .restart local v19    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Register user switch observer failed: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1023
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v13    # "allUsersFilter":Landroid/content/IntentFilter;
    .restart local v23    # "internalFilter":Landroid/content/IntentFilter;
    .restart local v25    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_2
    move-exception v19

    .line 1024
    .restart local v19    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1051
    .end local v19    # "e":Landroid/os/RemoteException;
    :cond_5
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v2, v3, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    goto/16 :goto_8

    .line 945
    .end local v13    # "allUsersFilter":Landroid/content/IntentFilter;
    .end local v17    # "N":I
    .end local v21    # "filter":Landroid/content/IntentFilter;
    .end local v22    # "i":I
    .end local v23    # "internalFilter":Landroid/content/IntentFilter;
    .end local v24    # "viewIndex":I
    .end local v25    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_3
    move-exception v20

    .local v20, "ex":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .prologue
    .line 2844
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 2845
    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z
    .param p3, "callback"    # Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .prologue
    .line 2854
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 2855
    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .prologue
    .line 2849
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 2850
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .prologue
    .line 3794
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 3795
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z
    .param p4, "callback"    # Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .prologue
    .line 3799
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 3806
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 3805
    invoke-static {v0, p1, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v4

    .line 3807
    .local v4, "afterKeyguardGone":Z
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$39;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/systemui/statusbar/phone/StatusBar$39;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 3857
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$40;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/statusbar/phone/StatusBar$40;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 3866
    .local v2, "cancelRunnable":Ljava/lang/Runnable;
    const/4 v5, 0x1

    move-object v0, p0

    move v3, p3

    .line 3865
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 3867
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 7792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 7793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 7795
    :cond_0
    return-void
.end method

.method protected startKeyguard()V
    .locals 7

    .prologue
    .line 1722
    const-string/jumbo v0, "StatusBar#startKeyguard"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1723
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1724
    .local v3, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1725
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 1726
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v6

    move-object v5, p0

    .line 1724
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 1728
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBouncerContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1729
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 1727
    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1730
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1731
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1730
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1732
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1733
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 1732
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1735
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$32;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$32;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1756
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setFingerprintUnlockController(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    .line 1758
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1759
    return-void
.end method

.method public startLaunchTransitionTimeout()V
    .locals 4

    .prologue
    .line 4577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    .line 4578
    const-wide/16 v2, 0x1388

    .line 4577
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4579
    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 7173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 7175
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 7176
    .local v1, "keyguardShowing":Z
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7177
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 7178
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 7177
    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    .line 7179
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$47;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$47;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 7216
    return-void

    .line 7176
    :cond_1
    const/4 v0, 0x0

    .local v0, "afterKeyguardGone":Z
    goto :goto_0
.end method

.method protected startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "intendSender"    # Landroid/content/IntentSender;
    .param p3, "notificationKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5136
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    .line 5138
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4, v5, v5, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v3

    .line 5140
    .local v3, "newIntent":Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 5141
    return v6

    .line 5143
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5144
    .local v0, "callBackIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5145
    const-string/jumbo v4, "android.intent.extra.INDEX"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5146
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5149
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 5152
    const/high16 v5, 0x54000000

    .line 5148
    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 5156
    .local v1, "callBackPendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v4, "android.intent.extra.INTENT"

    .line 5157
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    .line 5155
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5159
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 5160
    const/4 v5, 0x0

    .line 5159
    invoke-interface {v4, v3, v5}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5164
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 5161
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopWaitingForKeyguardExit()V
    .locals 1

    .prologue
    .line 4734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWaitingForKeyguardExit:Z

    .line 4735
    return-void
.end method

.method protected toggleKeyboardShortcuts(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 6912
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(Landroid/content/Context;I)V

    .line 6913
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    .line 6899
    const/16 v0, 0x402

    .line 6900
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 6901
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 6902
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6873
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    .line 6874
    return-void
.end method

.method protected toggleSplitScreenMode(II)Z
    .locals 6
    .param p1, "metricsDockAction"    # I
    .param p2, "metricsUndockAction"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1783
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-nez v2, :cond_0

    .line 1784
    return v3

    .line 1786
    :cond_0
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v1

    .line 1787
    .local v1, "dockSide":I
    if-ne v1, v4, :cond_1

    .line 1788
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v2, v4, v3, v5, p1}, Lcom/android/systemui/RecentsComponent;->dockTopTask(IILandroid/graphics/Rect;I)Z

    move-result v2

    return v2

    .line 1791
    :cond_1
    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    .line 1792
    .local v0, "divider":Lcom/android/systemui/stackdivider/Divider;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isHomeStackResizable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1794
    return v3

    .line 1796
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1797
    if-eq p2, v4, :cond_3

    .line 1798
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, p2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1802
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public topAppWindowChanged(Z)V
    .locals 1
    .param p1, "showMenu"    # Z

    .prologue
    .line 3631
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarShowMenuIcon:Z

    .line 3632
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarVisibility()V

    .line 3641
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLightsOn(Z)V

    .line 3642
    :cond_0
    return-void
.end method

.method touchAutoHide()V
    .locals 2

    .prologue
    .line 3452
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_1

    .line 3453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isSemiTransparent()Z

    move-result v0

    .line 3452
    if-eqz v0, :cond_1

    .line 3454
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->scheduleAutohide()V

    .line 3458
    :goto_0
    return-void

    .line 3456
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->cancelAutohide()V

    goto :goto_0
.end method

.method updateDisplaySize()V
    .locals 2

    .prologue
    .line 3780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3786
    return-void
.end method

.method protected updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "shouldPeek"    # Z
    .param p4, "alertAgain"    # Z

    .prologue
    .line 2976
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    .line 2977
    .local v0, "wasHeadsUp":Z
    if-eqz v0, :cond_2

    .line 2978
    if-nez p3, :cond_1

    .line 2980
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 2988
    :cond_0
    :goto_0
    return-void

    .line 2982
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p2, p4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    goto :goto_0

    .line 2984
    :cond_2
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 2986
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0
.end method

.method protected updateKeyguardState(ZZ)V
    .locals 5
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4763
    const-string/jumbo v0, "StatusBar#updateKeyguardState"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4764
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v1, :cond_3

    .line 4765
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 4766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 4767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_0

    .line 4768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 4770
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    .line 4780
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v4, :cond_6

    .line 4781
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 4785
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v0, v3, v4, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    .line 4786
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 4787
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicMode()V

    .line 4788
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStackScrollerState(ZZ)V

    .line 4789
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 4790
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 4791
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v1, :cond_7

    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 4792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 4793
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v2

    .line 4794
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v3

    .line 4792
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardState(ZZZ)V

    .line 4795
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 4796
    return-void

    .line 4772
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 4773
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_1

    .line 4774
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 4775
    if-nez p1, :cond_4

    .line 4776
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v4, :cond_5

    :cond_4
    move v0, v1

    .line 4774
    :goto_3
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    goto :goto_0

    :cond_5
    move v0, p2

    .line 4777
    goto :goto_3

    .line 4783
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 4791
    goto :goto_2
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 12
    .param p1, "metaDataChanged"    # Z
    .param p2, "allowEnterAnimation"    # Z

    .prologue
    .line 2586
    const-string/jumbo v7, "StatusBar#updateMediaMetaData"

    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2592
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-nez v7, :cond_0

    .line 2593
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2594
    return-void

    .line 2597
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v7, :cond_1

    .line 2598
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    .line 2599
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2600
    return-void

    .line 2610
    :cond_1
    const/4 v2, 0x0

    .line 2612
    .local v2, "artworkDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v7, :cond_3

    .line 2614
    const/4 v1, 0x0

    .line 2615
    .local v1, "artworkBitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v8, "android.media.metadata.ART"

    invoke-virtual {v7, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2616
    .local v1, "artworkBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 2617
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v8, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v7, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2620
    :cond_2
    if-eqz v1, :cond_3

    .line 2621
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "artworkDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v2, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2624
    .end local v1    # "artworkBitmap":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v0, 0x0

    .line 2625
    .local v0, "allowWhenShade":Z
    if-nez v2, :cond_4

    .line 2626
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2627
    .local v6, "lockWallpaper":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 2628
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;

    .line 2629
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2628
    invoke-direct {v2, v7, v6}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2632
    .local v2, "artworkDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v7, :cond_8

    .line 2633
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 2637
    .end local v0    # "allowWhenShade":Z
    .end local v2    # "artworkDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "lockWallpaper":Landroid/graphics/Bitmap;
    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v7, :cond_9

    .line 2638
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v5

    .line 2640
    :goto_1
    if-eqz v2, :cond_a

    const/4 v4, 0x1

    .line 2642
    .local v4, "hasArtwork":Z
    :goto_2
    if-nez v4, :cond_b

    .line 2705
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_7

    .line 2709
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v7

    .line 2710
    const/4 v8, 0x2

    .line 2709
    if-eq v7, v8, :cond_6

    if-eqz v5, :cond_12

    .line 2714
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    .line 2715
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2716
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowing(Z)V

    .line 2745
    .end local p1    # "metaDataChanged":Z
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2746
    return-void

    .line 2632
    .end local v4    # "hasArtwork":Z
    .restart local v0    # "allowWhenShade":Z
    .restart local v2    # "artworkDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "lockWallpaper":Landroid/graphics/Bitmap;
    .restart local p1    # "metaDataChanged":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 2637
    .end local v0    # "allowWhenShade":Z
    .end local v2    # "artworkDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "lockWallpaper":Landroid/graphics/Bitmap;
    :cond_9
    const/4 v5, 0x0

    .local v5, "hideBecauseOccluded":Z
    goto :goto_1

    .line 2640
    .end local v5    # "hideBecauseOccluded":Z
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "hasArtwork":Z
    goto :goto_2

    .line 2643
    :cond_b
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v7, :cond_c

    .line 2642
    if-eqz v0, :cond_5

    .line 2644
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v7

    .line 2645
    const/4 v8, 0x2

    .line 2644
    if-eq v7, v8, :cond_5

    .line 2646
    xor-int/lit8 v7, v5, 0x1

    .line 2642
    if-eqz v7, :cond_5

    .line 2648
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_d

    .line 2649
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    .line 2650
    if-eqz p2, :cond_10

    .line 2651
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v8, 0x3b03126f    # 0.002f

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    .line 2652
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2657
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowing(Z)V

    .line 2658
    const/4 p1, 0x1

    .line 2663
    .end local p1    # "metaDataChanged":Z
    :cond_d
    if-eqz p1, :cond_7

    .line 2664
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 2666
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    .line 2667
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 2666
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2668
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2669
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v7, :cond_e

    .line 2670
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 2672
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2673
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2684
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2686
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v7, :cond_f

    .line 2687
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 2690
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    .line 2697
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2698
    const-wide/16 v8, 0xfa

    .line 2697
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2699
    const/4 v8, 0x0

    .line 2697
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2699
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 2697
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_3

    .line 2654
    .restart local p1    # "metaDataChanged":Z
    :cond_10
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2655
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    goto/16 :goto_4

    .line 2675
    .end local p1    # "metaDataChanged":Z
    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 2718
    .restart local p1    # "metaDataChanged":Z
    :cond_12
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowing(Z)V

    .line 2719
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2720
    const v8, 0x3b03126f    # 0.002f

    .line 2719
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2721
    sget-object v8, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 2719
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2722
    const-wide/16 v8, 0x12c

    .line 2719
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2723
    const-wide/16 v8, 0x0

    .line 2719
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2724
    new-instance v8, Lcom/android/systemui/statusbar/phone/StatusBar$35;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$35;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 2719
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2733
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    if-eqz v7, :cond_7

    .line 2734
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2737
    iget-wide v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    .line 2734
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2738
    iget-wide v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    .line 2734
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2739
    sget-object v8, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 2734
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_3
.end method

.method public updateNavigationBarVisibility()V
    .locals 2

    .prologue
    .line 1423
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarRequestVisibility:Z

    if-nez v1, :cond_2

    .line 1425
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarShowAccessibilityButton:Z

    .line 1423
    if-nez v1, :cond_2

    .line 1427
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarShowMenuIcon:Z

    .line 1431
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOneNavEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1437
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardGoingAway:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinning:Z

    if-eqz v1, :cond_3

    .line 1439
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getNavBarFragmentViewVisiblity()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->addNavigationBarFragmentView(Landroid/content/Context;)V

    .line 1461
    :cond_1
    :goto_1
    return-void

    .line 1423
    :cond_2
    const/4 v0, 0x1

    .local v0, "vis":Z
    goto :goto_0

    .line 1443
    .end local v0    # "vis":Z
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getNavBarFragmentViewVisiblity()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 1444
    :cond_4
    return-void

    .line 1446
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->removeNavigationBarFragmentView(Landroid/content/Context;)V

    goto :goto_1

    .line 1449
    :cond_6
    if-eqz v0, :cond_7

    .line 1450
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getNavBarFragmentViewVisiblity()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1451
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->addNavigationBarFragmentView(Landroid/content/Context;)V

    goto :goto_1

    .line 1454
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getNavBarFragmentViewVisiblity()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    .line 1455
    :cond_8
    return-void

    .line 1457
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->removeNavigationBarFragmentView(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .prologue
    .line 7591
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 7592
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->abortExistingInflation(Ljava/lang/String;)V

    .line 7593
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 7594
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v1, :cond_0

    .line 7595
    return-void

    .line 7597
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7598
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7601
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 7602
    .local v3, "n":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 7604
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 7605
    .local v4, "oldNotification":Landroid/service/notification/StatusBarNotification;
    iput-object p1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 7606
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 7608
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->updateIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 7609
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V

    .line 7611
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 7612
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v7

    .line 7611
    invoke-interface {v6, p1, v7}, Lcom/android/systemui/ForegroundServiceController;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 7614
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 7615
    .local v5, "shouldPeek":Z
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v0

    .line 7617
    .local v0, "alertAgain":Z
    invoke-virtual {p0, v2, v1, v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V

    .line 7618
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 7620
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 7623
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 7632
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 7633
    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1924
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 1925
    return-void
.end method

.method protected updateNotifications()V
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 2394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationShade()V

    .line 2395
    return-void
.end method

.method protected updatePublicContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 7
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 7637
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 7638
    .local v3, "publicContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    .line 7639
    .local v1, "inflatedView":Landroid/view/View;
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 7641
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->adminAllowsUnredactedNotifications(I)Z

    move-result v5

    xor-int/lit8 v0, v5, 0x1

    .line 7642
    .local v0, "disabledByPolicy":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 7643
    const v5, 0x10403e6

    .line 7642
    :goto_0
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7645
    .local v2, "notificationHiddenText":Ljava/lang/String;
    const v5, 0x1020016

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7646
    .local v4, "titleView":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 7647
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 7646
    if-eqz v5, :cond_0

    .line 7648
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7651
    .end local v0    # "disabledByPolicy":Z
    .end local v2    # "notificationHiddenText":Ljava/lang/String;
    .end local v4    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 7644
    .restart local v0    # "disabledByPolicy":Z
    :cond_1
    const v5, 0x10403e7

    goto :goto_0
.end method

.method updateResources()V
    .locals 1

    .prologue
    .line 4049
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 4050
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 4053
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->loadDimens()V

    .line 4055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 4056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources()V

    .line 4058
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_2

    .line 4059
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 4061
    :cond_2
    return-void
.end method

.method protected updateRowStates()V
    .locals 21

    .prologue
    .line 7482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    .line 7484
    .local v2, "N":I
    const/16 v16, 0x0

    .line 7485
    .local v16, "visibleNotifications":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    .line 7486
    .local v9, "onKeyguard":Z
    :goto_0
    const/4 v7, -0x1

    .line 7487
    .local v7, "maxNotifications":I
    if-eqz v9, :cond_0

    .line 7488
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v7

    .line 7490
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxDisplayedNotifications(I)V

    .line 7491
    new-instance v13, Ljava/util/Stack;

    invoke-direct {v13}, Ljava/util/Stack;-><init>()V

    .line 7492
    .local v13, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_3

    .line 7493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7494
    .local v3, "child":Landroid/view/View;
    instance-of v0, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 7492
    .end local v3    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 7485
    .end local v6    # "i":I
    .end local v7    # "maxNotifications":I
    .end local v9    # "onKeyguard":Z
    .end local v13    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "onKeyguard":Z
    goto :goto_0

    .line 7497
    .restart local v3    # "child":Landroid/view/View;
    .restart local v6    # "i":I
    .restart local v7    # "maxNotifications":I
    .restart local v13    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_2
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v3    # "child":Landroid/view/View;
    invoke-virtual {v13, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 7499
    :cond_3
    invoke-virtual {v13}, Ljava/util/Stack;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_e

    .line 7500
    invoke-virtual {v13}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 7501
    .local v10, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    .line 7502
    .local v5, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    .line 7503
    .local v4, "childNotification":Z
    if-eqz v9, :cond_7

    .line 7504
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    .line 7509
    :goto_3
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowAmbient(Z)V

    .line 7510
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v15

    .line 7511
    .local v15, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v18, v0

    .line 7512
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    .line 7511
    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 7512
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v18

    xor-int/lit8 v14, v18, 0x1

    .line 7513
    :goto_4
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    .line 7514
    .local v11, "showOnKeyguard":Z
    if-nez v14, :cond_5

    .line 7515
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowLockscreenNotifications:Z

    move/from16 v18, v0

    xor-int/lit8 v18, v18, 0x1

    .line 7514
    if-nez v18, :cond_5

    .line 7516
    :cond_4
    if-eqz v9, :cond_a

    xor-int/lit8 v18, v11, 0x1

    .line 7514
    if-eqz v18, :cond_a

    .line 7517
    :cond_5
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 7532
    :cond_6
    :goto_5
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 7534
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v8

    .line 7535
    .local v8, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    .line 7536
    .local v12, "size":I
    add-int/lit8 v6, v12, -0x1

    :goto_6
    if-ltz v6, :cond_3

    .line 7537
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7536
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 7506
    .end local v8    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v11    # "showOnKeyguard":Z
    .end local v12    # "size":I
    .end local v15    # "userId":I
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    .line 7507
    if-nez v16, :cond_8

    xor-int/lit8 v18, v4, 0x1

    :goto_7
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto/16 :goto_3

    :cond_8
    const/16 v18, 0x0

    goto :goto_7

    .line 7511
    .restart local v15    # "userId":I
    :cond_9
    const/4 v14, 0x0

    .local v14, "suppressedSummary":Z
    goto :goto_4

    .line 7519
    .end local v14    # "suppressedSummary":Z
    .restart local v11    # "showOnKeyguard":Z
    :cond_a
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/16 v17, 0x1

    .line 7520
    .local v17, "wasGone":Z
    :goto_8
    if-eqz v17, :cond_b

    .line 7521
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 7523
    :cond_b
    if-nez v4, :cond_6

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_6

    .line 7524
    if-eqz v17, :cond_c

    .line 7526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    .line 7527
    xor-int/lit8 v20, v11, 0x1

    .line 7526
    invoke-virtual/range {v18 .. v20}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 7529
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 7519
    .end local v17    # "wasGone":Z
    :cond_d
    const/16 v17, 0x0

    .restart local v17    # "wasGone":Z
    goto :goto_8

    .line 7541
    .end local v4    # "childNotification":Z
    .end local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v10    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v11    # "showOnKeyguard":Z
    .end local v15    # "userId":I
    .end local v17    # "wasGone":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    if-nez v16, :cond_f

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setNoVisibleNotifications(Z)V

    .line 7543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 7544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    invoke-virtual/range {v18 .. v20}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 7545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x3

    invoke-virtual/range {v18 .. v20}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 7546
    return-void

    .line 7541
    :cond_f
    const/16 v18, 0x0

    goto :goto_9
.end method

.method public updateStackScrollerState(ZZ)V
    .locals 6
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4814
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v3, :cond_0

    return-void

    .line 4815
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 4816
    .local v1, "onKeyguard":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isAnyProfilePublicMode()Z

    move-result v2

    .line 4817
    .local v2, "publicMode":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHideSensitive(ZZ)V

    .line 4818
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 4819
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandingEnabled(Z)V

    .line 4820
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 4821
    .local v0, "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 4822
    if-eqz v0, :cond_1

    .line 4823
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 4825
    :cond_1
    return-void

    .line 4815
    .end local v0    # "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .end local v1    # "onKeyguard":Z
    .end local v2    # "publicMode":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "onKeyguard":Z
    goto :goto_0
.end method

.method public updateTsbForScreenPinning(Z)V
    .locals 0
    .param p1, "screenPinning"    # Z

    .prologue
    .line 7809
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinning:Z

    .line 7810
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarVisibility()V

    .line 7811
    return-void
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .prologue
    .line 7410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    .line 7411
    .local v0, "oldVisibleToUser":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    .line 7413
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_0

    .line 7414
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChanged(Z)V

    .line 7416
    :cond_0
    return-void

    .line 7411
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 4828
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4829
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 4831
    :cond_0
    return-void
.end method

.method public userAllowsNotificationsInPublic(I)Z
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 6938
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 6939
    const/4 v1, 0x1

    return v1

    .line 6942
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 6944
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6945
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 6943
    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 6946
    .local v0, "allowed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 6947
    return v0

    .line 6943
    .end local v0    # "allowed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "allowed":Z
    goto :goto_0

    .line 6950
    .end local v0    # "allowed":Z
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 6958
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 6959
    const/4 v3, 0x1

    return v3

    .line 6962
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 6964
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6965
    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    .line 6963
    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 6966
    .local v2, "allowedByUser":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->adminAllowsUnredactedNotifications(I)Z

    move-result v1

    .line 6967
    .local v1, "allowedByDpm":Z
    if-eqz v2, :cond_2

    move v0, v1

    .line 6968
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 6969
    return v0

    .line 6963
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "allowedByUser":Z
    goto :goto_0

    .line 6967
    .restart local v1    # "allowedByDpm":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "allowed":Z
    goto :goto_1

    .line 6972
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    return v3
.end method

.method public userSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 4016
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setHeadsUpUser(I)V

    .line 4019
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 4020
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicMode()V

    .line 4021
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 4022
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReinflateNotificationsOnUserSwitched:Z

    if-eqz v0, :cond_0

    .line 4023
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationsOnDensityOrFontScaleChanged()V

    .line 4024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReinflateNotificationsOnUserSwitched:Z

    .line 4026
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationShade()V

    .line 4027
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearCurrentMediaNotification()V

    .line 4028
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockscreenUser(I)V

    .line 4030
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getOneNavEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOneNavEnabled:Z

    .line 4032
    return-void
.end method

.method vibrate()V
    .locals 4

    .prologue
    .line 4237
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 4238
    const-string/jumbo v2, "vibrator"

    .line 4237
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 4239
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 4240
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 7399
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 7400
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    .line 7401
    if-nez p1, :cond_0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    .line 7402
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    .line 7406
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 7407
    return-void
.end method

.method public wakeUpIfDozing(JLandroid/view/View;)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "where"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 5430
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v1, :cond_0

    .line 5431
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5432
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "com.android.systemui:NODOZE"

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 5433
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    .line 5434
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    invoke-virtual {p3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5435
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 5436
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    aget v3, v3, v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 5435
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    .line 5437
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 5438
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->onScreenOnFromTouch()V

    .line 5440
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
