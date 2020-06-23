.class public Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.super Landroid/view/ViewGroup;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Lcom/android/systemui/statusbar/policy/ScrollAdapter;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;
.implements Lcom/android/systemui/statusbar/stack/ScrollContainer;
.implements Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_FADE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivateNeedsAnimation:Z

.field private mActivePointerId:I

.field private mAddedHeadsUpChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimateNextBackgroundBottom:Z

.field private mAnimateNextBackgroundTop:Z

.field private mAnimateScroll:Ljava/lang/Runnable;

.field private mAnimationEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationFinishedRunnables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationRunning:Z

.field private mAnimationsEnabled:Z

.field private mBackgroundBounds:Landroid/graphics/Rect;

.field private mBackgroundFadeAmount:F

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackwardScrollable:Z

.field private mBgColor:I

.field private mBottomAnimator:Landroid/animation/ObjectAnimator;

.field private mBottomInset:I

.field private mCachedBackgroundColor:I

.field private mChangePositionInProgress:Z

.field mCheckForLeavebehind:Z

.field private mChildTransferInProgress:Z

.field private mChildrenChangingPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToAddAnimated:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToRemoveAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenUpdateRequested:Z

.field private mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mClearOverlayViewsWhenFinished:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mClipRect:Landroid/graphics/Rect;

.field private mCollapsedSize:I

.field private mContentHeight:I

.field private mContinuousShadowUpdate:Z

.field private mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

.field private mCurrentBounds:Landroid/graphics/Rect;

.field private mCurrentStackHeight:I

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mDarkAnimationOriginIndex:I

.field private mDarkNeedsAnimation:Z

.field private mDimAmount:F

.field private mDimAnimator:Landroid/animation/ValueAnimator;

.field private mDimEndListener:Landroid/animation/Animator$AnimatorListener;

.field private mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDimmedNeedsAnimation:Z

.field private mDisallowDismissInThisMotion:Z

.field private mDisallowScrollingInThisMotion:Z

.field private mDismissAllInProgress:Z

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field private mDontClampNextScroll:Z

.field private mDontReportNextOverScroll:Z

.field private mDownX:I

.field private mDragAnimPendingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawBackgroundAsSrc:Z

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mEndAnimationRect:Landroid/graphics/Rect;

.field private mEverythingNeedsAnimation:Z

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mExpandedGroupView:Landroid/view/View;

.field private mExpandedHeight:F

.field private mExpandedInThisMotion:Z

.field private mExpandingNotification:Z

.field private mFadingOut:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFinishScrollingCallback:Ljava/lang/Runnable;

.field private mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mForceNoOverlappingRendering:Z

.field private mForcedScroll:Landroid/view/View;

.field private mForwardScrollable:Z

.field private mFromMoreCardAdditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGenerateChildOrderChangedEvent:Z

.field private mGoToFullShadeDelay:J

.field private mGoToFullShadeNeedsAnimation:Z

.field private mGroupExpandedForMeasure:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpChangeAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHideSensitiveNeedsAnimation:Z

.field private mInHeadsUpPinnedMode:Z

.field private mIncreasedPaddingBetweenElements:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntrinsicPadding:I

.field private mIsBeingDragged:Z

.field private mIsClipped:Z

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mLastMotionY:I

.field private mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mMaxDisplayedNotifications:I

.field private mMaxLayoutHeight:I

.field private mMaxOverScroll:F

.field private mMaxScrollAfterExpand:I

.field private mMaximumVelocity:I

.field private mMenuExposedView:Landroid/view/View;

.field private mMinTopOverScrollToEscape:F

.field private mMinimumVelocity:I

.field private mNeedViewResizeAnimation:Z

.field private mNeedsAnimation:Z

.field private mNoAmbient:Z

.field private mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

.field private mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mOnlyScrollingInThisMotion:Z

.field private mOverScrolledBottomPixels:F

.field private mOverScrolledTopPixels:F

.field private mOverflingDistance:I

.field private mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

.field private mOwnScrollY:I

.field private mPaddingBetweenElements:I

.field private mPanelTracking:Z

.field private mParentNotFullyVisible:Z

.field private mPulsing:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mQsContainer:Landroid/view/ViewGroup;

.field private mQsExpanded:Z

.field private mReclamp:Ljava/lang/Runnable;

.field private mRequestedClipBounds:Landroid/graphics/Rect;

.field private mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrollable:Z

.field private mScrolledToTopOnFirstDown:Z

.field private mScroller:Landroid/widget/OverScroller;

.field protected mScrollingEnabled:Z

.field private mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private final mShouldDrawNotificationBackground:Z

.field private mSnappedBackChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcMode:Landroid/graphics/PorterDuffXfermode;

.field protected final mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private mStackTranslation:F

.field private mStartAnimationRect:Landroid/graphics/Rect;

.field private final mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarHeight:I

.field private mStatusBarState:I

.field private mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

.field private mSwipedOutViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipingInProgress:Z

.field private mTempInt2:[I

.field private final mTmpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTmpSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mTopAnimator:Landroid/animation/ObjectAnimator;

.field private mTopPadding:I

.field private mTopPaddingNeedsAnimation:Z

.field private mTopPaddingOverflow:F

.field private mTouchIsClick:Z

.field private mTouchSlop:I

.field private mTrackingHeadsUp:Z

.field private mTranslatingParentView:Landroid/view/View;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewPositionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "-value"    # Landroid/animation/ObjectAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "-value"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "-value"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "-value"    # Landroid/animation/ObjectAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "-value"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForcedScroll()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleChildDismissed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPreDrawDuringAnimation()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "fadeAmount"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundFadeAmount(F)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "dimAmount"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 347
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;

    const-string/jumbo v1, "backgroundFade"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;-><init>(Ljava/lang/String;)V

    .line 346
    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->BACKGROUND_FADE:Landroid/util/Property;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 376
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 384
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 388
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    const v3, 0x7fffffff

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 121
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 139
    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 150
    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 160
    new-instance v3, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 163
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 164
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    .line 169
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    .line 172
    new-instance v3, Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 198
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 251
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 250
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 262
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    .line 264
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    .line 265
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearOverlayViewsWhenFinished:Ljava/util/HashSet;

    .line 267
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 266
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    .line 276
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 275
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 283
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    .line 284
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    .line 285
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    .line 286
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    .line 289
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 290
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 291
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 292
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 296
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    .line 297
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 304
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 303
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 314
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 313
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 322
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    .line 337
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSrcMode:Landroid/graphics/PorterDuffXfermode;

    .line 345
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    .line 362
    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 365
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    .line 372
    new-instance v3, Lcom/android/systemui/statusbar/stack/-$Lambda$ZV-wNMqZGfszPBY4iuK-lPbhhoA;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/-$Lambda$ZV-wNMqZGfszPBY4iuK-lPbhhoA;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateScroll:Ljava/lang/Runnable;

    .line 1225
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 391
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 392
    const v3, 0x7f06009d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    .line 393
    const v3, 0x7f0701e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 394
    .local v1, "minHeight":I
    const v3, 0x7f0701dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 395
    .local v0, "maxHeight":I
    new-instance v3, Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 397
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 398
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p0}, Lcom/android/systemui/ExpandHelper;->setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V

    .line 399
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v6, p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    .line 400
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .line 402
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 403
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 405
    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 404
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateWillNotDraw()V

    .line 414
    return-void
.end method

.method private abortBackgroundAnimators()V
    .locals 1

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2074
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2076
    :cond_1
    return-void
.end method

.method private animateDimmed(Z)V
    .locals 4
    .param p1, "dimmed"    # Z

    .prologue
    .line 3546
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 3547
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3549
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3550
    .local v0, "target":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 3551
    return-void

    .line 3549
    .end local v0    # "target":F
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "target":F
    goto :goto_0

    .line 3553
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/TimeAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    .line 3554
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3555
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3556
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3557
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3558
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 3559
    return-void
.end method

.method private animateScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1636
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1637
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1638
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    .line 1640
    .local v3, "y":I
    if-eq v1, v3, :cond_2

    .line 1641
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    .line 1642
    .local v2, "range":I
    if-gez v3, :cond_4

    if-ltz v1, :cond_4

    .line 1643
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    .line 1644
    .local v0, "currVelocity":F
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    .line 1645
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 1649
    .end local v0    # "currVelocity":F
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    if-eqz v4, :cond_1

    .line 1650
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1652
    :cond_1
    sub-int v4, v3, v1

    .line 1653
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v5, v5

    .line 1652
    invoke-direct {p0, v4, v1, v2, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)Z

    .line 1656
    .end local v2    # "range":I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1663
    .end local v1    # "oldY":I
    .end local v3    # "y":I
    :cond_3
    :goto_1
    return-void

    .line 1642
    .restart local v1    # "oldY":I
    .restart local v2    # "range":I
    .restart local v3    # "y":I
    :cond_4
    if-le v3, v2, :cond_0

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 1658
    .end local v1    # "oldY":I
    .end local v2    # "range":I
    .end local v3    # "y":I
    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    .line 1659
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 1660
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private applyCurrentBackgroundBounds()V
    .locals 2

    .prologue
    .line 2199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    .line 2200
    return-void

    .line 2203
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 2204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 2203
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExcludedBackgroundArea(Landroid/graphics/Rect;)V

    .line 2206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 2207
    return-void

    .line 2205
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private applyCurrentState()V
    .locals 1

    .prologue
    .line 3594
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    .line 3595
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    if-eqz v0, :cond_0

    .line 3596
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 3598
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 3599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3600
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 3601
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 3602
    return-void
.end method

.method private areBoundsAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2079
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clampPadding(I)I
    .locals 1
    .param p1, "desiredPadding"    # I

    .prologue
    .line 2424
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private clampScrollPosition()V
    .locals 2

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 701
    .local v0, "scrollRange":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_0

    .line 702
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 704
    :cond_0
    return-void
.end method

.method private clearHeadsUpDisappearRunning()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3497
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 3498
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3499
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 3500
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3501
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3502
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3503
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3504
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    goto :goto_1

    .line 3497
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3509
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private clearTemporaryViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 3380
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3381
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto :goto_0

    .line 3383
    :cond_0
    if-eqz p1, :cond_1

    .line 3384
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 3386
    :cond_1
    return-void
.end method

.method private clearViewOverlays()V
    .locals 3

    .prologue
    .line 3512
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearOverlayViewsWhenFinished:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "view$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3513
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeFromOverlay(Landroid/view/View;)V

    goto :goto_0

    .line 3515
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearOverlayViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 3516
    return-void
.end method

