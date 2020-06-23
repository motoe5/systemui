.class public abstract Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelView$1;,
        Lcom/android/systemui/statusbar/phone/PanelView$2;,
        Lcom/android/systemui/statusbar/phone/PanelView$3;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimateAfterExpanding:Z

.field private mAnimatingOnDown:Z

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mClosing:Z

.field private mCollapsedAndHeadsUpOnDown:Z

.field private mDownTime:J

.field private mExpandLatencyTracking:Z

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field protected mExpanding:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field private mGestureWaitForTouchSlop:Z

.field private mHasLayoutedSinceDown:Z

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mIgnoreXTouchSlop:Z

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mJustPeeked:Z

.field protected mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMinExpandHeight:F

.field private mMotionAborted:Z

.field private mNextCollapseSpeedUpFactor:F

.field private mNotificationsDragEnabled:Z

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPanelUpdateWhenAnimatorEnds:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekTouching:Z

.field protected final mPostCollapseRunnable:Ljava/lang/Runnable;

.field private mShouldUpdateHeight:Z

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field protected mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mUpwardsWhenTresholdReached:Z

.field private mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimateAfterExpanding:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mShouldUpdateHeight:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "-value"    # Landroid/animation/ObjectAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const v4, 0x3f19999a    # 0.6f

    .line 215
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 76
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 77
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 114
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 151
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    .line 1010
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    .line 1237
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-direct {v0, p1, v4, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-direct {v0, p1, v2, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 220
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 221
    const v3, 0x3e4ccccd    # 0.2f

    .line 222
    const v5, 0x3f570a3d    # 0.84f

    move-object v1, p1

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 223
    new-instance v0, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 224
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 225
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    .line 227
    return-void
.end method

.method private abortAnimations()V
    .locals 1

    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1095
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1097
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1098
    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "targetHeight"    # F

    .prologue
    .line 1207
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1208
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1214
    return-object v0
.end method

.method private endClosing()V
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 657
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    .line 659
    :cond_0
    return-void
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FFZ)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "forceCancel"    # Z

    .prologue
    .line 458
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 459
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    if-nez v13, :cond_1

    .line 460
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v13, p2, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_7

    .line 464
    :cond_1
    const/4 v11, 0x0

    .line 465
    .local v11, "vel":F
    const/4 v10, 0x0

    .line 466
    .local v10, "vectorVel":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v13, :cond_2

    .line 467
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    const/16 v14, 0x3e8

    invoke-interface {v13, v14}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->computeCurrentVelocity(I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v13}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v11

    .line 470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v13}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getXVelocity()F

    move-result v13

    float-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v13}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v13

    float-to-double v0, v13

    move-wide/from16 v16, v0

    .line 469
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    double-to-float v10, v14

    .line 472
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v11, v10, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result v13

    if-nez v13, :cond_3

    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_8

    .line 472
    :cond_3
    const/4 v5, 0x1

    .line 475
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v14

    .line 477
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v15

    .line 475
    invoke-static {v5, v13, v14, v15}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    .line 479
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v4

    .line 481
    .local v4, "displayDensity":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v13, p3, v13

    div-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v7, v13

    .line 482
    .local v7, "heightDp":I
    div-float v13, v11, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v12, v13

    .line 483
    .local v12, "velocityDp":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 484
    const/16 v14, 0xba

    .line 483
    invoke-virtual {v13, v14, v7, v12}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 487
    .end local v4    # "displayDensity":F
    .end local v7    # "heightDp":I
    .end local v12    # "velocityDp":I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->isFalseTouch(FF)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5, v13}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZZ)V

    .line 488
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 489
    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    xor-int/lit8 v13, v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 490
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz v13, :cond_5

    .line 491
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    .line 507
    .end local v10    # "vectorVel":F
    .end local v11    # "vel":F
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v13, :cond_6

    .line 508
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v13}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 509
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 511
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 512
    return-void

    .line 461
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v13, p3, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_1

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_1

    .line 459
    if-nez p4, :cond_1

    .line 493
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_b

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    .line 495
    .local v8, "timePassed":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v13

    int-to-long v14, v13

    cmp-long v13, v8, v14

    if-gez v13, :cond_a

    .line 497
    const-wide/16 v14, 0x168

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getPeekHeight()F

    move-result v13

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v13, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation(JFZ)V

    goto :goto_2

    .line 474
    .end local v8    # "timePassed":J
    .restart local v10    # "vectorVel":F
    .restart local v11    # "vel":F
    :cond_8
    move/from16 v5, p4

    .local v5, "expand":Z
    goto/16 :goto_0

    .line 489
    .end local v5    # "expand":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 500
    .end local v10    # "vectorVel":F
    .end local v11    # "vel":F
    .restart local v8    # "timePassed":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/PanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 503
    .end local v8    # "timePassed":J
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    move-result v6

    .line 504
    .local v6, "expands":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    goto/16 :goto_2
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 524
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 523
    .end local v0    # "factor":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "factor":F
    goto :goto_0
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerFactory;->obtain(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 666
    return-void
.end method

.method private isDirectionUpwards(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 433
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v0, p1, v3

    .line 434
    .local v0, "xDiff":F
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v1, p2, v3

    .line 435
    .local v1, "yDiff":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 436
    return v2

    .line 438
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isFalseTouch(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    return v1

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    return v0

    .line 716
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_2

    .line 717
    const/4 v0, 0x1

    return v0

    .line 719
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpwardsWhenTresholdReached:Z

    if-eqz v0, :cond_3

    .line 720
    return v1

    .line 722
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->isDirectionUpwards(FF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private notifyExpandingStarted()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 170
    :cond_0
    return-void
.end method

.method private runPeekAnimation(JFZ)V
    .locals 5
    .param p1, "duration"    # J
    .param p3, "peekHeight"    # F
    .param p4, "collapseWhenFinished"    # Z

    .prologue
    const/4 v4, 0x1

    .line 181
    iput p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 189
    :cond_1
    const-string/jumbo v0, "expandedHeight"

    new-array v1, v4, [F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$4;

    invoke-direct {v1, p0, p4}, Lcom/android/systemui/statusbar/phone/PanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 211
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 212
    return-void
.end method

.method private setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1181
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    if-eqz v0, :cond_0

    .line 1182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    .line 1183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 1185
    :cond_0
    return-void
.end method

.method private startOpening()V
    .locals 4

    .prologue
    .line 421
    const-wide/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOpeningHeight()F

    move-result v2

    .line 422
    const/4 v3, 0x0

    .line 421
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation(JFZ)V

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 424
    return-void
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v6, 0xfa

    .line 1138
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1139
    .local v1, "target":F
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1140
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1141
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1142
    new-instance v2, Lcom/android/systemui/statusbar/phone/PanelView$8;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1160
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1161
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 1162
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1163
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    neg-float v3, v3

    .line 1162
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1165
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1162
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1166
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 1162
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1177
    return-void
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1192
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1193
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1194
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1202
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1203
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 1204
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 241
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 242
    .local v1, "deltaY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->addMovement(Landroid/view/MotionEvent;)V

    .line 244
    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 245
    return-void
.end method


# virtual methods
.method public canPanelBeCollapsed()Z
    .locals 1

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract cancelExpandImmediate()V
.end method

.method protected cancelHeightAnimator()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 651
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 652
    return-void
.end method

.method public cancelPeek()V
    .locals 2

    .prologue
    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, "cancelled":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 1021
    const/4 v0, 0x1

    .line 1022
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1025
    :cond_0
    if-eqz v0, :cond_1

    .line 1028
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1030
    :cond_1
    return-void
.end method

.method public collapse(ZF)V
    .locals 4
    .param p1, "delayed"    # Z
    .param p2, "speedUpFactor"    # F

    .prologue
    const/4 v1, 0x0

    .line 991
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 993
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 997
    if-eqz p1, :cond_1

    .line 998
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    .line 999
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p2, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1249
    const-string/jumbo v1, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s touchDisabled=%s]"

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/Object;

    .line 1252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 1253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 1254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 1255
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "T"

    :goto_0
    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 1256
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "T"

    :goto_1
    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 1257
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "T"

    :goto_2
    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x6

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, " (started)"

    :goto_3
    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const/16 v3, 0x8

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, " (started)"

    :goto_4
    const/16 v3, 0x9

    aput-object v0, v2, v3

    .line 1260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "T"

    :goto_5
    const/16 v3, 0xa

    aput-object v0, v2, v3

    .line 1249
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    return-void

    .line 1255
    :cond_0
    const-string/jumbo v0, "f"

    goto :goto_0

    .line 1256
    :cond_1
    const-string/jumbo v0, "f"

    goto :goto_1

    .line 1257
    :cond_2
    const-string/jumbo v0, "f"

    goto :goto_2

    .line 1258
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3

    .line 1259
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_4

    .line 1260
    :cond_5
    const-string/jumbo v0, "f"

    goto :goto_5
.end method

.method public expand(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1035
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelExpandImmediate()V

    .line 1037
    return-void

    .line 1040
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1041
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimateAfterExpanding:Z

    .line 1042
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 1043
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1044
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1045
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    .line 1046
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 1048
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_2

    .line 1049
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1051
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1055
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1056
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 1055
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1078
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestLayout()V

    .line 1079
    return-void
.end method

.method protected fling(FZ)V
    .locals 2
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 726
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    .line 727
    return-void
.end method

.method protected fling(FZFZ)V
    .locals 6
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "collapseSpeedUpFactor"    # F
    .param p4, "expandBecauseOfFalsing"    # Z

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 736
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    :goto_0
    int-to-float v3, v0

    .line 737
    .local v3, "target":F
    if-nez p2, :cond_0

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 740
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    .line 741
    return-void

    .line 736
    .end local v3    # "target":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fling(FZZ)V
    .locals 1
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "expandBecauseOfFalsing"    # Z

    .prologue
    .line 730
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    .line 731
    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 4
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 694
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->isFalseTouch(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    return v0

    .line 697
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 698
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 700
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 10
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "target"    # F
    .param p4, "collapseSpeedUpFactor"    # F
    .param p5, "expandBecauseOfFalsing"    # Z

    .prologue
    const/4 v7, 0x0

    .line 749
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->fullyExpandedClearAllVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 750
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 751
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isClearAllVisible()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 752
    :goto_0
    if-eqz v6, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float p3, v0

    .line 755
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_3

    if-eqz p2, :cond_3

    .line 756
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 757
    return-void

    .line 749
    :cond_2
    const/4 v6, 0x0

    .local v6, "clearAllExpandHack":Z
    goto :goto_0

    .line 759
    .end local v6    # "clearAllExpandHack":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    .line 760
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 761
    .local v1, "animator":Landroid/animation/ValueAnimator;
    if-eqz p2, :cond_7

    .line 762
    if-eqz p5, :cond_4

    cmpg-float v0, p1, v7

    if-gez v0, :cond_4

    .line 763
    const/4 p1, 0x0

    .line 773
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mShouldUpdateHeight:Z

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v3

    int-to-float v5, v3

    move v3, p3

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 781
    cmpl-float v0, p1, v7

    if-nez v0, :cond_5

    .line 782
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 805
    :cond_5
    :goto_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$5;

    invoke-direct {v0, p0, p2, v6}, Lcom/android/systemui/statusbar/phone/PanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;ZZ)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 840
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 841
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 842
    return-void

    .line 759
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 786
    .restart local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldUseDismissingAnimation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 787
    cmpl-float v0, p1, v7

    if-nez v0, :cond_8

    .line 788
    sget-object v0, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 789
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x43480000    # 200.0f

    add-float/2addr v0, v2

    float-to-long v8, v0

    .line 790
    .local v8, "duration":J
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 801
    .end local v8    # "duration":J
    :goto_3
    cmpl-float v0, p1, v7

    if-nez v0, :cond_5

    .line 802
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v0, p4

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 792
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 793
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v3

    int-to-float v5, v3

    move v3, p3

    move v4, p1

    .line 792
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_3

    .line 796
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 797
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v3

    int-to-float v5, v3

    move v3, p3

    move v4, p1

    .line 796
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_3
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getClearAllHeight()I
.end method

.method protected getCurrentExpandVelocity()F
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x0

    return v0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->computeCurrentVelocity(I)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v0

    return v0
.end method

.method public getExpandedFraction()F
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method protected abstract getOpeningHeight()F
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected abstract getPeekHeight()F
.end method

.method protected abstract hasConflictingGestures()Z
.end method

.method public instantCollapse()V
    .locals 1

    .prologue
    .line 1082
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1083
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 1084
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1087
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-eqz v0, :cond_1

    .line 1088
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1089
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1091
    :cond_1
    return-void
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return v0
.end method

.method public isFullyCollapsed()Z
    .locals 2

    .prologue
    .line 974
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpanded()Z
    .locals 2

    .prologue
    .line 970
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected abstract isPanelVisibleBecauseOfHeadsUp()Z
.end method

.method protected isScrolledToBottom()Z
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return v0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_PanelView_35745()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 904
    const/4 v1, 0x0

    .line 903
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method protected loadDimens()V
    .locals 3

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 231
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 232
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    .line 233
    const v2, 0x7f0700a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    .line 234
    const v2, 0x7f0702cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    .line 235
    return-void
.end method

.method protected notifyBarPanelExpansionChanged()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1218
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 1219
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_1

    .line 1218
    :cond_0
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 1221
    return-void

    .line 1219
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1218
    if-nez v3, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v3

    .line 1218
    if-nez v3, :cond_0

    .line 1220
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 1218
    if-nez v3, :cond_0

    .line 1220
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyExpandingFinished()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 178
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 848
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 849
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    .line 850
    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 1102
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 684
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 685
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 686
    return-void
.end method

.method protected onEmptySpaceClick(F)Z
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 1231
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 1232
    const/4 v0, 0x1

    return v0

    .line 1234
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onMiddleClicked()Z

    move-result v0

    return v0
.end method

.method protected onExpandingFinished()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 160
    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 678
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 679
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 680
    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 547
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-nez v8, :cond_0

    .line 548
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eqz v8, :cond_1

    .line 549
    :cond_0
    return v10

    .line 560
    :cond_1
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 561
    .local v3, "pointerIndex":I
    if-gez v3, :cond_2

    .line 562
    const/4 v3, 0x0

    .line 563
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 565
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 566
    .local v6, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 567
    .local v7, "y":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isScrolledToBottom()Z

    move-result v4

    .line 569
    .local v4, "scrolledToBottom":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 636
    :cond_3
    :goto_0
    :pswitch_0
    return v10

    .line 571
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 572
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_6

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    .line 573
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    .line 575
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_5

    .line 576
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v8, :cond_7

    .line 577
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 578
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 579
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 580
    return v9

    :cond_6
    move v8, v10

    .line 572
    goto :goto_1

    .line 582
    :cond_7
    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 583
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 584
    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/PanelView;->isInContentBounds(FF)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    .line 585
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 586
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 587
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 588
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 589
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    .line 590
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 591
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 592
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    .line 594
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 597
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 598
    .local v5, "upPointer":I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v8, v5, :cond_3

    .line 600
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v8, v5, :cond_8

    const/4 v2, 0x0

    .line 601
    .local v2, "newIndex":I
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 602
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 603
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    goto :goto_0

    .line 600
    .end local v2    # "newIndex":I
    :cond_8
    const/4 v2, 0x1

    .restart local v2    # "newIndex":I
    goto :goto_2

    .line 607
    .end local v2    # "newIndex":I
    .end local v5    # "upPointer":I
    :pswitch_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v8

    if-ne v8, v9, :cond_3

    .line 608
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 609
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v8, :cond_3

    .line 610
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 611
    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    goto/16 :goto_0

    .line 616
    :pswitch_4
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v0, v7, v8

    .line 617
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 618
    if-nez v4, :cond_9

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v8, :cond_3

    .line 619
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 620
    .local v1, "hAbs":F
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-ltz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_3

    .line 621
    :cond_a
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_3

    .line 622
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 623
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v6, v7, v9, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 624
    return v9

    .line 630
    .end local v0    # "h":F
    .end local v1    # "hAbs":F
    :pswitch_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v8, :cond_3

    .line 631
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 632
    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    goto/16 :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    .line 863
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 864
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPanelLaidOut()V

    .line 865
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 866
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 867
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz v0, :cond_0

    .line 868
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 869
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 872
    :cond_0
    return-void
.end method

.method protected abstract onMiddleClicked()Z
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 268
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-nez v9, :cond_0

    .line 269
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    if-eqz v9, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_1

    .line 270
    :cond_0
    return v11

    .line 274
    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    if-nez v9, :cond_3

    .line 275
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v9, :cond_2

    .line 277
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 279
    :cond_2
    return v11

    .line 283
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x2002

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v10, :cond_4

    .line 285
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->expand(Z)V

    .line 287
    :cond_4
    return v10

    .line 299
    :cond_5
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 300
    .local v5, "pointerIndex":I
    if-gez v5, :cond_6

    .line 301
    const/4 v5, 0x0

    .line 302
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 304
    :cond_6
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 305
    .local v7, "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 307
    .local v8, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-nez v9, :cond_7

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->hasConflictingGestures()Z

    move-result v9

    :goto_0
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldGestureIgnoreXTouchSlop(FF)Z

    move-result v9

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIgnoreXTouchSlop:Z

    .line 312
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 417
    :cond_8
    :goto_2
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v9, :cond_9

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    :cond_9
    return v10

    :cond_a
    move v9, v10

    .line 308
    goto :goto_0

    :cond_b
    move v9, v10

    .line 309
    goto :goto_1

    .line 314
    :pswitch_1
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v7, v8, v11, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 315
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 316
    iput v13, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 318
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 319
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 320
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 321
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    .line 323
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 325
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v9

    .line 324
    :goto_3
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    .line 326
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-nez v9, :cond_c

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    .line 329
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 330
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_e

    .line 331
    :cond_d
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_11

    .line 332
    :cond_e
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_13

    .line 333
    :cond_f
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_10

    move v11, v10

    .line 332
    :cond_10
    :goto_4
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 338
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startOpening()V

    goto/16 :goto_2

    :cond_12
    move v9, v11

    .line 324
    goto :goto_3

    :cond_13
    move v11, v10

    .line 332
    goto :goto_4

    .line 344
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 345
    .local v6, "upPointer":I
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v9, v6, :cond_8

    .line 347
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-eq v9, v6, :cond_14

    const/4 v2, 0x0

    .line 348
    .local v2, "newIndex":I
    :goto_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 349
    .local v4, "newY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 350
    .local v3, "newX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 351
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v3, v4, v10, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    goto/16 :goto_2

    .line 347
    .end local v2    # "newIndex":I
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :cond_14
    const/4 v2, 0x1

    .restart local v2    # "newIndex":I
    goto :goto_5

    .line 355
    .end local v2    # "newIndex":I
    .end local v6    # "upPointer":I
    :pswitch_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v9

    if-ne v9, v10, :cond_8

    .line 356
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 357
    invoke-direct {p0, p1, v7, v8, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    .line 358
    return v11

    .line 362
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 363
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v0, v8, v9

    .line 367
    .local v0, "h":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v12, v12

    cmpl-float v9, v9, v12

    if-lez v9, :cond_17

    .line 368
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v9, v9, v12

    if-gtz v9, :cond_15

    .line 369
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIgnoreXTouchSlop:Z

    .line 367
    if-eqz v9, :cond_17

    .line 370
    :cond_15
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 371
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v9, :cond_17

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_17

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_17

    .line 372
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez v9, :cond_16

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    cmpl-float v9, v9, v13

    if-eqz v9, :cond_16

    .line 376
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    iget v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_16

    .line 377
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v7, v8, v11, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 378
    const/4 v0, 0x0

    .line 382
    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 386
    :cond_17
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    add-float/2addr v9, v0

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 387
    .local v1, "newHeight":F
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    cmpl-float v9, v1, v9

    if-lez v9, :cond_1c

    .line 388
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_18

    .line 389
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 391
    :cond_18
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 400
    :cond_19
    :goto_6
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 401
    neg-float v9, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFalsingThreshold()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v9, v9, v11

    if-ltz v9, :cond_1a

    .line 402
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 403
    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->isDirectionUpwards(FF)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpwardsWhenTresholdReached:Z

    .line 405
    :cond_1a
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez v9, :cond_8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v9, :cond_1b

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v9, :cond_8

    .line 406
    :cond_1b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 405
    if-eqz v9, :cond_8

    .line 407
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    goto/16 :goto_2

    .line 392
    :cond_1c
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v9, :cond_19

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v9, :cond_19

    .line 395
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 396
    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 397
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 398
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    goto :goto_6

    .line 413
    .end local v0    # "h":F
    .end local v1    # "newHeight":F
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 414
    invoke-direct {p0, p1, v7, v8, v11}, Lcom/android/systemui/statusbar/phone/PanelView;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    goto/16 :goto_2

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onTrackingStarted()V
    .locals 1

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 543
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 534
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 535
    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    .line 1128
    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUnlockHintStarted()V

    .line 1132
    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .locals 2

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v0, v1

    .line 877
    .local v0, "currentMaxPanelHeight":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    return-void

    .line 881
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 882
    return-void

    .line 885
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    if-eqz v1, :cond_3

    .line 886
    :cond_2
    return-void

    .line 889
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 890
    return-void

    .line 893
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    .line 894
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    .line 895
    return-void

    .line 898
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 899
    return-void
.end method

.method public resetPanelViewForFPS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1288
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 1291
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 1293
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 1296
    :cond_2
    return-void
.end method

.method public abstract resetViews()V
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "panelBar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 987
    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1
    .param p1, "frac"    # F

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 959
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 859
    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 7
    .param p1, "h"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 902
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    if-eqz v3, :cond_0

    cmpl-float v3, p1, v2

    if-eqz v3, :cond_0

    .line 903
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$-GB1oJTzKavveOkbg4uteUTJmbI;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$-GB1oJTzKavveOkbg4uteUTJmbI;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 905
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v4

    sub-float v0, v3, v4

    .line 908
    .local v0, "fhWithoutOverExpansion":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_4

    .line 909
    sub-float v3, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 910
    .local v1, "overExpansionPixels":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v3, :cond_1

    .line 911
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    .line 913
    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 923
    .end local v1    # "overExpansionPixels":F
    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v3, :cond_3

    .line 924
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 925
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    .line 926
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 930
    :cond_3
    cmpl-float v3, v0, v2

    if-nez v3, :cond_5

    .line 929
    :goto_1
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 931
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->onHeightUpdated(F)V

    .line 932
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 933
    return-void

    .line 915
    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 916
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    if-eqz v3, :cond_2

    .line 917
    sub-float v3, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    goto :goto_0

    .line 930
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    div-float/2addr v2, v0

    goto :goto_1
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 1281
    return-void
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 256
    :cond_1
    return-void
.end method

.method protected abstract shouldGestureIgnoreXTouchSlop(FF)Z
.end method

.method protected abstract shouldUseDismissingAnimation()Z
.end method

.method public startExpandLatencyTracking()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 261
    const/4 v1, 0x0

    .line 260
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    .line 264
    :cond_0
    return-void
.end method

.method protected startExpandMotion(FFZF)V
    .locals 1
    .param p1, "newX"    # F
    .param p2, "newY"    # F
    .param p3, "startTracking"    # Z
    .param p4, "expandedHeight"    # F

    .prologue
    .line 447
    iput p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 448
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 449
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 450
    if-eqz p3, :cond_0

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 452
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 455
    :cond_0
    return-void
.end method

.method protected startExpandingFromPeek()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handlePeekToExpandTransistion()V

    .line 443
    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    .line 1110
    :cond_0
    return-void

    .line 1112
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1114
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 1122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintStarted()V

    .line 1123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 1124
    return-void
.end method
