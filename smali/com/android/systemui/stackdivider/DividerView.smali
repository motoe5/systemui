.class public Lcom/android/systemui/stackdivider/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerView$1;,
        Lcom/android/systemui/stackdivider/DividerView$2;,
        Lcom/android/systemui/stackdivider/DividerView$3;
    }
.end annotation


# static fields
.field private static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAdjustedForIme:Z

.field private mBackground:Landroid/view/View;

.field private mBackgroundLifted:Z

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private mDisplayHeight:I

.field private final mDisplayRect:Landroid/graphics/Rect;

.field private mDisplayWidth:I

.field private mDividerInsets:I

.field private mDividerSize:I

.field private mDividerWindowWidth:I

.field private mDockSide:I

.field private final mDockedInsetRect:Landroid/graphics/Rect;

.field private final mDockedRect:Landroid/graphics/Rect;

.field private mDockedStackMinimized:Z

.field private final mDockedTaskRect:Landroid/graphics/Rect;

.field private mEntranceAnimationRunning:Z

.field private mExitAnimationRunning:Z

.field private mExitStartPosition:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowRecents:Z

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private final mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeStackResizable:Z

.field private mIsInMinimizeInteraction:Z

.field private final mLastResizeRect:Landroid/graphics/Rect;

.field private mLongPressEntraceAnimDuration:I

.field private mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

.field private mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mMoving:Z

.field private final mOtherInsetRect:Landroid/graphics/Rect;

.field private final mOtherRect:Landroid/graphics/Rect;

.field private final mOtherTaskRect:Landroid/graphics/Rect;

.field private mRemoved:Z

.field private final mResetBackgroundRunnable:Ljava/lang/Runnable;

.field private final mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

.field private mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStartPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/android/systemui/stackdivider/DividerState;