.method private customOverScrollBy(IIII)Z
    .locals 4
    .param p1, "deltaY"    # I
    .param p2, "scrollY"    # I
    .param p3, "scrollRangeY"    # I
    .param p4, "maxOverScrollY"    # I

    .prologue
    .line 1668
    add-int v2, p2, p1

    .line 1669
    .local v2, "newScrollY":I
    neg-int v3, p4

    .line 1670
    .local v3, "top":I
    add-int v0, p4, p3

    .line 1672
    .local v0, "bottom":I
    const/4 v1, 0x0

    .line 1673
    .local v1, "clampedY":Z
    if-le v2, v0, :cond_1

    .line 1674
    move v2, v0

    .line 1675
    const/4 v1, 0x1

    .line 1681
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onCustomOverScrolled(IZ)V

    .line 1683
    return v1

    .line 1676
    :cond_1
    if-ge v2, v3, :cond_0

    .line 1677
    move v2, v3

    .line 1678
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private dispatchDownEventToScroller(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1337
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1338
    .local v0, "downEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1339
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 1340
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1341
    return-void
.end method

.method private endDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2452
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 2454
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 2456
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2457
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2459
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2460
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2462
    :cond_1
    return-void
.end method

.method private findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I
    .locals 4
    .param p1, "screenLocation"    # Landroid/graphics/PointF;

    .prologue
    const/4 v3, -0x1

    .line 3726
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 3727
    :cond_0
    return v3

    .line 3729
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 3730
    const/4 v1, -0x2

    return v1

    .line 3732
    :cond_2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 3733
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 3734
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneIndex(Landroid/view/View;)I

    move-result v1

    return v1

    .line 3736
    :cond_3
    return v3
.end method

.method private focusNextViewIfFocused(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2595
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 2596
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2597
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldRefocusOnDismiss()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2598
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAfterViewWhenDismissed()Landroid/view/View;

    move-result-object v1

    .line 2599
    .local v1, "nextView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 2600
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGroupParentWhenDismissed()Landroid/view/View;

    move-result-object v0

    .line 2601
    .local v0, "groupParentWhenDismissed":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2602
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 2603
    :goto_0
    const/4 v4, 0x1

    .line 2601
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v1

    .line 2605
    .end local v0    # "groupParentWhenDismissed":Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_1

    .line 2606
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2611
    .end local v1    # "nextView":Landroid/view/View;
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void

    .line 2603
    .restart local v0    # "groupParentWhenDismissed":Landroid/view/View;
    .restart local v1    # "nextView":Landroid/view/View;
    .restart local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    goto :goto_0
.end method

.method private generateActivateEvent()V
    .locals 4

    .prologue
    .line 3104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3105
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3106
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3108
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 3109
    return-void
.end method

.method private generateAnimateEverythingEvent()V
    .locals 4

    .prologue
    .line 3112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3113
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3114
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3116
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 3117
    return-void
.end method

.method private generateChildAdditionEvents()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3081
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3082
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3083
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3085
    const-wide/16 v4, 0x168

    .line 3083
    invoke-direct {v3, v0, v6, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3087
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3091
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 3092
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 3093
    return-void
.end method

.method private generateChildHierarchyEvents()V
    .locals 1

    .prologue
    .line 2942
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimationEvents()V

    .line 2943
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildRemovalEvents()V

    .line 2944
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildAdditionEvents()V

    .line 2945
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generatePositionChangeEvents()V

    .line 2946
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateSnapBackEvents()V

    .line 2947
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDragEvents()V

    .line 2948
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateTopPaddingEvent()V

    .line 2949
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateActivateEvent()V

    .line 2950
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDimmedEvent()V

    .line 2951
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHideSensitiveEvent()V

    .line 2952
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDarkEvent()V

    .line 2953
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGoToFullShadeEvent()V

    .line 2954
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateViewResizeEvent()V

    .line 2955
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGroupExpansionEvent()V

    .line 2956
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAnimateEverythingEvent()V

    .line 2957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2958
    return-void
.end method

.method private generateChildRemovalEvents()V
    .locals 9

    .prologue
    .line 3042
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3043
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 3044
    .local v3, "childWasSwipedOut":Z
    if-eqz v3, :cond_1

    .line 3045
    const/4 v0, 0x2

    .line 3047
    .local v0, "animationType":I
    :goto_1
    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v4, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3050
    .local v4, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v6

    .line 3051
    .local v6, "removedTranslation":F
    const/4 v5, 0x1

    .line 3052
    .local v5, "ignoreChildren":Z
    instance-of v8, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_0

    move-object v7, v1

    .line 3053
    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3054
    .local v7, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3055
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v6

    .line 3056
    const/4 v5, 0x0

    .line 3059
    .end local v7    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    invoke-direct {p0, v6, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v8

    iput-object v8, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 3061
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3062
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3046
    .end local v0    # "animationType":I
    .end local v4    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .end local v5    # "ignoreChildren":Z
    .end local v6    # "removedTranslation":F
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "animationType":I
    goto :goto_1

    .line 3064
    .end local v0    # "animationType":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childWasSwipedOut":Z
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3065
    return-void
.end method

.method private generateDarkEvent()V
    .locals 4

    .prologue
    .line 3136
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    if-eqz v1, :cond_0

    .line 3137
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3139
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 3141
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 3139
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 3137
    const/4 v2, 0x0

    .line 3138
    const/16 v3, 0x9

    .line 3137
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;ILcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 3142
    .local v0, "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->darkAnimationOriginIndex:I

    .line 3143
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBackgroundFadeIn()V

    .line 3146
    .end local v0    # "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 3147
    return-void
.end method

.method private generateDimmedEvent()V
    .locals 4

    .prologue
    .line 3120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3121
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3122
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3124
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 3125
    return-void
.end method

.method private generateDragEvents()V
    .locals 5

    .prologue
    .line 3034
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3035
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3036
    const/4 v4, 0x4

    .line 3035
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3038
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3039
    return-void
.end method

.method private generateGoToFullShadeEvent()V
    .locals 4

    .prologue
    .line 3150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3151
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3152
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 3155
    return-void
.end method

.method private generateGroupExpansionEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3010
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3011
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    .line 3012
    const/16 v3, 0xd

    .line 3011
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3013
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    .line 3015
    :cond_0
    return-void
.end method

.method private generateHeadsUpAnimationEvents()V
    .locals 10

    .prologue
    .line 2961
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "eventPair$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2962
    .local v1, "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2963
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2964
    .local v3, "isHeadsUp":Z
    const/16 v7, 0x11

    .line 2965
    .local v7, "type":I
    const/4 v4, 0x0

    .line 2966
    .local v4, "onBottom":Z
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    xor-int/lit8 v5, v9, 0x1

    .line 2967
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v9, :cond_4

    xor-int/lit8 v9, v3, 0x1

    if-eqz v9, :cond_4

    .line 2968
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasJustClicked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2969
    const/16 v7, 0x10

    .line 2971
    :goto_2
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2973
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 2993
    .end local v4    # "onBottom":Z
    :cond_1
    :goto_3
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 2994
    .local v0, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    .line 2995
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2966
    .end local v0    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .restart local v4    # "onBottom":Z
    :cond_2
    const/4 v5, 0x0

    .local v5, "pinnedAndClosed":Z
    goto :goto_1

    .line 2970
    .end local v5    # "pinnedAndClosed":Z
    :cond_3
    const/16 v7, 0xf

    goto :goto_2

    .line 2976
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v9, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v8

    .line 2977
    .local v8, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v8, :cond_0

    .line 2982
    if-eqz v3, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v5, :cond_1

    .line 2983
    :cond_5
    if-nez v5, :cond_6

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2985
    :cond_6
    const/16 v7, 0xe

    .line 2990
    :goto_4
    xor-int/lit8 v4, v5, 0x1

    .local v4, "onBottom":Z
    goto :goto_3

    .line 2988
    .local v4, "onBottom":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 2997
    .end local v1    # "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    .end local v3    # "isHeadsUp":Z
    .end local v4    # "onBottom":Z
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "type":I
    .end local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 2998
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2999
    return-void
.end method

.method private generateHideSensitiveEvent()V
    .locals 4

    .prologue
    .line 3128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3129
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3130
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3132
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 3133
    return-void
.end method

.method private generatePositionChangeEvents()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 3068
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3069
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3072
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3073
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    if-eqz v2, :cond_1

    .line 3074
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3076
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    .line 3078
    :cond_1
    return-void
.end method

.method private generateRemoveAnimation(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2626
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2627
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2628
    return v1

    .line 2630
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isClickedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2632
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearOverlayViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2633
    return v2

    .line 2635
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isChildInInvisibleGroup(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2636
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2638
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2639
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2640
    return v2

    .line 2642
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2643
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2644
    return v1

    .line 2647
    :cond_3
    return v1
.end method

.method private generateSnapBackEvents()V
    .locals 5

    .prologue
    .line 3026
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3027
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3028
    const/4 v4, 0x5

    .line 3027
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3030
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3031
    return-void
.end method

.method private generateTopPaddingEvent()V
    .locals 4

    .prologue
    .line 3096
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3097
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3098
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3097
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3100
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 3101
    return-void
.end method

.method private generateViewResizeEvent()V
    .locals 4

    .prologue
    .line 3018
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    if-eqz v0, :cond_0

    .line 3019
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3020
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3019
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3022
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 3023
    return-void
.end method

.method private getAppearEndPosition()F
    .locals 5

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v2

    .line 819
    .local v2, "notGoneChildCount":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_3

    .line 820
    const/4 v1, 0x1

    .line 821
    .local v1, "minNotificationsForShelf":I
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 822
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopHeadsUpPinnedHeight()I

    move-result v0

    .line 823
    .local v0, "appearPosition":I
    const/4 v1, 0x2

    .line 827
    :goto_0
    if-lt v2, v1, :cond_1

    .line 828
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 833
    .end local v1    # "minNotificationsForShelf":I
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    :goto_2
    add-int/2addr v3, v0

    int-to-float v3, v3

    return v3

    .line 825
    .end local v0    # "appearPosition":I
    .restart local v1    # "minNotificationsForShelf":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "appearPosition":I
    goto :goto_0

    .line 831
    .end local v0    # "appearPosition":I
    .end local v1    # "minNotificationsForShelf":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->getHeight()I

    move-result v0

    .restart local v0    # "appearPosition":I
    goto :goto_1

    .line 833
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    goto :goto_2
.end method

.method private getAppearStartPosition()F
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isAboveShelf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getPinnedHeadsUpHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getExpandTranslationStart()F
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    neg-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method private getFirstChildBelowTranlsationY(FZ)Landroid/view/View;
    .locals 10
    .param p1, "translationY"    # F
    .param p2, "ignoreChildren"    # Z

    .prologue
    .line 1882
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1883
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1884
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1885
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 1883
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1888
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 1889
    .local v7, "rowTranslation":F
    cmpl-float v8, v7, p1

    if-ltz v8, :cond_2

    .line 1890
    return-object v0

    .line 1891
    :cond_2
    if-nez p2, :cond_0

    instance-of v8, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_0

    move-object v5, v0

    .line 1892
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1893
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1895
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v4

    .line 1896
    .local v4, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 1898
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1899
    .local v6, "rowChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v8

    add-float/2addr v8, v7

    cmpl-float v8, v8, p1

    if-ltz v8, :cond_3

    .line 1900
    return-object v6

    .line 1897
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1906
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    .end local v4    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "rowChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "rowTranslation":F
    :cond_4
    const/4 v8, 0x0

    return-object v8
.end method

.method private getFirstChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 5

    .prologue
    .line 2305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 2306
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2307
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2308
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v3, v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v3, :cond_0

    .line 2309
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v0, v3, :cond_0

    .line 2310
    check-cast v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .end local v0    # "child":Landroid/view/View;
    return-object v0

    .line 2306
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2313
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getImeInset()I
    .locals 3

    .prologue
    .line 1842
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getIntrinsicHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2729
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2730
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2731
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 2733
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1
.end method

.method private getLastChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 5

    .prologue
    .line 2293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 2294
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2295
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2296
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v3, v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v3, :cond_0

    .line 2297
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v0, v3, :cond_0

    .line 2298
    check-cast v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .end local v0    # "child":Landroid/view/View;
    return-object v0

    .line 2294
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2301
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getLayoutHeight()I
    .locals 2

    .prologue
    .line 866
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getNotGoneIndex(Landroid/view/View;)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 3742
    .local v0, "count":I
    const/4 v2, 0x0

    .line 3743
    .local v2, "notGoneIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3744
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3745
    .local v3, "v":Landroid/view/View;
    if-ne p1, v3, :cond_0

    .line 3746
    return v2

    .line 3748
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 3749
    add-int/lit8 v2, v2, 0x1

    .line 3743
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3752
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method private getPositionInLinearLayout(Landroid/view/View;)I
    .locals 14
    .param p1, "requestedView"    # Landroid/view/View;

    .prologue
    .line 2737
    const/4 v1, 0x0

    .line 2738
    .local v1, "childInGroup":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v10, 0x0

    .line 2739
    .local v10, "requestedRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isChildInGroup(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v1, p1

    .line 2742
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2743
    .local v1, "childInGroup":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v10

    .local v10, "requestedRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object p1, v10

    .line 2745
    .end local v1    # "childInGroup":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v10    # "requestedRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    const/4 v7, 0x0

    .line 2746
    .local v7, "position":I
    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v9, v11

    .line 2747
    .local v9, "previousPaddingRequest":F
    const/4 v8, 0x0

    .line 2748
    .local v8, "previousPaddingAmount":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v11

    if-ge v2, v11, :cond_9

    .line 2749
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2750
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_4

    const/4 v4, 0x1

    .line 2751
    .local v4, "notGone":Z
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->hasNoContentHeight()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    .line 2752
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v3

    .line 2754
    .local v3, "increasedPaddingAmount":F
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-ltz v11, :cond_5

    .line 2757
    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v11, v11

    .line 2755
    invoke-static {v9, v11, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v6, v11

    .line 2760
    .local v6, "padding":F
    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v11, v11

    .line 2761
    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    .line 2759
    invoke-static {v11, v12, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v9, v11

    .line 2778
    :goto_2
    if-eqz v7, :cond_1

    .line 2779
    int-to-float v11, v7

    add-float/2addr v11, v6

    float-to-int v7, v11

    .line 2781
    :cond_1
    move v8, v3

    .line 2783
    .end local v3    # "increasedPaddingAmount":F
    .end local v6    # "padding":F
    :cond_2
    if-ne v0, p1, :cond_7

    .line 2784
    if-eqz v10, :cond_3

    .line 2785
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPositionOfChild(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v11

    add-int/2addr v7, v11

    .line 2787
    :cond_3
    return v7

    .line 2750
    .end local v4    # "notGone":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "notGone":Z
    goto :goto_1

    .line 2765
    .restart local v3    # "increasedPaddingAmount":F
    :cond_5
    const/4 v11, 0x0

    .line 2766
    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v12, v12

    .line 2767
    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v13, v3

    .line 2764
    invoke-static {v11, v12, v13}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v5, v11

    .line 2768
    .local v5, "ownPadding":I
    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-lez v11, :cond_6

    .line 2770
    int-to-float v11, v5

    .line 2771
    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    .line 2769
    invoke-static {v11, v12, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v6, v11

    .line 2776
    .restart local v6    # "padding":F
    :goto_3
    int-to-float v9, v5

    goto :goto_2

    .line 2774
    .end local v6    # "padding":F
    :cond_6
    int-to-float v6, v5

    .restart local v6    # "padding":F
    goto :goto_3

    .line 2789
    .end local v3    # "increasedPaddingAmount":F
    .end local v5    # "ownPadding":I
    .end local v6    # "padding":F
    :cond_7
    if-eqz v4, :cond_8

    .line 2790
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v11

    add-int/2addr v7, v11

    .line 2748
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2793
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v4    # "notGone":Z
    :cond_9
    const/4 v11, 0x0

    return v11
.end method

.method private getRubberBandFactor(Z)F
    .locals 2
    .param p1, "onTop"    # Z

    .prologue
    const v1, 0x3eb33333    # 0.35f

    .line 2428
    if-nez p1, :cond_0

    .line 2429
    return v1

    .line 2431
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v0, :cond_1

    .line 2432
    const v0, 0x3e19999a    # 0.15f

    return v0

    .line 2433
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-eqz v0, :cond_3

    .line 2434
    :cond_2
    const v0, 0x3e570a3d    # 0.21f

    return v0

    .line 2435
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v0, :cond_4

    .line 2436
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2438
    :cond_4
    return v1
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1833
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v0

    .line 1834
    .local v0, "contentHeight":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v3, v0, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1835
    .local v2, "scrollRange":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v1

    .line 1837
    .local v1, "imeInset":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v3, v4

    .line 1836
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1838
    return v2
.end method

.method private handleChildDismissed(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 896
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v0, :cond_0

    .line 897
    return-void

    .line 899
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 907
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 908
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 909
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 910
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addSwipedOutNotification(Ljava/lang/String;)V

    .line 914
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {p1, v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->performDismiss(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Z)V

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationDismissed()V

    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 918
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 919
    const/4 v4, 0x1

    move-object v2, v1

    move v5, v3

    .line 918
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 921
    :cond_3
    return-void
.end method

.method private handleDismissAllClipping()V
    .locals 6

    .prologue
    .line 3851
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 3852
    .local v1, "count":I
    const/4 v3, 0x0

    .line 3853
    .local v3, "previousChildWillBeDismissed":Z
    const/4 v2, 0x0

    .end local v3    # "previousChildWillBeDismissed":Z
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3854
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3855
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 3853
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3858
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 3859
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setMinClipTopAmount(I)V

    .line 3863
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    .local v3, "previousChildWillBeDismissed":Z
    goto :goto_1

    .line 3861
    .end local v3    # "previousChildWillBeDismissed":Z
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setMinClipTopAmount(I)V

    goto :goto_2

    .line 3865
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_2
    return-void
.end method

.method private handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2519
    :cond_0
    :goto_0
    return-void

    .line 2507
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 2508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2509
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    goto :goto_0

    .line 2513
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_0

    .line 2514
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v0

    .line 2513
    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;->onEmptySpaceClicked(FF)V

    goto :goto_0

    .line 2505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 2522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2523
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 2524
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 2525
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 2526
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 2527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 2528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 2529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 2531
    :cond_0
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1625
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1629
    :goto_0
    return-void

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1612
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1614
    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 497
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDescendantFocusability(I)V

    .line 498
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipChildren(Z)V

    .line 499
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 500
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    .line 501
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    .line 502
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    .line 503
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    .line 504
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 505
    const v2, 0x7f0701e0

    .line 504
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .line 506
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->reload(Landroid/content/Context;)V

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 509
    const v2, 0x7f0701d1

    .line 508
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 511
    const v2, 0x7f0701d2

    .line 510
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    .line 512
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 513
    const v2, 0x7f0701a8

    .line 512
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    .line 515
    return-void
.end method

.method private isChildInGroup(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2614
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 2615
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 2616
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 2615
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 2614
    :goto_0
    return v0

    .restart local p1    # "child":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChildInInvisibleGroup(Landroid/view/View;)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2684
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 2685
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2687
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 2688
    .local v0, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    .line 2689
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 2692
    .end local v0    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return v2
.end method

.method private isClickedHeadsUp(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2651
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isClickedHeadsUpNotification(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isCurrentlyAnimating()Z
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isHeadsUp(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 994
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 995
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 996
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    return v1

    .line 998
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isInContentBounds(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result v0

    return v0
.end method

.method public static isPinnedHeadsUp(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 986
    instance-of v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 987
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 988
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    :cond_0
    return v1

    .line 990
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return v1
.end method

.method private isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 2009
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 2010
    .local v0, "e":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-ne v2, p1, :cond_0

    .line 2011
    const/4 v2, 0x1

    return v2

    .line 2014
    .end local v0    # "e":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isRubberbanded(Z)Z
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 2447
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-nez v0, :cond_0

    .line 2448
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isScrollingEnabled()Z
    .locals 1

    .prologue
    .line 1241
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return v0
.end method

.method private isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 4475
    if-nez p2, :cond_0

    .line 4476
    return v8

    .line 4478
    :cond_0
    instance-of v7, p2, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 4479
    check-cast v7, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 4481
    .local v0, "height":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v3, v7

    .line 4482
    .local v3, "rx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v4, v7

    .line 4483
    .local v4, "ry":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4484
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v5, v7, v8

    .line 4485
    .local v5, "x":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v8, 0x1

    aget v6, v7, v8

    .line 4486
    .local v6, "y":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    add-int v8, v6, v0

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4487
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 4488
    .local v2, "ret":Z
    return v2

    .line 4480
    .end local v0    # "height":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "ret":Z
    .end local v3    # "rx":I
    .end local v4    # "ry":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 536
    :cond_0
    return-void
.end method

.method private notifyOverscrollTopListener(FZ)V
    .locals 3
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1759
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 1760
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_1

    .line 1761
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1762
    return-void

    :cond_0
    move v0, v1

    .line 1759
    goto :goto_0

    .line 1764
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_2

    .line 1765
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->onOverscrollTopChanged(FZ)V

    .line 1767
    :cond_2
    return-void
.end method

.method private onCustomOverScrolled(IZ)V
    .locals 3
    .param p1, "scrollY"    # I
    .param p2, "clampedY"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1792
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1793
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1794
    if-eqz p2, :cond_0

    .line 1795
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->springBack()V

    .line 1807
    :goto_0
    return-void

    .line 1797
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 1798
    .local v0, "overScrollTop":F
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez v1, :cond_1

    .line 1799
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 1801
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 1805
    .end local v0    # "overScrollTop":F
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_0
.end method

.method private onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3158
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3159
    const/4 v1, 0x0

    return v1

    .line 3172
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 3173
    .local v8, "action":I
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 3174
    const/4 v1, 0x1

    return v1

    .line 3177
    :cond_1
    and-int/lit16 v1, v8, 0xff

    packed-switch v1, :pswitch_data_0

    .line 3263
    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    return v1

    .line 3188
    :pswitch_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3189
    .local v9, "activePointerId":I
    const/4 v1, -0x1

    if-eq v9, v1, :cond_2

    .line 3194
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 3195
    .local v11, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_3

    .line 3196
    const-string/jumbo v1, "StackScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3197
    const-string/jumbo v3, " in onInterceptTouchEvent"

    .line 3196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3201
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v14, v1

    .line 3202
    .local v14, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v12, v1

    .line 3203
    .local v12, "x":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 3204
    .local v15, "yDiff":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 3205
    .local v13, "xDiff":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v15, v1, :cond_2

    if-le v15, v13, :cond_2

    .line 3206
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3207
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3208
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 3209
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 3210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3216
    .end local v9    # "activePointerId":I
    .end local v11    # "pointerIndex":I
    .end local v12    # "x":I
    .end local v13    # "xDiff":I
    .end local v14    # "y":I
    .end local v15    # "yDiff":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v14, v1

    .line 3217
    .restart local v14    # "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    .line 3218
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    if-nez v1, :cond_4

    .line 3219
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3220
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 3228
    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3229
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 3230
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3232
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initOrResetVelocityTracker()V

    .line 3233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    xor-int/lit8 v10, v1, 0x1

    .line 3240
    .local v10, "isBeingDragged":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    goto/16 :goto_0

    .line 3247
    .end local v10    # "isBeingDragged":Z
    .end local v14    # "y":I
    :pswitch_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3248
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3249
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 3250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3251
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    goto/16 :goto_0

    .line 3255
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 3177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private onKeyguard()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1255
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onOverScrollFling(ZI)V
    .locals 3
    .param p1, "open"    # Z
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x1

    .line 1522
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    int-to-float v1, p2

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->flingTopOverscroll(FZ)V

    .line 1525
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1526
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1527
    return-void
.end method

.method private onPreDrawDuringAnimation()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 639
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 642
    :cond_0
    return-void
.end method

.method private onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1377
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1378
    const/4 v2, 0x0

    return v2

    .line 1380
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInsideQsContainer(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1381
    const/4 v2, 0x0

    return v2

    .line 1383
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1384
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1387
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 1389
    .local v9, "action":I
    and-int/lit16 v2, v9, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1514
    :cond_2
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 1391
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1392
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 1394
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    xor-int/lit8 v15, v2, 0x1

    .line 1395
    .local v15, "isBeingDragged":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1405
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1406
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 1407
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto :goto_0

    .line 1411
    .end local v15    # "isBeingDragged":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 1412
    .local v10, "activePointerIndex":I
    const/4 v2, -0x1

    if-ne v10, v2, :cond_6

    .line 1413
    const-string/jumbo v2, "StackScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1417
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v21, v0

    .line 1418
    .local v21, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    .line 1419
    .local v19, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v12, v2, v21

    .line 1420
    .local v12, "deltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v2, v19, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 1421
    .local v20, "xDiff":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 1422
    .local v22, "yDiff":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    move/from16 v0, v22

    if-le v0, v2, :cond_7

    move/from16 v0, v22

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 1423
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1424
    if-lez v12, :cond_9

    .line 1425
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    sub-int/2addr v12, v2

    .line 1430
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    .line 1432
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1433
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v16

    .line 1434
    .local v16, "range":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v2, :cond_8

    .line 1435
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1439
    :cond_8
    if-gez v12, :cond_a

    .line 1440
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollDown(I)F

    move-result v17

    .line 1447
    .local v17, "scrollAmount":F
    :goto_2
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_2

    .line 1450
    move/from16 v0, v17

    float-to-int v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 1450
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)Z

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    goto/16 :goto_0

    .line 1427
    .end local v16    # "range":I
    .end local v17    # "scrollAmount":F
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    add-int/2addr v12, v2

    goto :goto_1

    .line 1442
    .restart local v16    # "range":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollUp(II)F

    move-result v17

    .restart local v17    # "scrollAmount":F
    goto :goto_2

    .line 1458
    .end local v10    # "activePointerIndex":I
    .end local v12    # "deltaY":I
    .end local v16    # "range":I
    .end local v17    # "scrollAmount":F
    .end local v19    # "x":I
    .end local v20    # "xDiff":I
    .end local v21    # "y":I
    .end local v22    # "yDiff":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 1460
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1461
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v14, v2

    .line 1463
    .local v14, "initialVelocity":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldOverScrollFling(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1464
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    .line 1482
    :cond_b
    :goto_3
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1483
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_0

    .line 1466
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 1467
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v2, v3, :cond_f

    .line 1468
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v11

    .line 1469
    .local v11, "currentOverScrollTop":F
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_d

    if-lez v14, :cond_e

    .line 1470
    :cond_d
    neg-int v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->fling(I)V

    goto :goto_3

    .line 1472
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_3

    .line 1475
    .end local v11    # "currentOverScrollTop":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1476
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v8

    .line 1475
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1477
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    goto :goto_3

    .line 1488
    .end local v14    # "initialVelocity":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1490
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 1492
    :cond_10
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1493
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_0

    .line 1497
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 1498
    .local v13, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1499
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 1500
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto/16 :goto_0

    .line 1504
    .end local v13    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1596
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1597
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1601
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1602
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1603
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1604
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1605
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1608
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1601
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private onViewAddedInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2818
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateHideSensitiveForChild(Landroid/view/View;)V

    move-object v0, p1

    .line 2819
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 2820
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 2821
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 2822
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 2823
    return-void
.end method

.method private onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 2567
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v2, :cond_0

    .line 2569
    return-void

    :cond_0
    move-object v1, p1

    .line 2571
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2572
    .local v1, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 2573
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 2574
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2575
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    move-result v0

    .line 2576
    .local v0, "animationGenerated":Z
    if-eqz v0, :cond_3

    .line 2577
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2578
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 2586
    :cond_1
    :goto_0
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 2589
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 2591
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->focusNextViewIfFocused(Landroid/view/View;)V

    .line 2592
    return-void

    .line 2579
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 2580
    invoke-virtual {p2, p1, v4}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 2581
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 2584
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private overScrollDown(I)F
    .locals 9
    .param p1, "deltaY"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1570
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1571
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 1572
    .local v0, "currentBottomAmount":F
    int-to-float v5, p1

    add-float v2, v0, v5

    .line 1573
    .local v2, "newBottomAmount":F
    cmpl-float v5, v0, v7

    if-lez v5, :cond_0

    .line 1574
    invoke-virtual {p0, v2, v6, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1579
    :cond_0
    cmpg-float v5, v2, v7

    if-gez v5, :cond_2

    move v4, v2

    .line 1580
    .local v4, "scrollAmount":F
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float v3, v5, v4

    .line 1581
    .local v3, "newScrollY":F
    cmpg-float v5, v3, v7

    if-gez v5, :cond_1

    .line 1582
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v1

    .line 1584
    .local v1, "currentTopPixels":F
    sub-float v5, v1, v3

    invoke-virtual {p0, v5, v8, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1587
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1588
    const/4 v4, 0x0

    .line 1590
    .end local v1    # "currentTopPixels":F
    :cond_1
    return v4

    .line 1579
    .end local v3    # "newScrollY":F
    .end local v4    # "scrollAmount":F
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "scrollAmount":F
    goto :goto_0
.end method

.method private overScrollUp(II)F
    .locals 9
    .param p1, "deltaY"    # I
    .param p2, "range"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1537
    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1538
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 1539
    .local v1, "currentTopAmount":F
    int-to-float v5, p1

    sub-float v3, v1, v5

    .line 1540
    .local v3, "newTopAmount":F
    cmpl-float v5, v1, v6

    if-lez v5, :cond_0

    .line 1541
    invoke-virtual {p0, v3, v8, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1546
    :cond_0
    cmpg-float v5, v3, v6

    if-gez v5, :cond_3

    neg-float v4, v3

    .line 1547
    .local v4, "scrollAmount":F
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float v2, v5, v4

    .line 1548
    .local v2, "newScrollY":F
    int-to-float v5, p2

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    .line 1549
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v5, :cond_1

    .line 1550
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    .line 1552
    .local v0, "currentBottomPixels":F
    add-float v5, v0, v2

    int-to-float v6, p2

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5, v7, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1556
    .end local v0    # "currentBottomPixels":F
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1557
    const/4 v4, 0x0

    .line 1559
    :cond_2
    return v4

    .line 1546
    .end local v2    # "newScrollY":F
    .end local v4    # "scrollAmount":F
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "scrollAmount":F
    goto :goto_0
.end method

.method public static performDismiss(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Z)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .param p2, "fromAccessibility"    # Z

    .prologue
    .line 925
    instance-of v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v2, :cond_0

    .line 926
    return-void

    :cond_0
    move-object v1, p0

    .line 928
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 929
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 931
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 932
    .local v0, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 933
    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->performDismiss(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Z)V

    .line 936
    .end local v0    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDismissed(ZZ)V

    .line 937
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 938
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performDismiss()V

    .line 941
    :cond_2
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1619
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1621
    :cond_0
    return-void
.end method

.method private removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2660
    const/4 v2, 0x0

    .line 2661
    .local v2, "hasAddEvent":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "hasAddEvent":Z
    .local v1, "eventPair$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2662
    .local v0, "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2663
    .local v4, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2664
    .local v3, "isHeadsUp":Z
    if-ne p1, v4, :cond_0

    .line 2665
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2666
    or-int/2addr v2, v3

    .local v2, "hasAddEvent":Z
    goto :goto_0

    .line 2669
    .end local v0    # "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    .end local v2    # "hasAddEvent":Z
    .end local v3    # "isHeadsUp":Z
    .end local v4    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    if-eqz v2, :cond_2

    .line 2671
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2672
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "child":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 2674
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2675
    return v2
.end method

.method private requestAnimateEverything()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3913
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 3914
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 3915
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3916
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3918
    :cond_0
    return-void
.end method

.method private requestAnimationOnViewResize(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v1, 0x1

    .line 573
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 575
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 577
    :cond_1
    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 2

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 691
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 693
    :cond_0
    return-void
.end method

.method private runAnimationFinishedRunnables()V
    .locals 3

    .prologue
    .line 3519
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "runnable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 3520
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3522
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 3523
    return-void
.end method

.method private setBackgroundFadeAmount(F)V
    .locals 0
    .param p1, "fadeAmount"    # F

    .prologue
    .line 3710
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    .line 3711
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 3712
    return-void
.end method

.method private setBackgroundTop(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 2188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 2189
    return-void
.end method

.method private setDimAmount(F)V
    .locals 0
    .param p1, "dimAmount"    # F

    .prologue
    .line 3541
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    .line 3542
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 3543
    return-void
.end method

.method private setIsBeingDragged(Z)V
    .locals 1
    .param p1, "isDragged"    # Z

    .prologue
    .line 3285
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 3286
    if-eqz p1, :cond_0

    .line 3287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 3288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 3290
    :cond_0
    return-void
.end method

.method private setIsExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 3403
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    .line 3404
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 3405
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    .line 3406
    if-eqz v0, :cond_1

    .line 3407
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_0

    .line 3408
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    .line 3410
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 3411
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometers()V

    .line 3412
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3414
    :cond_1
    return-void

    .line 3403
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method private setMaxLayoutHeight(I)V
    .locals 1
    .param p1, "maxLayoutHeight"    # I

    .prologue
    .line 604
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxLayoutHeight(I)V

    .line 606
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 607
    return-void
.end method

.method private setOverScrollAmountInternal(FZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "isRubberbanded"    # Z

    .prologue
    .line 1745
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1746
    if-eqz p3, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V

    .line 1756
    :goto_0
    return-void

    .line 1749
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    div-float v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZ)V

    .line 1750
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setOverScrollAmount(FZ)V

    .line 1751
    if-eqz p2, :cond_1

    .line 1752
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 1754
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_0
.end method

.method private setOverScrolledPixels(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .prologue
    .line 1783
    if-eqz p2, :cond_0

    .line 1784
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    .line 1788
    :goto_0
    return-void

    .line 1786
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method private setRequestedClipBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    .line 772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 773
    return-void
.end method

.method private setStackTranslation(F)V
    .locals 1
    .param p1, "stackTranslation"    # F

    .prologue
    .line 852
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 853
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    .line 854
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStackTranslation(F)V

    .line 855
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 857
    :cond_0
    return-void
.end method

.method private setSwipingInProgress(Z)V
    .locals 1
    .param p1, "isSwiped"    # Z

    .prologue
    .line 1259
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    .line 1260
    if-eqz p1, :cond_0

    .line 1261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1263
    :cond_0
    return-void
.end method

.method private setTopPadding(IZ)V
    .locals 2
    .param p1, "topPadding"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 711
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    if-eq v0, p1, :cond_1

    .line 712
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 713
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 714
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 715
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 716
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 717
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 719
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 720
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 722
    :cond_1
    return-void
.end method

.method private shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)Z
    .locals 2
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    .line 3002
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 3003
    const/4 v0, 0x0

    return v0

    .line 3005
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private shouldOverScrollFling(I)Z
    .locals 4
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2361
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 2362
    .local v0, "topOverScroll":F
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v3, :cond_1

    .line 2363
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    xor-int/lit8 v3, v3, 0x1

    .line 2362
    if-eqz v3, :cond_1

    .line 2364
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 2365
    if-lez p1, :cond_0

    .line 2362
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2365
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2362
    goto :goto_0
.end method

.method private springBack()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1810
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    .line 1811
    .local v4, "scrollRange":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gtz v5, :cond_2

    const/4 v3, 0x1

    .line 1812
    .local v3, "overScrolledTop":Z
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v5, v4, :cond_3

    const/4 v2, 0x1

    .line 1813
    .local v2, "overScrolledBottom":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 1816
    :cond_0
    if-eqz v3, :cond_4

    .line 1817
    const/4 v1, 0x1

    .line 1818
    .local v1, "onTop":Z
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v5, v5

    int-to-float v0, v5

    .line 1819
    .local v0, "newAmount":F
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1820
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1826
    :goto_2
    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1827
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1828
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5, v7}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1830
    .end local v0    # "newAmount":F
    .end local v1    # "onTop":Z
    :cond_1
    return-void

    .line 1811
    .end local v2    # "overScrolledBottom":Z
    .end local v3    # "overScrolledTop":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "overScrolledTop":Z
    goto :goto_0

    .line 1812
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "overScrolledBottom":Z
    goto :goto_1

    .line 1822
    :cond_4
    const/4 v1, 0x0

    .line 1823
    .restart local v1    # "onTop":Z
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v5, v4

    int-to-float v0, v5

    .line 1824
    .restart local v0    # "newAmount":F
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_2
.end method

.method private startAnimationToState()V
    .locals 6

    .prologue
    .line 2924
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 2925
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildHierarchyEvents()V

    .line 2926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2928
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2929
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 2930
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 2931
    iget-wide v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 2930
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V

    .line 2932
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2933
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 2934
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 2938
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 2939
    return-void

    .line 2936
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_0
.end method

.method private startBackgroundAnimation()V
    .locals 2

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2085
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2086
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBottomAnimation()V

    .line 2087
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startTopAnimation()V

    .line 2088
    return-void
.end method

.method private startBackgroundFadeIn()V
    .locals 4

    .prologue
    .line 3719
    sget-object v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->BACKGROUND_FADE:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3720
    .local v0, "fadeAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3721
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3722
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3723
    return-void

    .line 3719
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startBottomAnimation()V
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2139
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 2140
    .local v5, "previousStartValue":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 2141
    .local v4, "previousEndValue":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 2142
    .local v2, "newEndValue":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 2143
    .local v3, "previousAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v3, :cond_0

    if-ne v4, v2, :cond_0

    .line 2144
    return-void

    .line 2146
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v7, :cond_2

    .line 2148
    if-eqz v3, :cond_1

    .line 2151
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 2152
    .local v6, "values":[Landroid/animation/PropertyValuesHolder;
    aget-object v7, v6, v10

    new-array v8, v8, [I

    aput v5, v8, v10

    aput v2, v8, v11

    invoke-virtual {v7, v8}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 2153
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 2154
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 2155
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 2156
    return-void

    .line 2159
    .end local v6    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundBottom(I)V

    .line 2160
    return-void

    .line 2163
    :cond_2
    if-eqz v3, :cond_3

    .line 2164
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2166
    :cond_3
    const-string/jumbo v7, "backgroundBottom"

    new-array v8, v8, [I

    .line 2167
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    aput v9, v8, v10

    aput v2, v8, v11

    .line 2166
    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2168
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2169
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2170
    const-wide/16 v8, 0x168

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2172
    new-instance v7, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2180
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2181
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2182
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 2183
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 2184
    return-void
.end method

.method private startTopAnimation()V
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2091
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 2092
    .local v4, "previousEndValue":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 2093
    .local v2, "newEndValue":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 2094
    .local v3, "previousAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v3, :cond_0

    if-ne v4, v2, :cond_0

    .line 2095
    return-void

    .line 2097
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v7, :cond_2

    .line 2099
    if-eqz v3, :cond_1

    .line 2102
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 2103
    .local v5, "previousStartValue":I
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 2104
    .local v6, "values":[Landroid/animation/PropertyValuesHolder;
    aget-object v7, v6, v10

    new-array v8, v8, [I

    aput v5, v8, v10

    aput v2, v8, v11

    invoke-virtual {v7, v8}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 2105
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 2106
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 2107
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 2108
    return-void

    .line 2111
    .end local v5    # "previousStartValue":I
    .end local v6    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundTop(I)V

    .line 2112
    return-void

    .line 2115
    :cond_2
    if-eqz v3, :cond_3

    .line 2116
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2118
    :cond_3
    const-string/jumbo v7, "backgroundTop"

    new-array v8, v8, [I

    .line 2119
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    aput v9, v8, v10

    aput v2, v8, v11

    .line 2118
    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2120
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2121
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2122
    const-wide/16 v8, 0x168

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2124
    new-instance v7, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$9;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$9;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2132
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2133
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 2134
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 2135
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 2136
    return-void
.end method

.method private targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I
    .locals 2
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "positionInLinearLayout"    # I

    .prologue
    .line 1203
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 1204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v1

    .line 1203
    add-int/2addr v0, v1

    .line 1204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v1

    .line 1203
    sub-int/2addr v0, v1

    .line 1204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v1

    .line 1203
    add-int/2addr v0, v1

    return v0
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutHeight(I)V

    .line 611
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setTopPadding(I)V

    .line 613
    return-void
.end method

.method private updateAlgorithmLayoutMinHeight()V
    .locals 2

    .prologue
    .line 616
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMinHeight(I)V

    .line 617
    return-void

    .line 616
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAnimationState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2857
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2858
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    .line 2857
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 2859
    return-void

    .line 2858
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2857
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAnimationState(ZLandroid/view/View;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2863
    instance-of v1, p2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 2864
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2865
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 2867
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2044
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2045
    :cond_0
    return-void

    .line 2048
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundBounds()V

    .line 2049
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2050
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v1, :cond_3

    .line 2051
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->areBoundsAnimating()Z

    move-result v0

    .line 2052
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2053
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    .line 2054
    const/4 v0, 0x0

    .line 2056
    :cond_2
    if-eqz v0, :cond_4

    .line 2057
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBackgroundAnimation()V

    .line 2065
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 2066
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 2067
    return-void

    .line 2050
    :cond_3
    const/4 v0, 0x1

    .local v0, "animate":Z
    goto :goto_0

    .line 2059
    .end local v0    # "animate":Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2060
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    goto :goto_1

    .line 2063
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    goto :goto_1
.end method

.method private updateBackgroundBounds()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2215
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationInWindow([I)V

    .line 2216
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v8, v8, v10

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 2217
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v8, v8, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 2220
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v7, :cond_0

    .line 2221
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 2222
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 2223
    return-void

    .line 2225
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 2226
    .local v4, "firstView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    const/4 v6, 0x0

    .line 2227
    .local v6, "top":I
    if-eqz v4, :cond_2

    .line 2229
    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationY(Landroid/view/View;)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 2230
    .local v3, "finalTranslationY":I
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v7, :cond_1

    .line 2231
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ne v7, v3, :cond_4

    .line 2234
    :cond_1
    move v6, v3

    .line 2239
    .end local v3    # "finalTranslationY":I
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationShelf;->hasItemsInStableShelf()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2240
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2242
    .local v5, "lastView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    :goto_1
    const/4 v0, 0x0

    .line 2243
    .local v0, "bottom":I
    if-eqz v5, :cond_a

    .line 2245
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-ne v5, v7, :cond_7

    .line 2246
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v7

    float-to-int v3, v7

    .line 2250
    .restart local v3    # "finalTranslationY":I
    :goto_2
    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v2

    .line 2251
    .local v2, "finalHeight":I
    add-int v7, v3, v2

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getClipBottomAmount()I

    move-result v8

    sub-int v1, v7, v8

    .line 2252
    .local v1, "finalBottom":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2253
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v7, :cond_3

    .line 2254
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ne v7, v1, :cond_8

    .line 2257
    :cond_3
    move v0, v1

    .line 2267
    .end local v1    # "finalBottom":I
    .end local v2    # "finalHeight":I
    .end local v3    # "finalTranslationY":I
    :goto_3
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_b

    .line 2268
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v7, v8

    int-to-float v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v6, v7

    .line 2273
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 2274
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v8

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2275
    return-void

    .line 2232
    .end local v0    # "bottom":I
    .end local v5    # "lastView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .restart local v3    # "finalTranslationY":I
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-eq v7, v3, :cond_1

    .line 2236
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getTranslationY()F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    goto :goto_0

    .line 2241
    .end local v3    # "finalTranslationY":I
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .restart local v5    # "lastView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    goto :goto_1

    .line 2248
    .restart local v0    # "bottom":I
    :cond_7
    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationY(Landroid/view/View;)F

    move-result v7

    float-to-int v3, v7

    .restart local v3    # "finalTranslationY":I
    goto :goto_2

    .line 2255
    .restart local v1    # "finalBottom":I
    .restart local v2    # "finalHeight":I
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v7, v1, :cond_3

    .line 2259
    :cond_9
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getTranslationY()F

    move-result v7

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 2260
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getClipBottomAmount()I

    move-result v8

    int-to-float v8, v8

    .line 2259
    sub-float/2addr v7, v8

    float-to-int v0, v7

    .line 2261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 2264
    .end local v1    # "finalBottom":I
    .end local v2    # "finalHeight":I
    .end local v3    # "finalTranslationY":I
    :cond_a
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 2265
    move v0, v6

    goto :goto_3

    .line 2271
    :cond_b
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4
.end method

.method private updateBackgroundDimming()V
    .locals 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 471
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v4, :cond_0

    .line 472
    return-void

    .line 475
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    sub-float v4, v6, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    const v5, 0x3f333333    # 0.7f

    add-float v0, v5, v4

    .line 476
    .local v0, "alpha":F
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    mul-float/2addr v0, v4

    .line 478
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimBehindColor()I

    move-result v3

    .line 480
    .local v3, "scrimColor":I
    sub-float v1, v6, v0

    .line 481
    .local v1, "alphaInv":F
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 482
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 483
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    .line 482
    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 484
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    .line 485
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    .line 484
    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 486
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    .line 487
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    .line 486
    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 481
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 488
    .local v2, "color":I
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    if-eq v4, v2, :cond_1

    .line 489
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    .line 490
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 493
    :cond_1
    return-void
.end method

.method private updateChildren()V
    .locals 3

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForAddedChildren()V

    .line 625
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x0

    .line 625
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setCurrentScrollVelocity(F)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setScrollY(I)V

    .line 629
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 630
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 631
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    .line 635
    :goto_1
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    .line 633
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startAnimationToState()V

    goto :goto_1
.end method

.method private updateChronometerForChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3424
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 3425
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3426
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 3428
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateChronometers()V
    .locals 3

    .prologue
    .line 3417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 3418
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3419
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3421
    :cond_0
    return-void
.end method

.method private updateContentHeight()V
    .locals 17

    .prologue
    .line 1943
    const/4 v3, 0x0

    .line 1944
    .local v3, "height":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v13, v14

    .line 1945
    .local v13, "previousPaddingRequest":F
    const/4 v12, 0x0

    .line 1946
    .local v12, "previousPaddingAmount":F
    const/4 v9, 0x0

    .line 1947
    .local v9, "numShownItems":I
    const/4 v2, 0x0

    .line 1948
    .local v2, "finish":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1949
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v7, 0x1

    .line 1952
    .local v7, "maxDisplayedNotifications":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v14

    if-ge v4, v14, :cond_3

    .line 1953
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1954
    .local v1, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_b

    .line 1955
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->hasNoContentHeight()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    .line 1954
    if-eqz v14, :cond_b

    .line 1956
    const/4 v14, -0x1

    if-eq v7, v14, :cond_7

    .line 1957
    if-lt v9, v7, :cond_6

    const/4 v6, 0x1

    .line 1958
    .local v6, "limitReached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1959
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v14

    .line 1958
    if-eqz v14, :cond_8

    .line 1960
    instance-of v14, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1958
    if-eqz v14, :cond_8

    move-object v14, v1

    .line 1961
    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v14

    xor-int/lit8 v8, v14, 0x1

    .line 1962
    :goto_3
    if-nez v6, :cond_0

    if-eqz v8, :cond_1

    .line 1963
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1964
    const/4 v2, 0x1

    .line 1966
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v5

    .line 1968
    .local v5, "increasedPaddingAmount":F
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-ltz v14, :cond_9

    .line 1971
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v14, v14

    .line 1969
    invoke-static {v13, v14, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    float-to-int v14, v14

    int-to-float v11, v14

    .line 1974
    .local v11, "padding":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v14, v14

    .line 1975
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v15, v15

    .line 1973
    invoke-static {v14, v15, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    float-to-int v14, v14

    int-to-float v13, v14

    .line 1992
    :goto_4
    if-eqz v3, :cond_2

    .line 1993
    int-to-float v14, v3

    add-float/2addr v14, v11

    float-to-int v3, v14

    .line 1995
    :cond_2
    move v12, v5

    .line 1996
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v14

    add-int/2addr v3, v14

    .line 1997
    add-int/lit8 v9, v9, 0x1

    .line 1998
    if-eqz v2, :cond_b

    .line 2003
    .end local v1    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v5    # "increasedPaddingAmount":F
    .end local v6    # "limitReached":Z
    .end local v11    # "padding":F
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v14, v3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 2004
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollability()V

    .line 2005
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMaxHeight(I)V

    .line 2006
    return-void

    .line 1949
    .end local v4    # "i":I
    .end local v7    # "maxDisplayedNotifications":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "maxDisplayedNotifications":I
    goto/16 :goto_0

    .line 1950
    .end local v7    # "maxDisplayedNotifications":I
    :cond_5
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .restart local v7    # "maxDisplayedNotifications":I
    goto/16 :goto_0

    .line 1957
    .restart local v1    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v4    # "i":I
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "limitReached":Z
    goto/16 :goto_2

    .line 1956
    .end local v6    # "limitReached":Z
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "limitReached":Z
    goto/16 :goto_2

    .line 1958
    :cond_8
    const/4 v8, 0x0

    .local v8, "notificationOnAmbientThatIsNotPulsing":Z
    goto :goto_3

    .line 1979
    .end local v8    # "notificationOnAmbientThatIsNotPulsing":Z
    .restart local v5    # "increasedPaddingAmount":F
    :cond_9
    const/4 v14, 0x0

    .line 1980
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v15, v15

    .line 1981
    const/high16 v16, 0x3f800000    # 1.0f

    add-float v16, v16, v5

    .line 1978
    invoke-static/range {v14 .. v16}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    float-to-int v10, v14

    .line 1982
    .local v10, "ownPadding":I
    const/4 v14, 0x0

    cmpl-float v14, v12, v14

    if-lez v14, :cond_a

    .line 1984
    int-to-float v14, v10

    .line 1985
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v15, v15

    .line 1983
    invoke-static {v14, v15, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    float-to-int v14, v14

    int-to-float v11, v14

    .line 1990
    .restart local v11    # "padding":F
    :goto_5
    int-to-float v13, v10

    goto :goto_4

    .line 1988
    .end local v11    # "padding":F
    :cond_a
    int-to-float v11, v10

    .restart local v11    # "padding":F
    goto :goto_5

    .line 1952
    .end local v5    # "increasedPaddingAmount":F
    .end local v6    # "limitReached":Z
    .end local v10    # "ownPadding":I
    .end local v11    # "padding":F
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method private updateContinuousShadowDrawing()V
    .locals 3

    .prologue
    .line 4492
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-nez v1, :cond_1

    .line 4493
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 4494
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    if-eq v0, v1, :cond_0

    .line 4495
    if-eqz v0, :cond_2

    .line 4496
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4500
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    .line 4502
    :cond_0
    return-void

    .line 4492
    :cond_1
    const/4 v0, 0x1

    .local v0, "continuousShadowUpdate":Z
    goto :goto_0

    .line 4498
    .end local v0    # "continuousShadowUpdate":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1
.end method

.method private updateFadingState()V
    .locals 0

    .prologue
    .line 4159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 4160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSrcDrawing()V

    .line 4161
    return-void
.end method

.method private updateFirstAndLastBackgroundViews()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2803
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 2804
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v1

    .line 2805
    .local v1, "lastChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v2, :cond_2

    .line 2806
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v0, v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 2807
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v1, v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 2812
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 2813
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 2814
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 2815
    return-void

    :cond_0
    move v2, v4

    .line 2806
    goto :goto_0

    :cond_1
    move v3, v4

    .line 2807
    goto :goto_1

    .line 2809
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 2810
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    goto :goto_2
.end method

.method private updateForcedScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 667
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 668
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 667
    if-eqz v4, :cond_1

    .line 669
    :cond_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 671
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 673
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v2

    .line 674
    .local v2, "positionInLinearLayout":I
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I

    move-result v3

    .line 675
    .local v3, "targetScroll":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v4

    add-int v1, v2, v4

    .line 677
    .local v1, "outOfViewScroll":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 681
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v4, v3, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v1, v4, :cond_3

    .line 682
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 685
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v1    # "outOfViewScroll":I
    .end local v2    # "positionInLinearLayout":I
    .end local v3    # "targetScroll":I
    :cond_3
    return-void
.end method

.method private updateForwardAndBackwardScrollability()V
    .locals 5

    .prologue
    .line 2031
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v2, 0x1

    .line 2032
    .local v2, "forwardScrollable":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lez v3, :cond_2

    const/4 v0, 0x1

    .line 2033
    .local v0, "backwardsScrollable":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-ne v2, v3, :cond_3

    .line 2034
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eq v0, v3, :cond_4

    const/4 v1, 0x1

    .line 2035
    .local v1, "changed":Z
    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    .line 2036
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    .line 2037
    if-eqz v1, :cond_0

    .line 2038
    const/16 v3, 0x800

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->sendAccessibilityEvent(I)V

    .line 2040
    :cond_0
    return-void

    .line 2031
    .end local v0    # "backwardsScrollable":Z
    .end local v1    # "changed":Z
    .end local v2    # "forwardScrollable":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "forwardScrollable":Z
    goto :goto_0

    .line 2032
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "backwardsScrollable":Z
    goto :goto_1

    .line 2033
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "changed":Z
    goto :goto_2

    .line 2034
    .end local v1    # "changed":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "changed":Z
    goto :goto_2
.end method

.method private updateHideSensitiveForChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2826
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2827
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2828
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 2830
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    return-void
.end method

.method private updateNotificationAnimationStates()V
    .locals 5

    .prologue
    .line 2846
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v3

    .line 2847
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->setAnimationsEnabled(Z)V

    .line 2848
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 2849
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2850
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2851
    .local v0, "child":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v4, :cond_1

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v4

    :goto_2
    and-int/2addr v3, v4

    .line 2852
    .local v3, "running":Z
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 2849
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2846
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "running":Z
    :cond_0
    const/4 v3, 0x1

    .local v3, "running":Z
    goto :goto_0

    .line 2851
    .end local v3    # "running":Z
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 2854
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 3456
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 3457
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3458
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 3459
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3460
    return-void

    .line 3463
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 3464
    .local v0, "endPosition":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3465
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    add-float/2addr v0, v3

    .line 3467
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    float-to-int v4, v4

    add-int v1, v3, v4

    .line 3468
    .local v1, "layoutEnd":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v2, v3, :cond_2

    .line 3469
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 3471
    :cond_2
    int-to-float v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    .line 3472
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    int-to-float v4, v1

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3473
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 3477
    .end local v0    # "endPosition":F
    .end local v1    # "layoutEnd":I
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    return-void
.end method

.method private updateScrollStateForAddedChildren()V
    .locals 7

    .prologue
    .line 645
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 646
    return-void

    .line 648
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 649
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 650
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 651
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v5

    .line 652
    .local v5, "startingPosition":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v3

    .line 653
    .local v3, "increasedPaddingAmount":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    .line 655
    .local v4, "padding":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v6

    add-int v1, v6, v4

    .line 656
    .local v1, "childHeight":I
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v5, v6, :cond_1

    .line 659
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    add-int/2addr v6, v1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 648
    .end local v1    # "childHeight":I
    .end local v3    # "increasedPaddingAmount":F
    .end local v4    # "padding":I
    .end local v5    # "startingPosition":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 654
    .restart local v3    # "increasedPaddingAmount":F
    .restart local v5    # "startingPosition":I
    :cond_2
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_3

    const/4 v4, 0x0

    .restart local v4    # "padding":I
    goto :goto_1

    .end local v4    # "padding":I
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .restart local v4    # "padding":I
    goto :goto_1

    .line 663
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "increasedPaddingAmount":F
    .end local v4    # "padding":I
    .end local v5    # "startingPosition":I
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 664
    return-void
.end method

.method private updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 8
    .param p1, "removedChild"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    const/4 v7, 0x0

    .line 2701
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v4

    .line 2702
    .local v4, "startingPosition":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v2

    .line 2704
    .local v2, "increasedPaddingAmount":F
    cmpl-float v5, v2, v7

    if-ltz v5, :cond_1

    .line 2706
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v5, v5

    .line 2707
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v6, v6

    .line 2705
    invoke-static {v5, v6, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    float-to-int v3, v5

    .line 2715
    .local v3, "padding":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v5

    add-int v0, v5, v3

    .line 2716
    .local v0, "childHeight":I
    add-int v1, v4, v0

    .line 2717
    .local v1, "endPosition":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gt v1, v5, :cond_2

    .line 2720
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2726
    :cond_0
    :goto_1
    return-void

    .line 2712
    .end local v0    # "childHeight":I
    .end local v1    # "endPosition":I
    .end local v3    # "padding":I
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v5, v5

    .line 2713
    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v2

    .line 2710
    invoke-static {v7, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    float-to-int v3, v5

    .restart local v3    # "padding":I
    goto :goto_0

    .line 2721
    .restart local v0    # "childHeight":I
    .restart local v1    # "endPosition":I
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v4, v5, :cond_0

    .line 2724
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_1
.end method

.method private updateScrollability()V
    .locals 2

    .prologue
    .line 2022
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 2023
    .local v0, "scrollable":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eq v0, v1, :cond_0

    .line 2024
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    .line 2025
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFocusable(Z)V

    .line 2026
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 2028
    :cond_0
    return-void

    .line 2022
    .end local v0    # "scrollable":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "scrollable":Z
    goto :goto_0
.end method

.method private updateSrcDrawing()V
    .locals 2

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    .line 524
    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDrawBackgroundAsSrc:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSrcMode:Landroid/graphics/PorterDuffXfermode;

    .line 527
    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 529
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 530
    return-void

    .line 528
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateViewShadows()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const v13, 0x3dcccccd    # 0.1f

    const/4 v12, 0x0

    .line 3609
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 3610
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3611
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 3612
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3609
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3615
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3618
    const/4 v5, 0x0

    .line 3619
    .local v5, "previous":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v3, 0x0

    .end local v5    # "previous":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 3620
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3621
    .local v2, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v6

    .line 3622
    .local v6, "translationZ":F
    if-nez v5, :cond_3

    move v4, v6

    .line 3623
    .local v4, "otherZ":F
    :goto_2
    sub-float v1, v4, v6

    .line 3624
    .local v1, "diff":F
    cmpg-float v8, v1, v12

    if-lez v8, :cond_2

    cmpl-float v8, v1, v13

    if-ltz v8, :cond_4

    .line 3626
    :cond_2
    invoke-virtual {v2, v12, v12, v14, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setFakeShadowIntensity(FFII)V

    .line 3635
    :goto_3
    move-object v5, v2

    .line 3619
    .local v5, "previous":Lcom/android/systemui/statusbar/ExpandableView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3622
    .end local v1    # "diff":F
    .end local v4    # "otherZ":F
    .end local v5    # "previous":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_3
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v4

    .restart local v4    # "otherZ":F
    goto :goto_2

    .line 3628
    .restart local v1    # "diff":F
    :cond_4
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v8

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 3629
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v9

    .line 3628
    sub-float/2addr v8, v9

    .line 3629
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getExtraBottomPadding()I

    move-result v9

    int-to-float v9, v9

    .line 3628
    sub-float v7, v8, v9

    .line 3631
    .local v7, "yLocation":F
    div-float v8, v1, v13

    .line 3632
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getOutlineAlpha()F

    move-result v9

    float-to-int v10, v7

    .line 3633
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getOutlineTranslation()I

    move-result v11

    .line 3630
    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/ExpandableView;->setFakeShadowIntensity(FFII)V

    goto :goto_3

    .line 3638
    .end local v1    # "diff":F
    .end local v2    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v4    # "otherZ":F
    .end local v6    # "translationZ":F
    .end local v7    # "yLocation":F
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3639
    return-void
.end method

.method private updateWillNotDraw()V
    .locals 2

    .prologue
    .line 3705
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3706
    .local v0, "willDraw":Z
    :goto_0
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setWillNotDraw(Z)V

    .line 3707
    return-void

    .line 3705
    .end local v0    # "willDraw":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "willDraw":Z
    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_stack_NotificationStackScrollLayout-mthref-0()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    return-void
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1246
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1108
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1109
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    .line 1108
    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1110
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1108
    if-eqz v0, :cond_1

    .line 1111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1108
    :goto_0
    return v0

    .line 1111
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 3651
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    .line 3652
    return-void
.end method

.method public changeViewPosition(Landroid/view/View;I)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "newIndex"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2901
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2902
    .local v0, "currentIndex":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    if-eq v0, p2, :cond_0

    .line 2903
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    move-object v1, p1

    .line 2904
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setChangingPosition(Z)V

    .line 2905
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 2907
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2908
    const-string/jumbo v1, "StackScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to readd a notification child that already has a parent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2909
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2908
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2909
    const-string/jumbo v3, ", child: "

    .line 2908
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v1, p1

    .line 2914
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setChangingPosition(Z)V

    .line 2915
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 2916
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 2917
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2918
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2921
    :cond_0
    return-void

    .line 2911
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public checkSnoozeLeavebehind()V
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 3342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    if-eqz v0, :cond_0

    .line 3343
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    .line 3345
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 3347
    :cond_0
    return-void
.end method

.method public cleanUpViewState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    .line 2555
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 2556
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3302
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3303
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 3306
    :cond_0
    return-void
.end method

.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4509
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 4510
    return-void
.end method

.method protected createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3267
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;
    .param p3, "delay"    # I
    .param p4, "duration"    # J

    .prologue
    const/4 v6, 0x1

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    const/4 v2, 0x0

    int-to-long v4, p3

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p4

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    .line 1278
    return-void
.end method

.method public expansionStateChanged(Z)V
    .locals 1
    .param p1, "isExpanding"    # Z

    .prologue
    .line 1155
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 1156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    .line 1157
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 1160
    :cond_0
    return-void
.end method

.method protected fling(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2325
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v12

    .line 2327
    .local v12, "scrollRange":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v13

    .line 2328
    .local v13, "topAmount":F
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v11

    .line 2329
    .local v11, "bottomAmount":F
    if-gez p1, :cond_2

    cmpl-float v0, v13, v2

    if-lez v0, :cond_2

    .line 2330
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v1, v13

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2331
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 2332
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2333
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    .line 2334
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    .line 2333
    mul-float/2addr v0, v1

    add-float/2addr v0, v13

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 2345
    :goto_0
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2346
    .local v8, "minScrollY":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v0, :cond_0

    .line 2347
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2349
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2350
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ltz v4, :cond_4

    move v10, v5

    :goto_1
    move v4, p1

    move v6, v5

    move v7, v5

    move v9, v5

    .line 2349
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 2354
    .end local v8    # "minScrollY":I
    .end local v11    # "bottomAmount":F
    .end local v12    # "scrollRange":I
    .end local v13    # "topAmount":F
    :cond_1
    return-void

    .line 2335
    .restart local v11    # "bottomAmount":F
    .restart local v12    # "scrollRange":I
    .restart local v13    # "topAmount":F
    :cond_2
    if-lez p1, :cond_3

    cmpl-float v0, v11, v2

    if-lez v0, :cond_3

    .line 2336
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2337
    invoke-virtual {p0, v2, v5, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2338
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 2339
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    .line 2338
    mul-float/2addr v0, v1

    .line 2339
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    .line 2338
    mul-float/2addr v0, v1

    add-float/2addr v0, v11

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 2343
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 2350
    .restart local v8    # "minScrollY":I
    :cond_4
    const v10, 0x3fffffff    # 1.9999999f

    goto :goto_1
.end method

.method public forceNoOverlappingRendering(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 4104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    .line 4105
    return-void
.end method

.method public generateAddAnimation(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "fromMoreCard"    # Z

    .prologue
    .line 2880
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2882
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2883
    if-eqz p2, :cond_0

    .line 2884
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2886
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2888
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2889
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2890
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2892
    :cond_2
    return-void
.end method

.method public generateChildOrderChangedEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4044
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 4045
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    .line 4046
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4047
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4049
    :cond_0
    return-void
.end method

.method public generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 4
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "isHeadsUp"    # Z

    .prologue
    const/4 v3, 0x1

    .line 4061
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    .line 4062
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4063
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4064
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 4065
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 4067
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4069
    :cond_1
    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getAppearFraction(F)F
    .locals 4
    .param p1, "height"    # F

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    .line 842
    .local v0, "appearEndPosition":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v1

    .line 843
    .local v1, "appearStartPosition":F
    sub-float v2, p1, v1

    .line 844
    sub-float v3, v0, v1

    .line 843
    div-float/2addr v2, v3

    return v2
.end method

.method public getBackgroundFadeAmount()F
    .locals 1

    .prologue
    .line 3715
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    return v0
.end method

.method public getBottomMostNotificationBottom()F
    .locals 7

    .prologue
    .line 3884
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 3885
    .local v3, "count":I
    const/4 v4, 0x0

    .line 3886
    .local v4, "max":F
    const/4 v2, 0x0

    .local v2, "childIdx":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 3887
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3888
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 3886
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3891
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 3892
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v6

    int-to-float v6, v6

    .line 3891
    sub-float v0, v5, v6

    .line 3893
    .local v0, "bottom":F
    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    .line 3894
    move v4, v0

    goto :goto_1

    .line 3897
    .end local v0    # "bottom":F
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getStackTranslation()F

    move-result v5

    add-float/2addr v5, v4

    return v5
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1014
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 1015
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 1016
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1017
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    .line 1018
    .local v1, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1019
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1020
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    if-ne v3, v1, :cond_2

    .line 1027
    :cond_0
    :goto_0
    move-object v0, v1

    .line 1030
    .end local v1    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-object v0

    .line 1021
    .restart local v1    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1022
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    .line 1018
    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 11
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 1072
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 1073
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1074
    .local v7, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    .line 1075
    instance-of v9, v7, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    .line 1074
    if-eqz v9, :cond_1

    .line 1072
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1078
    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    .line 1079
    .local v2, "childTop":F
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v9

    int-to-float v9, v9

    add-float v8, v2, v9

    .line 1080
    .local v8, "top":F
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v2

    .line 1081
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v10

    int-to-float v10, v10

    .line 1080
    sub-float v0, v9, v10

    .line 1085
    .local v0, "bottom":F
    const/4 v4, 0x0

    .line 1086
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    .line 1088
    .local v5, "right":I
    cmpl-float v9, p2, v8

    if-ltz v9, :cond_0

    cmpg-float v9, p2, v0

    if-gtz v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_0

    int-to-float v9, v5

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_0

    .line 1089
    instance-of v9, v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v9, :cond_3

    move-object v6, v7

    .line 1090
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1091
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v9, :cond_2

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1092
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eq v9, v6, :cond_2

    .line 1093
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1094
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v10, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    .line 1093
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v9

    if-ne v9, v6, :cond_0

    .line 1098
    :cond_2
    sub-float v9, p2, v2

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v9

    return-object v9

    .line 1100
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    return-object v7

    .line 1103
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v7    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v8    # "top":F
    :cond_4
    const/4 v9, 0x0

    return-object v9
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 12
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 1034
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 1035
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    sub-float v6, p2, v10

    .line 1037
    .local v6, "localTouchY":F
    const/4 v3, 0x0

    .line 1038
    .local v3, "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 1041
    .local v7, "minDist":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v4

    .line 1042
    .local v4, "count":I
    const/4 v1, 0x0

    .end local v3    # "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1043
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1044
    .local v8, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 1045
    instance-of v10, v8, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    .line 1044
    if-eqz v10, :cond_1

    .line 1042
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1048
    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    .line 1049
    .local v2, "childTop":F
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v10

    int-to-float v10, v10

    add-float v9, v2, v10

    .line 1050
    .local v9, "top":F
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    .line 1051
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v11

    int-to-float v11, v11

    .line 1050
    sub-float v0, v10, v11

    .line 1053
    .local v0, "bottom":F
    sub-float v10, v9, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v11, v0, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1054
    .local v5, "dist":F
    cmpg-float v10, v5, v7

    if-gez v10, :cond_0

    .line 1055
    move-object v3, v8

    .line 1056
    .local v3, "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    move v7, v5

    goto :goto_1

    .line 1059
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v3    # "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v5    # "dist":F
    .end local v8    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v9    # "top":F
    :cond_2
    return-object v3
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 1939
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    return v0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1779
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method public getDismissViewHeight()I
    .locals 2

    .prologue
    .line 3876
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getEmptyBottomMargin()I
    .locals 2

    .prologue
    .line 3338
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getEmptyShadeViewHeight()I
    .locals 1

    .prologue
    .line 3880
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;
    .locals 5

    .prologue
    .line 1849
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1850
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1851
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1852
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v0, v3, :cond_0

    .line 1853
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .end local v0    # "child":Landroid/view/View;
    return-object v0

    .line 1850
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1856
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getFirstItemMinHeight()I
    .locals 2

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 871
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ExpandableView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    goto :goto_0
.end method

.method public getHostView()Landroid/view/View;
    .locals 0

    .prologue
    .line 3334
    return-object p0
.end method

.method public getIntrinsicPadding()I
    .locals 1

    .prologue
    .line 3659
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return v0
.end method

.method public getLastChildNotGone()Landroid/view/View;
    .locals 5

    .prologue
    .line 1913
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1914
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1915
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1916
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v0, v3, :cond_0

    .line 1917
    return-object v0

    .line 1914
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1920
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getLayoutMinHeight()I
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMaxExpandHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 1164
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v0

    return v0
.end method

.method public getMinExpansionHeight()I
    .locals 3

    .prologue
    .line 4210
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNotGoneChildCount()I
    .locals 6

    .prologue
    .line 1927
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1928
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 1929
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1930
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1931
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v0, v4, :cond_0

    .line 1932
    add-int/lit8 v2, v2, 0x1

    .line 1929
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1935
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    return v2
.end method

.method public getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 1

    .prologue
    .line 4198
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object v0
.end method

.method public getNotificationsTopY()F
    .locals 2

    .prologue
    .line 3666
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getStackTranslation()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getOpeningHeight()F
    .locals 2

    .prologue
    .line 4233
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 4236
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    return v0
.end method

.method public getPeekHeight()I
    .locals 4

    .prologue
    .line 2413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 2414
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ExpandableView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v1

    .line 2416
    .local v1, "firstChildMinHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 2417
    .local v2, "shelfHeight":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v3, :cond_0

    .line 2418
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    .line 2420
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    return v3

    .line 2415
    .end local v1    # "firstChildMinHeight":I
    .end local v2    # "shelfHeight":I
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .restart local v1    # "firstChildMinHeight":I
    goto :goto_0
.end method

.method public getStackTranslation()F
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    return v0
.end method

.method public getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    return-object v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    return v0
.end method

.method public getTopPaddingOverflow()F
    .locals 1

    .prologue
    .line 2409
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    return v0
.end method

.method public goToFullShade(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x1

    .line 3642
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->setInvisible()V

    .line 3643
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    .line 3644
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 3645
    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 3646
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3647
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3648
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 4109
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->hasOverlappingRendering()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPulsingNotifications()Z
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 1

    .prologue
    .line 2870
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_1

    .line 2871
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2870
    :goto_0
    return v0

    .line 2871
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2870
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    .prologue
    .line 1251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    return v0
.end method

.method public isBelowLastNotification(FF)Z
    .locals 10
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3921
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    .line 3922
    .local v2, "childCount":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_5

    .line 3923
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3924
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    .line 3925
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getY()F

    move-result v3

    .line 3926
    .local v3, "childTop":F
    cmpl-float v7, v3, p2

    if-lez v7, :cond_0

    .line 3928
    return v6

    .line 3930
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v3

    .line 3931
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v8

    int-to-float v8, v8

    .line 3930
    sub-float/2addr v7, v8

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    const/4 v0, 0x1

    .line 3932
    .local v0, "belowChild":Z
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-ne v1, v7, :cond_2

    .line 3933
    if-nez v0, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/DismissView;->getX()F

    move-result v8

    sub-float v8, p1, v8

    .line 3934
    sub-float v9, p2, v3

    .line 3933
    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/DismissView;->isOnEmptySpace(FF)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    .line 3936
    return v6

    .line 3930
    .end local v0    # "belowChild":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "belowChild":Z
    goto :goto_1

    .line 3938
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-ne v1, v7, :cond_3

    .line 3940
    return v5

    .line 3941
    :cond_3
    if-nez v0, :cond_4

    .line 3943
    return v6

    .line 3922
    .end local v0    # "belowChild":Z
    .end local v3    # "childTop":F
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3947
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_5
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v7, v8

    cmpl-float v7, p2, v7

    if-lez v7, :cond_6

    :goto_2
    return v5

    :cond_6
    move v5, v6

    goto :goto_2
.end method

.method public isDismissViewNotGone()Z
    .locals 2

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDismissViewVisible()Z
    .locals 1

    .prologue
    .line 3872
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 4125
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return v0
.end method

.method public isInContentBounds(F)Z
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 3281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v2, 0x0

    .line 590
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 591
    .local v0, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v0, :cond_0

    .line 592
    return v2

    .line 594
    :cond_0
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    and-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    if-nez v1, :cond_1

    .line 595
    return v2

    .line 597
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    return v2

    .line 600
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method protected isInsideQsContainer(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolledToBottom()Z
    .locals 2

    .prologue
    .line 3329
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolledToTop()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3324
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public lockScrollTo(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 1174
    return-void

    .line 1176
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1177
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    .line 1178
    return-void
.end method

.method public notifyGroupChildAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 2837
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewAddedInternal(Landroid/view/View;)V

    .line 2838
    return-void
.end method

.method public notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "row"    # Landroid/view/View;
    .param p2, "childrenContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 2833
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 2834
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 1209
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 1211
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 1212
    .local v0, "range":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-le v1, v0, :cond_1

    .line 1215
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1216
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1222
    :cond_0
    :goto_0
    return-object p1

    .line 1217
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 974
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStartDismissing()V

    .line 975
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 976
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onBeginDrag(Landroid/view/View;)V

    .line 977
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 978
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 982
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 983
    return-void
.end method

.method public onChildAnimationFinished()V
    .locals 1

    .prologue
    .line 3489
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3490
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3491
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 3492
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearViewOverlays()V

    .line 3493
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearHeadsUpDisappearRunning()V

    .line 3494
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    move-object v0, p1

    .line 885
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 886
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 887
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleChildDismissed(Landroid/view/View;)V

    .line 889
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 890
    .local v1, "transientContainer":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 891
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 893
    :cond_1
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 2
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F

    .prologue
    const/4 v1, 0x0

    .line 945
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 946
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 947
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 948
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 952
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 957
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 959
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 961
    :cond_1
    return-void

    .line 955
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1267
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1269
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setDensityScale(F)V

    .line 1270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 1271
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setPagingTouchSlop(F)V

    .line 1272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 1273
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStopDismissing()V

    .line 1004
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1005
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    .line 455
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    .line 456
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 455
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 467
    :cond_0
    return-void
.end method

.method public onExpansionStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3354
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 3355
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpansionChanging(Z)V

    .line 3356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 3357
    return-void
.end method

.method public onExpansionStopped()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3360
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 3361
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 3362
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpansionChanging(Z)V

    .line 3363
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v3, :cond_1

    .line 3364
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3365
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    .line 3368
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViews(Landroid/view/ViewGroup;)V

    .line 3369
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3370
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3371
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v3, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 3372
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3373
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViews(Landroid/view/ViewGroup;)V

    .line 3369
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3377
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 1345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v5, :cond_0

    .line 1346
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 1345
    if-eqz v5, :cond_1

    .line 1347
    :cond_0
    return v6

    .line 1349
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 1350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1373
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 1352
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v5, :cond_2

    .line 1353
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1354
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_2

    .line 1355
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1356
    .local v0, "delta":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v3

    .line 1357
    .local v3, "range":I
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1358
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 1359
    .local v1, "newScrollY":I
    if-gez v1, :cond_4

    .line 1360
    const/4 v1, 0x0

    .line 1364
    :cond_3
    :goto_0
    if-eq v1, v2, :cond_2

    .line 1365
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1366
    const/4 v5, 0x1

    return v5

    .line 1361
    :cond_4
    if-le v1, v3, :cond_3

    .line 1362
    move v1, v3

    goto :goto_0

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGoToKeyguard()V
    .locals 0

    .prologue
    .line 3909
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimateEverything()V

    .line 3910
    return-void
.end method

.method public onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    .line 3972
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    .line 3973
    return-void
.end method

.method public onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 2
    .param p1, "changedRow"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "expanded"    # Z

    .prologue
    .line 3952
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupExpandedForMeasure:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_3

    .line 3953
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    .line 3954
    :goto_0
    if-eqz v0, :cond_0

    .line 3955
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    .line 3956
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3958
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    .line 3959
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupExpandedForMeasure:Z

    if-nez v1, :cond_1

    .line 3960
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 3962
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    .line 3968
    return-void

    .line 3953
    :cond_2
    const/4 v0, 0x1

    .local v0, "animated":Z
    goto :goto_0

    .line 3952
    .end local v0    # "animated":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "animated":Z
    goto :goto_0
.end method

.method public onGroupsChanged()V
    .locals 1

    .prologue
    .line 4040
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    .line 4041
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "needsAnimation"    # Z

    .prologue
    .line 3432
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 3433
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3434
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 3435
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3436
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 3437
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3439
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v0, v1, :cond_0

    .line 3440
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-ne v1, v2, :cond_1

    .line 3441
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 3443
    :cond_1
    if-eqz p2, :cond_2

    .line 3444
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimationOnViewResize(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 3446
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3447
    return-void

    .line 3438
    :cond_3
    const/4 v0, 0x0

    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3978
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3979
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 3980
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 3981
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 3982
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 3983
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 3984
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3988
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3989
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v0, :cond_1

    .line 3990
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3991
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eqz v0, :cond_0

    .line 3993
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 3992
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3994
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3996
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-eqz v0, :cond_1

    .line 3997
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3998
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4002
    :cond_1
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4003
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2471
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 2472
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 2473
    const/4 v7, 0x0

    .line 2474
    .local v7, "expandWantsIt":Z
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2475
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 2477
    .end local v7    # "expandWantsIt":Z
    :cond_0
    const/4 v10, 0x0

    .line 2478
    .local v10, "scrollWantsIt":Z
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2479
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2481
    .end local v10    # "scrollWantsIt":Z
    :cond_1
    const/4 v11, 0x0

    .line 2482
    .local v11, "swipeWantsIt":Z
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_2

    .line 2483
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2482
    if-eqz v0, :cond_2

    .line 2484
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2482
    if-eqz v0, :cond_2

    .line 2485
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2482
    if-eqz v0, :cond_2

    .line 2486
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2482
    if-eqz v0, :cond_2

    .line 2487
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 2490
    .end local v11    # "swipeWantsIt":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_6

    const/4 v9, 0x1

    .line 2491
    .local v9, "isUp":Z
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v8

    .line 2492
    .local v8, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    invoke-direct {p0, p1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v9, :cond_3

    xor-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_3

    xor-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_3

    .line 2493
    xor-int/lit8 v0, v10, 0x1

    .line 2492
    if-eqz v0, :cond_3

    .line 2494
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 2495
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    .line 2498
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 2499
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 2501
    :cond_4
    if-nez v11, :cond_5

    if-nez v10, :cond_5

    if-nez v7, :cond_5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_5
    return v1

    .line 2490
    .end local v8    # "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    .end local v9    # "isUp":Z
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "isUp":Z
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 552
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v9

    .line 553
    .local v0, "centerX":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 554
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 557
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v4, v5

    .line 558
    .local v4, "width":F
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v2, v5

    .line 559
    .local v2, "height":F
    div-float v5, v4, v9

    sub-float v5, v0, v5

    float-to-int v5, v5

    .line 561
    div-float v6, v4, v9

    add-float/2addr v6, v0

    float-to-int v6, v6

    .line 562
    float-to-int v7, v2

    .line 560
    const/4 v8, 0x0

    .line 559
    invoke-virtual {v1, v5, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 564
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "height":F
    .end local v4    # "width":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxLayoutHeight(I)V

    .line 565
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 566
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 567
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 568
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFirstAndLastBackgroundViews()V

    .line 569
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 570
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 540
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 543
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 544
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 545
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->measureChild(Landroid/view/View;II)V

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_0
    return-void
.end method

.method public onMenuClicked(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-nez v1, :cond_0

    .line 423
    return-void

    .line 425
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 426
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 427
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    .line 428
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 427
    const/16 v3, 0x14d

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 430
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/systemui/SwipeHelper$LongPressListener;->onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 431
    return-void
.end method

.method public onMenuReset(Landroid/view/View;)V
    .locals 2
    .param p1, "row"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 436
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    .line 437
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    .line 439
    :cond_0
    return-void
.end method

.method public onMenuShown(Landroid/view/View;)V
    .locals 3
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    .line 444
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 446
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 445
    const/16 v2, 0x14c

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onMenuShown(Landroid/view/View;)V

    .line 450
    return-void
.end method

.method public onPanelTrackingStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3389
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 3390
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelTracking(Z)V

    .line 3391
    return-void
.end method

.method public onPanelTrackingStopped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3393
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 3394
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelTracking(Z)V

    .line 3395
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 3451
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 3452
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3453
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 1289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_9

    .line 1290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v7, :cond_a

    const/4 v3, 0x1

    .line 1291
    .local v3, "isCancelOrUp":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 1292
    const/4 v0, 0x0

    .line 1293
    .local v0, "expandWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 1294
    if-eqz v3, :cond_0

    .line 1295
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 1297
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 1298
    .local v6, "wasExpandingBefore":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v8, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1299
    .local v0, "expandWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 1300
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    xor-int/lit8 v8, v8, 0x1

    .line 1299
    if-eqz v8, :cond_1

    .line 1301
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dispatchDownEventToScroller(Landroid/view/MotionEvent;)V

    .line 1304
    .end local v0    # "expandWantsIt":Z
    .end local v6    # "wasExpandingBefore":Z
    :cond_1
    const/4 v5, 0x0

    .line 1305
    .local v5, "scrollerWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 1306
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    xor-int/lit8 v8, v8, 0x1

    .line 1305
    if-eqz v8, :cond_2

    .line 1307
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1309
    .end local v5    # "scrollerWantsIt":Z
    :cond_2
    const/4 v2, 0x0

    .line 1310
    .local v2, "horizontalSwipeWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v8, :cond_3

    .line 1311
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    xor-int/lit8 v8, v8, 0x1

    .line 1310
    if-eqz v8, :cond_3

    .line 1312
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    xor-int/lit8 v8, v8, 0x1

    .line 1310
    if-eqz v8, :cond_3

    .line 1313
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    xor-int/lit8 v8, v8, 0x1

    .line 1310
    if-eqz v8, :cond_3

    .line 1314
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    xor-int/lit8 v8, v8, 0x1

    .line 1310
    if-eqz v8, :cond_3

    .line 1315
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1319
    .end local v2    # "horizontalSwipeWantsIt":Z
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v1

    .line 1320
    .local v1, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-eqz v1, :cond_6

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    .line 1321
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v8

    instance-of v8, v8, Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 1320
    if-eqz v8, :cond_6

    .line 1322
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 1323
    .local v4, "ns":Lcom/android/systemui/statusbar/NotificationSnooze;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationSnooze;->isExpanded()Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v3, :cond_5

    .line 1324
    :cond_4
    if-nez v2, :cond_6

    .line 1323
    if-eqz v5, :cond_6

    .line 1327
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 1330
    .end local v4    # "ns":Lcom/android/systemui/statusbar/NotificationSnooze;
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v7, :cond_7

    .line 1331
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 1333
    :cond_7
    if-nez v2, :cond_8

    if-nez v5, :cond_8

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :cond_8
    return v7

    .line 1289
    .end local v1    # "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    .end local v3    # "isCancelOrUp":Z
    :cond_9
    const/4 v3, 0x1

    .restart local v3    # "isCancelOrUp":Z
    goto/16 :goto_0

    .line 1290
    .end local v3    # "isCancelOrUp":Z
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "isCancelOrUp":Z
    goto/16 :goto_0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2798
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2799
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewAddedInternal(Landroid/view/View;)V

    .line 2800
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2539
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2542
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    if-nez v0, :cond_0

    .line 2543
    invoke-direct {p0, p1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 2545
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 3294
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 3295
    if-nez p1, :cond_0

    .line 3296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 3298
    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4008
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4009
    return v8

    .line 4011
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4012
    return v7

    .line 4014
    :cond_1
    const/4 v0, -0x1

    .line 4015
    .local v0, "direction":I
    sparse-switch p1, :sswitch_data_0

    .line 4035
    :cond_2
    return v7

    .line 4019
    :sswitch_0
    const/4 v0, 0x1

    .line 4024
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingTop:I

    sub-int/2addr v3, v4

    .line 4025
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v4

    .line 4024
    sub-int v2, v3, v4

    .line 4027
    .local v2, "viewportHeight":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    mul-int v4, v0, v2

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4026
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4028
    .local v1, "targetScrollY":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq v1, v3, :cond_2

    .line 4029
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v6, v1, v6

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 4030
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 4031
    return v8

    .line 4015
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
    .end sparse-switch
.end method

.method public removeLongPressCallback()V
    .locals 1

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->removeLongPressCallback()V

    .line 3320
    return-void
.end method

.method public requestDisallowDismiss()V
    .locals 1

    .prologue
    .line 3315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 3316
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2560
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2561
    if-eqz p1, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->removeLongPressCallback()V

    .line 2564
    :cond_0
    return-void
.end method

.method public requestDisallowLongPress()V
    .locals 0

    .prologue
    .line 3310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 3311
    return-void
.end method

.method public resetCheckSnoozeLeavebehind()V
    .locals 1

    .prologue
    .line 3350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 3351
    return-void
.end method

.method public resetExposedMenuView(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 4505
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 4506
    return-void
.end method

.method public resetScrollPosition()V
    .locals 1

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3399
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3400
    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4052
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4053
    return-void
.end method

.method public scrollTo(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    .line 1182
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1183
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v2

    .line 1184
    .local v2, "positionInLinearLayout":I
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I

    move-result v3

    .line 1185
    .local v3, "targetScroll":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v4

    add-int v1, v2, v4

    .line 1189
    .local v1, "outOfViewScroll":I
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v4, v3, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v1, v4, :cond_1

    .line 1190
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v7, v3, v7

    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1191
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 1193
    return v9

    .line 1195
    :cond_1
    return v8
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "activatedChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    const/4 v1, 0x1

    .line 3581
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 3582
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 3583
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 3584
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3586
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3587
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 4165
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4166
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFadingOut(Z)V

    .line 4167
    return-void

    .line 4166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimationRunning(Z)V
    .locals 2
    .param p1, "animationRunning"    # Z

    .prologue
    .line 4113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-eq p1, v0, :cond_0

    .line 4114
    if-eqz p1, :cond_1

    .line 4115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4119
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    .line 4120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 4122
    :cond_0
    return-void

    .line 4117
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0
    .param p1, "animationsEnabled"    # Z

    .prologue
    .line 2841
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 2842
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 2843
    return-void
.end method

.method public setBackgroundBottom(I)V
    .locals 1
    .param p1, "bottom"    # I

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 2194
    return-void
.end method

.method public setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 586
    return-void
.end method

.method public setChildTransferInProgress(Z)V
    .locals 0
    .param p1, "childTransferInProgress"    # Z

    .prologue
    .line 2534
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    .line 2535
    return-void
.end method

.method public setDark(ZZLandroid/graphics/PointF;)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z
    .param p3, "touchWakeUpScreenLocation"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x1

    .line 3678
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDark(Z)V

    .line 3679
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    .line 3680
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 3681
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    .line 3682
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3683
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundFadeAmount(F)V

    .line 3687
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3688
    if-eqz p1, :cond_2

    .line 3689
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExcludedBackgroundArea(Landroid/graphics/Rect;)V

    .line 3694
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateWillNotDraw()V

    .line 3695
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 3696
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3697
    return-void

    .line 3684
    :cond_1
    if-nez p1, :cond_0

    .line 3685
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundFadeAmount(F)V

    goto :goto_0

    .line 3691
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    goto :goto_1
.end method

.method public setDimmed(ZZ)V
    .locals 2
    .param p1, "dimmed"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3529
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDimmed(Z)V

    .line 3530
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 3531
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 3532
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3533
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateDimmed(Z)V

    .line 3537
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3538
    return-void

    .line 3535
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1
    .param p1, "dismissAllInProgress"    # Z

    .prologue
    .line 3845
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    .line 3846
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDismissAllInProgress(Z)V

    .line 3847
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleDismissAllClipping()V

    .line 3848
    return-void
.end method

.method public setDismissView(Lcom/android/systemui/statusbar/DismissView;)V
    .locals 2
    .param p1, "dismissView"    # Lcom/android/systemui/statusbar/DismissView;

    .prologue
    .line 3756
    const/4 v0, -0x1

    .line 3757
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-eqz v1, :cond_0

    .line 3758
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3759
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 3761
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    .line 3762
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 3763
    return-void
.end method

.method public setDrawBackgroundAsSrc(Z)V
    .locals 0
    .param p1, "asSrc"    # Z

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDrawBackgroundAsSrc:Z

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSrcDrawing()V

    .line 520
    return-void
.end method

.method public setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 2
    .param p1, "emptyShadeView"    # Lcom/android/systemui/statusbar/EmptyShadeView;

    .prologue
    .line 3766
    const/4 v0, -0x1

    .line 3767
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v1, :cond_0

    .line 3768
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3769
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 3771
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 3772
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 3773
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 10
    .param p1, "height"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 730
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    .line 731
    cmpl-float v6, p1, v9

    if-lez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsExpanded(Z)V

    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v3

    .line 733
    .local v3, "minExpansionHeight":I
    int-to-float v6, v3

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    .line 734
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 735
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v8

    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 736
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 737
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    float-to-int v7, p1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 738
    int-to-float p1, v3

    .line 739
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    .line 745
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    .line 746
    .local v0, "appearEndPosition":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v2

    .line 747
    .local v2, "appearStartPosition":F
    cmpl-float v6, p1, v0

    if-ltz v6, :cond_3

    .line 748
    const/4 v5, 0x0

    .line 749
    .local v5, "translationY":F
    float-to-int v4, p1

    .line 762
    .local v4, "stackHeight":I
    :goto_2
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq v4, v6, :cond_0

    .line 763
    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 764
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 765
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 767
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackTranslation(F)V

    .line 768
    return-void

    .end local v0    # "appearEndPosition":F
    .end local v2    # "appearStartPosition":F
    .end local v3    # "minExpansionHeight":I
    .end local v4    # "stackHeight":I
    .end local v5    # "translationY":F
    :cond_1
    move v6, v7

    .line 731
    goto :goto_0

    .line 741
    .restart local v3    # "minExpansionHeight":I
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 751
    .restart local v0    # "appearEndPosition":F
    .restart local v2    # "appearStartPosition":F
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearFraction(F)F

    move-result v1

    .line 752
    .local v1, "appearFraction":F
    cmpl-float v6, v1, v9

    if-ltz v6, :cond_4

    .line 753
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v6

    invoke-static {v6, v9, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    .line 760
    .restart local v5    # "translationY":F
    :goto_3
    sub-float v6, p1, v5

    float-to-int v4, v6

    .restart local v4    # "stackHeight":I
    goto :goto_2

    .line 758
    .end local v4    # "stackHeight":I
    .end local v5    # "translationY":F
    :cond_4
    sub-float v6, p1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v7

    add-float v5, v6, v7

    .restart local v5    # "translationY":F
    goto :goto_3
.end method

.method public setExpandingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper;->setEnabled(Z)V

    .line 1238
    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 1
    .param p1, "expandingVelocity"    # F

    .prologue
    .line 4229
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpandingVelocity(F)V

    .line 4230
    return-void
.end method

.method public setExpansionCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1139
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1140
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 1142
    :cond_0
    return-void
.end method

.method public setFadingOut(Z)V
    .locals 1
    .param p1, "fadingOut"    # Z

    .prologue
    .line 4141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    if-eq p1, v0, :cond_0

    .line 4142
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    .line 4143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 4145
    :cond_0
    return-void
.end method

.method public setFinishScrollingCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1632
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    .line 1633
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 3905
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 3906
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 0
    .param p1, "headsUpAnimatingAway"    # Z

    .prologue
    .line 4219
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    .line 4220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 4221
    return-void
.end method

.method public setHeadsUpBoundaries(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "bottomBarHeight"    # I

    .prologue
    .line 4084
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    sub-int v1, p1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setMaxHeadsUpTranslation(F)V

    .line 4085
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setHeadsUpAppearHeightBottom(I)V

    .line 4086
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4087
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 1
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 4056
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 4057
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 4058
    return-void
.end method

.method public setHideSensitive(ZZ)V
    .locals 5
    .param p1, "hideSensitive"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3562
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v3

    if-eq p1, v3, :cond_2

    .line 3563
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 3564
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3565
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3566
    .local v2, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 3564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3568
    .end local v2    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHideSensitive(Z)V

    .line 3569
    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_1

    .line 3570
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 3571
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3573
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3575
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setInHeadsUpPinnedMode(Z)V
    .locals 0
    .param p1, "inHeadsUpPinnedMode"    # Z

    .prologue
    .line 4214
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    .line 4215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 4216
    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0
    .param p1, "intrinsicPadding"    # I

    .prologue
    .line 3655
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 3656
    return-void
.end method

.method public setIsFullWidth(Z)V
    .locals 1
    .param p1, "isFullWidth"    # Z

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelFullWidth(Z)V

    .line 4242
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 876
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    .line 877
    return-void
.end method

.method public setMaxDisplayedNotifications(I)V
    .locals 1
    .param p1, "maxDisplayedNotifications"    # I

    .prologue
    .line 4202
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    if-eq v0, p1, :cond_0

    .line 4203
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 4204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4205
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 4207
    :cond_0
    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .prologue
    .line 3485
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .line 3486
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "mOnHeightChangedListener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .prologue
    .line 3481
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 3482
    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1709
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1710
    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 6
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z

    .prologue
    .line 1722
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    .line 1723
    return-void
.end method

.method public setOverScrollAmount(FZZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z
    .param p5, "isRubberbanded"    # Z

    .prologue
    .line 1737
    if-eqz p4, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 1740
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmountInternal(FZZZ)V

    .line 1741
    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 2
    .param p1, "numPixels"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1697
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1698
    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0
    .param p1, "overscrollTopChangedListener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .prologue
    .line 1771
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .line 1772
    return-void
.end method

.method public setOwnScrollY(I)V
    .locals 3
    .param p1, "ownScrollY"    # I

    .prologue
    .line 4175
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq p1, v0, :cond_0

    .line 4177
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    .line 4178
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 4179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 4180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4182
    :cond_0
    return-void
.end method

.method public setParentNotFullyVisible(Z)V
    .locals 1
    .param p1, "parentNotFullyVisible"    # Z

    .prologue
    .line 4148
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-nez v0, :cond_0

    .line 4150
    return-void

    .line 4152
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    if-eq p1, v0, :cond_1

    .line 4153
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    .line 4154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 4156
    :cond_1
    return-void
.end method

.method public setPulsing(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4129
    .local p1, "pulsing":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Ljava/util/Collection;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 4130
    return-void

    .line 4132
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Ljava/util/Collection;

    .line 4133
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHasPulsingNotifications(Z)V

    .line 4134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 4135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4136
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 4137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4138
    return-void
.end method

.method public setQsContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "qsContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsContainer:Landroid/view/ViewGroup;

    .line 881
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0
    .param p1, "qsExpanded"    # Z

    .prologue
    .line 4170
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    .line 4171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 4172
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 2
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 4094
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 4095
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V

    .line 4101
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1168
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    .line 1169
    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 1
    .param p1, "shadeExpanded"    # Z

    .prologue
    .line 4072
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShadeExpanded(Z)V

    .line 4073
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setShadeExpanded(Z)V

    .line 4074
    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 2
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    .line 4185
    const/4 v0, -0x1

    .line 4186
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v1, :cond_0

    .line 4187
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4188
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4190
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4191
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4192
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4193
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4194
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->bind(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4195
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 3901
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 3902
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .prologue
    .line 4224
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    .line 4225
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStatusBarState(I)V

    .line 4226
    return-void
.end method

.method public setTrackingHeadsUp(Z)V
    .locals 0
    .param p1, "trackingHeadsUp"    # Z

    .prologue
    .line 4090
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    .line 4091
    return-void
.end method

.method public setUnlockHintRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 4245
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setUnlockHintRunning(Z)V

    .line 4246
    return-void
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .prologue
    .line 1117
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1118
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1119
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 1129
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 1130
    return-void

    .line 1132
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 1133
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    .line 1135
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .prologue
    .line 1146
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1147
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 1150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1151
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 3671
    const/4 v0, 0x1

    return v0
.end method

.method public snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1281
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    .line 1283
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v1

    .line 1284
    .local v1, "targetLeft":F
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->snapChildIfNeeded(Landroid/view/View;ZF)V

    .line 1285
    return-void

    .line 1281
    .end local v1    # "targetLeft":F
    :cond_0
    const/4 v0, 0x1

    .local v0, "animate":Z
    goto :goto_0

    .line 1283
    .end local v0    # "animate":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "targetLeft":F
    goto :goto_1
.end method

.method public updateClipping()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 776
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 777
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    xor-int/lit8 v0, v1, 0x1

    .line 778
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    if-eq v1, v0, :cond_0

    .line 779
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    .line 780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 782
    :cond_0
    if-eqz v0, :cond_2

    .line 783
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 787
    :goto_1
    return-void

    .line 776
    :cond_1
    const/4 v0, 0x0

    .local v0, "clipped":Z
    goto :goto_0

    .line 785
    .end local v0    # "clipped":Z
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public updateDismissView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3811
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    .line 3812
    .local v2, "oldVisibility":I
    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 3813
    .local v1, "newVisibility":I
    :goto_1
    if-eq v2, v1, :cond_0

    .line 3814
    const/16 v3, 0x8

    if-eq v1, v3, :cond_4

    .line 3815
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3816
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->cancelAnimation()V

    .line 3820
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/DismissView;->setVisibility(I)V

    .line 3821
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/DismissView;->setWillBeGone(Z)V

    .line 3822
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 3823
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3842
    :cond_0
    :goto_3
    return-void

    .line 3811
    .end local v1    # "newVisibility":I
    .end local v2    # "oldVisibility":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v2

    .restart local v2    # "oldVisibility":I
    goto :goto_0

    .line 3812
    :cond_2
    const/16 v1, 0x8

    .restart local v1    # "newVisibility":I
    goto :goto_1

    .line 3818
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->setInvisible()V

    goto :goto_2

    .line 3825
    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 3834
    .local v0, "dimissHideFinishRunnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->isButtonVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_5

    .line 3835
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/DismissView;->setWillBeGone(Z)V

    .line 3836
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v5, v0}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 3838
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method public updateEmptyShadeView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3776
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    .line 3777
    .local v1, "oldVisibility":I
    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 3778
    .local v0, "newVisibility":I
    :goto_1
    if-eq v1, v0, :cond_0

    .line 3779
    const/16 v3, 0x8

    if-eq v0, v3, :cond_4

    .line 3780
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3781
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->cancelAnimation()V

    .line 3785
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->setVisibility(I)V

    .line 3786
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 3787
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 3788
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3808
    :cond_0
    :goto_3
    return-void

    .line 3776
    .end local v0    # "newVisibility":I
    .end local v1    # "oldVisibility":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v1

    .restart local v1    # "oldVisibility":I
    goto :goto_0

    .line 3777
    :cond_2
    const/16 v0, 0x8

    .restart local v0    # "newVisibility":I
    goto :goto_1

    .line 3783
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    goto :goto_2

    .line 3790
    :cond_4
    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$11;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 3799
    .local v2, "onFinishedRunnable":Ljava/lang/Runnable;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v3, :cond_5

    .line 3800
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 3801
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 3803
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    .line 3804
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method public updateSpeedBumpIndex(IZ)V
    .locals 1
    .param p1, "newIndex"    # I
    .param p2, "noAmbient"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setSpeedBumpIndex(I)V

    .line 581
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNoAmbient:Z

    .line 582
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 3
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 965
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 967
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p3, v1

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 966
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setTopHeadsUpDragAmount(Landroid/view/View;F)V

    .line 969
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateTopPadding(FZZ)V
    .locals 4
    .param p1, "qsHeight"    # F
    .param p2, "animate"    # Z
    .param p3, "ignoreIntrinsicPadding"    # Z

    .prologue
    .line 2379
    float-to-int v1, p1

    .line 2380
    .local v1, "topPadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v0

    .line 2381
    .local v0, "minStackHeight":I
    add-int v2, v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2382
    add-int v2, v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 2386
    :goto_0
    if-eqz p3, :cond_1

    .end local v1    # "topPadding":I
    :goto_1
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTopPadding(IZ)V

    .line 2388
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 2389
    return-void

    .line 2384
    .restart local v1    # "topPadding":I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    goto :goto_0

    .line 2386
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampPadding(I)I

    move-result v1

    goto :goto_1
.end method