.field private final mTempInt2:[I

.field private mTouchElevation:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/stackdivider/DividerView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/stackdivider/DividerView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/stackdivider/DividerView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/stackdivider/DividerView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/stackdivider/DividerView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 105
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v5, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 104
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 107
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f5eb852    # 0.87f

    const v3, 0x3f051eb8    # 0.52f

    const v4, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 106
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 109
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 108
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 143
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 166
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 246
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 268
    new-instance v0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 269
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    .line 268
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;-><init>(Landroid/os/Handler;Landroid/view/Display;Landroid/view/Choreographer;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    .line 270
    return-void
.end method

.method private alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "containingRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 926
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 927
    .local v1, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 928
    .local v0, "height":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 929
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 928
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 930
    return-void
.end method

.method private alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "containingRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 919
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 920
    .local v1, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 921
    .local v0, "height":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 922
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    .line 921
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 923
    return-void
.end method

.method private applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V
    .locals 10
    .param p1, "taskRect"    # Landroid/graphics/Rect;
    .param p2, "dockSide"    # I
    .param p3, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p4, "position"    # I
    .param p5, "taskPosition"    # I

    .prologue
    const/4 v9, 0x0

    .line 1098
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1099
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v8, p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v8

    .line 1098
    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1100
    .local v1, "fraction":F
    const/4 v0, 0x0

    .line 1101
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const/4 v4, 0x0

    .line 1102
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const/4 v5, 0x0

    .line 1103
    .local v5, "start":I
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt p4, v7, :cond_2

    .line 1104
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v7

    .line 1103
    if-eqz v7, :cond_2

    .line 1105
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 1106
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    .line 1107
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move v5, p5

    .line 1114
    .end local v0    # "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v4    # "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    cmpl-float v7, v1, v9

    if-lez v7, :cond_1

    .line 1115
    invoke-static {v4, p4, p2}, Lcom/android/systemui/stackdivider/DividerView;->isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z

    move-result v7

    .line 1114
    if-eqz v7, :cond_1

    .line 1116
    invoke-static {v1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateParallaxDismissingFraction(FI)F

    move-result v1

    .line 1117
    int-to-float v7, v5

    .line 1118
    iget v8, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v9, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v1

    .line 1117
    add-float/2addr v7, v8

    float-to-int v3, v7

    .line 1119
    .local v3, "offsetPosition":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1120
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1121
    .local v2, "height":I
    packed-switch p2, :pswitch_data_0

    .line 1140
    .end local v2    # "height":I
    .end local v3    # "offsetPosition":I
    .end local v6    # "width":I
    :cond_1
    :goto_1
    return-void

    .line 1108
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p4, v7, :cond_0

    .line 1109
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v7

    .line 1108
    if-eqz v7, :cond_0

    .line 1110
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 1111
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    .line 1112
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 1123
    .end local v0    # "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v4    # "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v2    # "height":I
    .restart local v3    # "offsetPosition":I
    .restart local v6    # "width":I
    :pswitch_0
    sub-int v7, v3, v6

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 1124
    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1127
    :pswitch_1
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 1128
    add-int v7, v3, v6

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1131
    :pswitch_2
    sub-int v7, v3, v2

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 1132
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1135
    :pswitch_3
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 1136
    add-int v7, v3, v2

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private applyExitAnimationParallax(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "taskRect"    # Landroid/graphics/Rect;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    .line 1034
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1035
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1037
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 1038
    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1039
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method private static calculateParallaxDismissingFraction(FI)F
    .locals 3
    .param p0, "fraction"    # F
    .param p1, "dockSide"    # I

    .prologue
    .line 1147
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    div-float v0, v1, v2

    .line 1150
    .local v0, "result":F
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1151
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1153
    :cond_0
    return v0
.end method

.method private calculatePosition(II)I
    .locals 1
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateYPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->calculateXPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private calculateXPosition(I)I
    .locals 2
    .param p1, "touchX"    # I

    .prologue
    .line 911
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private calculateYPosition(I)I
    .locals 2
    .param p1, "touchY"    # I

    .prologue
    .line 915
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private cancelFlingAnimation()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 663
    :cond_0
    return-void
.end method

.method private commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 5
    .param p1, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 666
    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v1, :cond_0

    .line 667
    return-void

    .line 670
    :cond_0
    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v1, v2, :cond_3

    .line 671
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v1, v2, :cond_1

    .line 672
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 677
    .local v0, "dismissOrMaximize":Z
    :goto_0
    if-eqz v0, :cond_6

    .line 678
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    .line 682
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    .line 683
    return-void

    .line 671
    .end local v0    # "dismissOrMaximize":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_0

    .line 672
    .end local v0    # "dismissOrMaximize":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_0

    .line 674
    .end local v0    # "dismissOrMaximize":Z
    :cond_3
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 675
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_0

    .line 674
    .end local v0    # "dismissOrMaximize":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_0

    .line 675
    .end local v0    # "dismissOrMaximize":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_0

    .line 680
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    goto :goto_1
.end method

.method private convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 562
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 563
    return-void
.end method

.method private static dockSideBottomRight(I)Z
    .locals 2
    .param p0, "dockSide"    # I

    .prologue
    const/4 v0, 0x1

    .line 1185
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2
    .param p0, "dockSide"    # I

    .prologue
    const/4 v0, 0x1

    .line 1178
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fling(IFZZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "avoidDismissStart"    # Z
    .param p4, "logMetrics"    # Z

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    .line 568
    .local v1, "currentSnapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 569
    .local v2, "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 570
    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 572
    :cond_0
    if-eqz p4, :cond_1

    .line 573
    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 575
    :cond_1
    const-wide/16 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 576
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    int-to-float v4, p1

    iget v5, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v5, v5

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 577
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 578
    return-void
.end method

.method private flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "startDelay"    # J
    .param p7, "endDelay"    # J
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 582
    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 583
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 584
    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 585
    invoke-virtual {v0, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 587
    return-void
.end method

.method private getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .locals 3
    .param p1, "position"    # I
    .param p2, "dismissTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v2, 0x0

    .line 1044
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v1, :cond_0

    .line 1045
    return v2

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    .line 1048
    .local v0, "fraction":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1049
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1050
    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1053
    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    .line 1055
    :cond_1
    return v0
.end method

.method private getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
    .locals 9
    .param p1, "position"    # I
    .param p2, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "endDelay"    # J

    .prologue
    const/4 v1, 0x0

    .line 591
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 595
    :cond_0
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v0, :cond_1

    const/4 v7, 0x1

    .line 596
    .local v7, "taskPositionSameAtEnd":Z
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    iget v1, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 597
    .local v6, "anim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$3;

    invoke-direct {v0, v7, p0, p2}, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$3;-><init>(ZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 602
    new-instance v5, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$2;

    invoke-direct {v5, p0, p2}, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 616
    .local v5, "endAction":Ljava/lang/Runnable;
    new-instance v4, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU;

    invoke-direct {v4, p0}, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU;-><init>(Ljava/lang/Object;)V

    .line 622
    .local v4, "notCancelledEndAction":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$5;

    move-object v1, p0

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView$5;-><init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 655
    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    .line 656
    return-object v6

    .line 595
    .end local v4    # "notCancelledEndAction":Ljava/lang/Runnable;
    .end local v5    # "endAction":Ljava/lang/Runnable;
    .end local v6    # "anim":Landroid/animation/ValueAnimator;
    .end local v7    # "taskPositionSameAtEnd":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "taskPositionSameAtEnd":Z
    goto :goto_0
.end method

.method private getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2
    .param p1, "dismissTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 1165
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1166
    :cond_0
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1167
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    .line 1165
    if-eqz v0, :cond_2

    .line 1168
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 1170
    :cond_2
    const/4 v0, 0x5

    return v0
.end method

.method private hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 3
    .param p1, "dismissTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1062
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1063
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 1064
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1066
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1069
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 1070
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 1072
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_6

    :goto_3
    return v0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private initializeSnapAlgorithm()V
    .locals 8

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 454
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 453
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_1

    .line 457
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 458
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    .line 459
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    .line 457
    :goto_0
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;Z)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 461
    :cond_1
    return-void

    .line 459
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z
    .locals 3
    .param p0, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p1, "position"    # I
    .param p2, "dockSide"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1157
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    if-ne p2, v0, :cond_2

    .line 1158
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1160
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private liftBackground()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x96

    const v1, 0x3fb33333    # 1.4f

    .line 686
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-eqz v0, :cond_0

    .line 687
    return-void

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 694
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 695
    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 694
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 697
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    int-to-float v1, v1

    .line 694
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 702
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 703
    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 702
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 705
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    int-to-float v1, v1

    .line 702
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    .line 708
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 6
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/16 v5, 0x186

    const/4 v2, 0x2

    const/16 v4, 0x185

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 535
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 537
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    :goto_0
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 559
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 539
    goto :goto_0

    .line 540
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 542
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 541
    :goto_2
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 544
    goto :goto_2

    .line 545
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 546
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 548
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 549
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    .line 550
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 549
    :goto_3
    invoke-static {v1, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_6
    move v0, v2

    .line 552
    goto :goto_3

    .line 553
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    .line 555
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 554
    :goto_4
    invoke-static {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_8
    move v2, v0

    .line 557
    goto :goto_4
.end method

.method private releaseBackground()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 711
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-nez v0, :cond_0

    .line 712
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 715
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 714
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 721
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 722
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 721
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    .line 727
    return-void
.end method

.method private resetBackground()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 870
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 871
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 872
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 873
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 874
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    .line 875
    return-void
.end method

.method private resizeStack(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 2
    .param p1, "taskSnapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 945
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 946
    return-void
.end method

.method private restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2
    .param p1, "taskPosition"    # I
    .param p2, "dockSide"    # I
    .param p3, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 1083
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1085
    :cond_0
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1086
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    .line 1085
    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1089
    :cond_1
    return p1
.end method

.method private saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 3
    .param p1, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 865
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v2, v0

    .line 866
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    :goto_0
    int-to-float v0, v0

    .line 865
    div-float v0, v2, v0

    iput v0, v1, Lcom/android/systemui/stackdivider/DividerState;->mRatioPositionBeforeMinimized:F

    .line 867
    return-void

    .line 866
    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_0
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 441
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 444
    return-void
.end method

.method private updateDisplayInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 891
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 892
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 893
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 894
    .local v2, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 895
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 896
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    .line 897
    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 898
    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 899
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 900
    return-void
.end method

.method private updateDockSide()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 448
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    .line 449
    return-void
.end method


# virtual methods
.method public calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "dockSide"    # I
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 933
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 934
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    move v0, p1

    move v1, p2

    move-object v2, p3

    .line 933
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 935
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->getLocationOnScreen([I)V

    .line 471
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 465
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :goto_0
    return-object v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    goto :goto_0
.end method

.method public getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method public growsRecents()I
    .locals 3

    .prologue
    .line 1205
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v1, :cond_1

    .line 1206
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1207
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1208
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1209
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return v1

    .line 1207
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 1205
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 1211
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;)V
    .locals 3
    .param p1, "windowManager"    # Lcom/android/systemui/stackdivider/DividerWindowManager;
    .param p2, "dividerState"    # Lcom/android/systemui/stackdivider/DividerState;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 378
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    .line 381
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget v2, v1, Lcom/android/systemui/stackdivider/DividerState;->mRatioPositionBeforeMinimized:F

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    :goto_0
    int-to-float v1, v1

    .line 384
    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 386
    .local v0, "position":I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 391
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 392
    return-void

    .line 385
    .end local v0    # "position":I
    :cond_1
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_0
.end method

.method public isHorizontalDivision()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 907
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerView_26412(ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "taskPositionSameAtEnd"    # Z
    .param p2, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 597
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 598
    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 599
    const v0, 0x7fffffff

    .line 597
    :goto_0
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackDelayed(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void

    .line 600
    :cond_0
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerView_26714(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 2
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v1, 0x0

    .line 603
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 604
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 605
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    .line 607
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    .line 608
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    .line 609
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 612
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 613
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerView_27317()V
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerView_53796()V
    .locals 8

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 1248
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    int-to-long v3, v0

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1249
    const-wide/16 v6, 0xc8

    move-object v0, p0

    .line 1247
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    return-void
.end method

.method public notifyDockSideChanged(I)V
    .locals 2
    .param p1, "newDockSide"    # I

    .prologue
    .line 884
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 885
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    .line 886
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    .line 887
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v5, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 344
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    .line 345
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    .line 344
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-eqz v0, :cond_2

    .line 347
    :cond_1
    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 348
    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 352
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 318
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 321
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    xor-int/lit8 v0, v0, 0x1

    .line 321
    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 325
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1225
    iget v1, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v3, v1, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    .line 1227
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v4, v1, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    .line 1228
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1230
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1231
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    .line 1232
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    .line 1231
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v0

    .line 1233
    .local v0, "position":I
    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    .line 1235
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1236
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 1235
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 1237
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 3
    .param p1, "recentsActivityStartingEvent"    # Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    .prologue
    const/4 v2, 0x0

    .line 1216
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, v1, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    .line 1220
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1222
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;)V
    .locals 11
    .param p1, "undockingTaskEvent"    # Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;

    .prologue
    const/4 v2, 0x0

    .line 1262
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    .line 1263
    .local v0, "dockSide":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-nez v1, :cond_0

    .line 1264
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    xor-int/lit8 v1, v1, 0x1

    .line 1263
    if-eqz v1, :cond_1

    .line 1265
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1266
    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1267
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .line 1271
    .local v3, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    .line 1272
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 1273
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    const-wide/16 v4, 0x150

    const-wide/16 v6, 0x64

    .line 1274
    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    .line 1273
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 1276
    .end local v3    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_1
    return-void

    .line 1268
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .restart local v3    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    .line 1190
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 1191
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v3

    .line 1192
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v4

    .line 1191
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 1193
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1194
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 1193
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 1195
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 879
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 880
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    .line 881
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 330
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method onDividerRemoved()V
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mRemoved:Z

    .line 335
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 274
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 275
    const v1, 0x7f0a00c0

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 276
    const v1, 0x7f0a00bf

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    .line 277
    const v1, 0x7f0a019d

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 278
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 280
    const v2, 0x1050075

    .line 279
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 282
    const v2, 0x1050074

    .line 281
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    .line 283
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 285
    const v2, 0x7f070085

    .line 284
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 287
    const v2, 0x7f0b003f

    .line 286
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    .line 289
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    .line 290
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    .line 294
    .local v0, "landscape":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 295
    if-eqz v0, :cond_1

    const/16 v1, 0x3f6

    .line 294
    :goto_1
    invoke-static {v3, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 297
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 298
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerView$4;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 313
    return-void

    .line 292
    .end local v0    # "landscape":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "landscape":Z
    goto :goto_0

    .line 295
    :cond_1
    const/16 v1, 0x3f7

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 357
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "minimizeLeft":I
    const/4 v1, 0x0

    .line 360
    .local v1, "minimizeTop":I
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 361
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 367
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 368
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    .line 369
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 367
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    .line 370
    if-eqz p1, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v5

    .line 372
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v7

    .line 371
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 374
    :cond_1
    return-void

    .line 362
    :cond_2
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 363
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 364
    :cond_3
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 365
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0
.end method

.method public onRecentsDrawn()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    .line 1242
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1244
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    .line 1254
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1255
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1256
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    const-wide/16 v4, 0x150

    .line 1257
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    .line 1256
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    .line 1259
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 480
    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->convertToScreenCoordinates(Landroid/view/MotionEvent;)V

    .line 481
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 482
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 483
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 531
    :cond_0
    :goto_0
    return v10

    .line 485
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 486
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 487
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    .line 488
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    .line 489
    invoke-virtual {p0, v10, v10}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    move-result v3

    .line 490
    .local v3, "result":Z
    if-nez v3, :cond_1

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging()V

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    .line 496
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 497
    return v3

    .line 499
    .end local v3    # "result":Z
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 500
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 501
    .local v5, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 503
    .local v6, "y":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v7, v8, :cond_3

    const/4 v1, 0x1

    .line 505
    .local v1, "exceededTouchSlop":Z
    :goto_1
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-nez v7, :cond_2

    if-eqz v1, :cond_2

    .line 506
    iput v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    .line 507
    iput v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    .line 508
    iput-boolean v10, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 510
    :cond_2
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v7

    .line 512
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/4 v9, 0x0

    .line 511
    invoke-virtual {v7, v8, v9, v11}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    .line 513
    .local v4, "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-virtual {p0, v7, v8, v4}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackDelayed(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_0

    .line 504
    .end local v1    # "exceededTouchSlop":Z
    .end local v4    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v7, v8, :cond_4

    const/4 v1, 0x1

    .restart local v1    # "exceededTouchSlop":Z
    goto :goto_1

    .end local v1    # "exceededTouchSlop":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "exceededTouchSlop":Z
    goto :goto_1

    .line 518
    .end local v1    # "exceededTouchSlop":Z
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 520
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    .line 521
    .restart local v5    # "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v6, v7

    .line 523
    .restart local v6    # "y":I
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 524
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v2

    .line 525
    .local v2, "position":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    :goto_2
    invoke-virtual {p0, v2, v7, v11, v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 528
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    goto/16 :goto_0

    .line 526
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    goto :goto_2

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 23
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "taskSnapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 949
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mRemoved:Z

    if-eqz v3, :cond_0

    .line 951
    return-void

    .line 953
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 956
    return-void

    .line 960
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 964
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 965
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-eqz v3, :cond_3

    .line 966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 967
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 966
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 969
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 968
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 971
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    .line 970
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 972
    return-void

    .line 975
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_6

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    .line 976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    .line 977
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 982
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 982
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 985
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 984
    const/4 v6, 0x0

    .line 985
    const/4 v8, 0x0

    .line 984
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1026
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v21

    .line 1027
    .local v21, "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v22

    .line 1028
    .local v22, "dimFraction":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    .line 1029
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v5

    .line 1028
    move/from16 v0, v22

    invoke-virtual {v4, v3, v5, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    .line 1031
    return-void

    .line 979
    .end local v21    # "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v22    # "dimFraction":F
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    .line 980
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 979
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_3

    .line 986
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    if-eqz v3, :cond_7

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    .line 988
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 987
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 989
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 990
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 989
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 994
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 993
    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 995
    :cond_7
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_9

    .line 996
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    .line 997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 996
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 998
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    .line 1000
    .local v11, "dockSideInverted":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v8

    .line 1002
    .local v8, "taskPositionDocked":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v14

    .line 1003
    .local v14, "taskPositionOther":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1010
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1017
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v9, p0

    move-object/from16 v12, p3

    move/from16 v13, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 1021
    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1014
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 1024
    .end local v8    # "taskPositionDocked":I
    .end local v11    # "dockSideInverted":I
    .end local v14    # "taskPositionOther":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1028
    .restart local v21    # "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v22    # "dimFraction":F
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public resizeStackDelayed(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "taskSnapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 938
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 940
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 941
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->scheduleAtSfVsync(Landroid/os/Handler;Landroid/os/Message;)V

    .line 942
    return-void
.end method

.method public setAdjustedForIme(Z)V
    .locals 4
    .param p1, "adjustedForIme"    # Z

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 819
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 820
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    .line 821
    if-nez p1, :cond_2

    .line 822
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    .line 832
    :cond_0
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    .line 833
    return-void

    .line 820
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 823
    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 824
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 825
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 827
    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 828
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 829
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1
.end method

.method public setAdjustedForIme(ZJ)V
    .locals 6
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 836
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 837
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 838
    sget-object v4, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 837
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 840
    if-eqz p1, :cond_3

    move v0, v1

    .line 837
    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 842
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 843
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 844
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 845
    if-eqz p1, :cond_0

    move v2, v3

    .line 844
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 853
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 854
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 857
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 856
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 860
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    .line 861
    return-void

    :cond_3
    move v0, v2

    .line 840
    goto :goto_0

    .line 847
    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 848
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 849
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 850
    if-eqz p1, :cond_6

    .line 849
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_6
    move v3, v2

    .line 850
    goto :goto_2
.end method

.method public setMinimizedDockStack(ZJZ)V
    .locals 10
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J
    .param p4, "isHomeStackResizable"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 769
    iput-boolean p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    .line 770
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 771
    if-nez p4, :cond_a

    .line 772
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 773
    if-eqz p1, :cond_3

    move v0, v1

    .line 772
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 774
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 772
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 777
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 778
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 777
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 780
    if-eqz p1, :cond_4

    move v0, v2

    .line 777
    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 782
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 783
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 784
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 785
    if-eqz p1, :cond_5

    .line 784
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 794
    :cond_0
    :goto_3
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 809
    :cond_1
    :goto_4
    if-nez p1, :cond_2

    .line 810
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 813
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 812
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 816
    return-void

    :cond_3
    move v0, v2

    .line 773
    goto :goto_0

    :cond_4
    move v0, v1

    .line 780
    goto :goto_1

    :cond_5
    move v2, v1

    .line 785
    goto :goto_2

    .line 786
    :cond_6
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v4, :cond_7

    .line 787
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 788
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v4, :cond_8

    move v0, v8

    :goto_5
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotX(F)V

    .line 791
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 792
    if-eqz p1, :cond_9

    .line 791
    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 790
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_5

    :cond_9
    move v2, v1

    .line 792
    goto :goto_6

    .line 795
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eq v0, p1, :cond_1

    .line 796
    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 798
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 799
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 800
    if-eqz p1, :cond_b

    .line 801
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 803
    :goto_7
    if-eqz p1, :cond_c

    .line 804
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 806
    :goto_8
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, p2

    .line 800
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    .line 807
    invoke-virtual {p0, v8, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(ZJ)V

    goto :goto_4

    .line 802
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    goto :goto_7

    .line 805
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    goto :goto_8
.end method

.method public setMinimizedDockStack(ZZ)V
    .locals 6
    .param p1, "minimized"    # Z
    .param p2, "isHomeStackResizable"    # Z

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 731
    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    .line 732
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 733
    if-nez p1, :cond_2

    .line 734
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    .line 747
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    if-eqz p1, :cond_6

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    .line 748
    if-nez p2, :cond_8

    .line 749
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_7

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    .line 750
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 765
    :cond_1
    :goto_3
    return-void

    .line 735
    :cond_2
    if-nez p2, :cond_0

    .line 736
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 737
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 739
    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v5, :cond_4

    .line 740
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 741
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v5, :cond_5

    move v0, v1

    :goto_4
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    .line 743
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_4

    :cond_6
    move v0, v3

    .line 747
    goto :goto_1

    :cond_7
    move v3, v2

    .line 749
    goto :goto_2

    .line 751
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eq v0, p1, :cond_1

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 753
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 754
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 755
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-eq v0, p1, :cond_1

    .line 756
    if-eqz p1, :cond_9

    .line 757
    iput-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    .line 758
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_3

    .line 760
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 761
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    goto :goto_3
.end method

.method public startDragging(ZZ)Z
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "touching"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 399
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 400
    if-eqz p2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2, v0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 405
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 406
    if-eqz p2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    .line 410
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;

    invoke-direct {v3}, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 411
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public stopDragging(IFZZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "avoidDismissStart"    # Z
    .param p4, "logMetrics"    # Z

    .prologue
    const/4 v2, 0x1

    .line 416
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 417
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 420
    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "startDelay"    # J
    .param p7, "endDelay"    # J
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x1

    .line 434
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 435
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 437
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 438
    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 424
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 425
    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "endDelay"    # J

    .prologue
    .line 429
    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v8, p6

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 430
    return-void
.end method
