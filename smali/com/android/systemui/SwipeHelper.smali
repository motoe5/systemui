.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$Callback;,
        Lcom/android/systemui/SwipeHelper$LongPressListener;
    }
.end annotation


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private mDismissPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDragging:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFalsingThreshold:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPerpendicularInitialTouchPos:F

.field private mSnappingChild:Z

.field private mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mTranslation:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/SwipeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/SwipeHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/SwipeHelper;)[I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 4
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 55
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 56
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 57
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 65
    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    .line 83
    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    .line 99
    iput-object p3, p0, Lcom/android/systemui/SwipeHelper;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 102
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 103
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 104
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 105
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 107
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 108
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    const v1, 0x7f0702b9

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    .line 110
    invoke-static {p3}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getMaxEscapeAnimDuration()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {v0, p3, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 112
    return-void
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 630
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getMaxVelocity()F
    .locals 2

    .prologue
    .line 634
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSwipeAlpha(F)F
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 198
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    div-float v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;F)F
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translation"    # F

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    .line 193
    .local v1, "viewSize":F
    div-float v2, p2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 194
    .local v0, "result":F
    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 228
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 226
    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 229
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 237
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 239
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 240
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 241
    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 242
    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 243
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 240
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method private snapChildInstantly(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 518
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 519
    .local v0, "canAnimViewBeDismissed":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 520
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 521
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 203
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .locals 4
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "translation"    # F

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;F)F

    move-result v1

    .line 208
    .local v1, "swipeProgress":F
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    if-eqz p2, :cond_1

    .line 210
    move v0, v1

    .line 211
    .local v0, "alpha":F
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v2, :cond_0

    .line 212
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 213
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 218
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSwipeAlpha(F)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 221
    .end local v0    # "alpha":F
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 222
    return-void

    .line 215
    .restart local v0    # "alpha":F
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    const/4 v3, 0x0

    .line 149
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 148
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 149
    aput p2, v2, v3

    .line 148
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 150
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 149
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
    .locals 18
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "endAction"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "useAccelerateInterpolator"    # Z
    .param p7, "fixedDuration"    # J
    .param p9, "isDismissAll"    # Z

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v13

    .line 361
    .local v13, "canBeDismissed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    const/16 v16, 0x1

    .line 364
    .local v16, "isLayoutRtl":Z
    :goto_0
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    if-eqz p9, :cond_6

    .line 365
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    const/4 v12, 0x1

    .line 367
    .local v12, "animateUpForMenu":Z
    :goto_1
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    if-eqz p9, :cond_7

    .line 368
    :cond_1
    move/from16 v11, v16

    .line 369
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_8

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_8

    const/4 v10, 0x1

    .line 371
    :goto_3
    if-nez v10, :cond_2

    if-nez v11, :cond_2

    if-eqz v12, :cond_a

    .line 372
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    neg-float v7, v4

    .line 377
    .local v7, "newPos":F
    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v4, p7, v8

    if-nez v4, :cond_c

    .line 378
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v14, v4

    .line 379
    .local v14, "duration":J
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_b

    .line 381
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    int-to-long v8, v4

    .line 380
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 391
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v4, :cond_3

    .line 392
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 394
    :cond_3
    new-instance v17, Lcom/android/systemui/SwipeHelper$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v13}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 401
    .local v17, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v5

    .line 402
    .local v5, "anim":Landroid/animation/Animator;
    if-nez v5, :cond_d

    .line 403
    return-void

    .line 361
    .end local v5    # "anim":Landroid/animation/Animator;
    .end local v7    # "newPos":F
    .end local v12    # "animateUpForMenu":Z
    .end local v14    # "duration":J
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_4
    const/16 v16, 0x0

    .restart local v16    # "isLayoutRtl":Z
    goto/16 :goto_0

    .line 365
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "animateUpForMenu":Z
    goto/16 :goto_1

    .line 364
    .end local v12    # "animateUpForMenu":Z
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "animateUpForMenu":Z
    goto/16 :goto_1

    .line 367
    :cond_7
    const/4 v11, 0x0

    .local v11, "animateLeftForRtl":Z
    goto :goto_2

    .line 370
    .end local v11    # "animateLeftForRtl":Z
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_9

    xor-int/lit8 v10, p9, 0x1

    .local v10, "animateLeft":Z
    goto :goto_3

    .end local v10    # "animateLeft":Z
    :cond_9
    const/4 v10, 0x0

    .local v10, "animateLeft":Z
    goto :goto_3

    .line 374
    .end local v10    # "animateLeft":Z
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    .restart local v7    # "newPos":F
    goto :goto_4

    .line 385
    .restart local v14    # "duration":J
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v14, v4

    goto :goto_5

    .line 388
    .end local v14    # "duration":J
    :cond_c
    move-wide/from16 v14, p7

    .restart local v14    # "duration":J
    goto :goto_5

    .line 405
    .restart local v5    # "anim":Landroid/animation/Animator;
    .restart local v17    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_d
    if-eqz p6, :cond_f

    .line 406
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    invoke-virtual {v5, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 412
    :goto_6
    const-wide/16 v8, 0x0

    cmp-long v4, p4, v8

    if-lez v4, :cond_e

    .line 413
    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 415
    :cond_e
    new-instance v4, Lcom/android/systemui/SwipeHelper$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v13, v2}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/SwipeHelper;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 442
    return-void

    .line 409
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    .line 410
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v9

    move/from16 v8, p2

    .line 409
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    goto :goto_6
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "useAccelerateInterpolator"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 344
    const/4 v3, 0x0

    .line 345
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-wide v7, v4

    .line 344
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    .line 346
    return-void
.end method

.method protected getEscapeVelocity()F
    .locals 2

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getUnscaledEscapeVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getMaxEscapeAnimDuration()J
    .locals 2

    .prologue
    .line 646
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method protected getUnscaledEscapeVelocity()F
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    return v0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # F
    .param p3, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 161
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_0

    .line 162
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 164
    :cond_0
    return-object v0
.end method

.method protected handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "animView"    # Landroid/view/View;
    .param p3, "velocity"    # F
    .param p4, "translation"    # F

    .prologue
    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method public isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 656
    if-eqz v0, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    move-result v0

    .line 656
    if-eqz v0, :cond_1

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 656
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFalseGesture(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v0

    .line 663
    .local v0, "falsingDetected":Z
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    .line 668
    .end local v0    # "falsingDetected":Z
    :goto_0
    return v0

    .line 664
    .restart local v0    # "falsingDetected":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "falsingDetected":Z
    goto :goto_0

    .line 666
    .local v0, "falsingDetected":Z
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    xor-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, "falsingDetected":Z
    goto :goto_0
.end method

.method public onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "currView"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 500
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 264
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 335
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v7, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    :cond_1
    return v6

    .line 266
    :pswitch_0
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 267
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 268
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 269
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 270
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 271
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v7, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 273
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 274
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7, p1}, Lcom/android/systemui/SwipeHelper;->onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 275
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 276
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    .line 279
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 280
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-eqz v7, :cond_0

    .line 281
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v7, :cond_2

    .line 282
    new-instance v7, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 302
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 308
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 309
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    .line 311
    .local v5, "pos":F
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v4

    .line 312
    .local v4, "perpendicularPos":F
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v5, v7

    .line 313
    .local v2, "delta":F
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    sub-float v3, v4, v7

    .line 314
    .local v3, "deltaPerpendicular":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 315
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 316
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 317
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 318
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 319
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 327
    .end local v2    # "delta":F
    .end local v3    # "deltaPerpendicular":F
    .end local v4    # "perpendicularPos":F
    .end local v5    # "pos":F
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v7, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 328
    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 329
    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 330
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 332
    if-eqz v1, :cond_0

    return v6

    .line 327
    :cond_3
    const/4 v1, 0x1

    .local v1, "captured":Z
    goto :goto_1

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "totalTranslation"    # F
    .param p4, "delta"    # F

    .prologue
    .line 507
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 554
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_0

    .line 555
    return v10

    .line 558
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v6, :cond_2

    .line 559
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 564
    return v10

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 570
    return v12

    .line 574
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 576
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 625
    :cond_3
    :goto_0
    return v10

    .line 579
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 580
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v6, v7

    .line 581
    .local v2, "delta":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 582
    .local v0, "absDelta":F
    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_4

    .line 583
    iput-boolean v10, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 587
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    .line 588
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    .line 589
    .local v4, "size":F
    const v6, 0x3e99999a    # 0.3f

    mul-float v3, v6, v4

    .line 590
    .local v3, "maxScrollDistance":F
    cmpl-float v6, v0, v4

    if-ltz v6, :cond_7

    .line 591
    cmpl-float v6, v2, v11

    if-lez v6, :cond_6

    move v2, v3

    .line 597
    .end local v3    # "maxScrollDistance":F
    .end local v4    # "size":F
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 598
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 599
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v7, v2

    invoke-virtual {p0, v6, p1, v7, v2}, Lcom/android/systemui/SwipeHelper;->onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 591
    .restart local v3    # "maxScrollDistance":F
    .restart local v4    # "size":F
    :cond_6
    neg-float v2, v3

    goto :goto_1

    .line 593
    :cond_7
    div-float v6, v2, v4

    float-to-double v6, v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v2, v3, v6

    goto :goto_1

    .line 604
    .end local v0    # "absDelta":F
    .end local v2    # "delta":F
    .end local v3    # "maxScrollDistance":F
    .end local v4    # "size":F
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 607
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getMaxVelocity()F

    move-result v7

    const/16 v8, 0x3e8

    invoke-virtual {v6, v8, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 608
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v6}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v5

    .line 610
    .local v5, "velocity":F
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    invoke-virtual {p0, p1, v6, v5, v7}, Lcom/android/systemui/SwipeHelper;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v6

    if-nez v6, :cond_8

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 613
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 614
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 613
    invoke-virtual {p0, v6, v5, v7}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    .line 620
    :goto_2
    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 622
    :cond_8
    iput-boolean v12, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    goto/16 :goto_0

    .line 617
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 618
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6, v11, v5}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    goto :goto_2

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTranslationUpdate(Landroid/view/View;FZ)V
    .locals 0
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "value"    # F
    .param p3, "canBeDismissed"    # Z

    .prologue
    .line 514
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 515
    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 449
    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 493
    return-void
.end method

.method public removeLongPressCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    iput-object v2, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 258
    :cond_0
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 119
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 120
    return-void
.end method

.method public setDisableHardwareLayers(Z)V
    .locals 0
    .param p1, "disableHwLayers"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    .line 128
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    .line 116
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 124
    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 6
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F
    .param p3, "velocity"    # F

    .prologue
    .line 452
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 453
    .local v1, "canBeDismissed":Z
    new-instance v3, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 460
    .local v3, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    .line 461
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v0, :cond_0

    .line 462
    return-void

    .line 464
    :cond_0
    const/16 v2, 0x96

    .line 465
    .local v2, "duration":I
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 466
    new-instance v4, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 483
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 484
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 485
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 486
    return-void
.end method

.method public snapChildIfNeeded(Landroid/view/View;ZF)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z
    .param p3, "targetLeft"    # F

    .prologue
    const/4 v3, 0x0

    .line 532
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 533
    :cond_0
    return-void

    .line 532
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    if-nez v2, :cond_0

    .line 535
    const/4 v1, 0x0

    .line 536
    .local v1, "needToSnap":Z
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 537
    .local v0, "dismissPendingAnim":Landroid/animation/Animator;
    if-eqz v0, :cond_4

    .line 538
    const/4 v1, 0x1

    .line 539
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 543
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 544
    if-eqz p2, :cond_5

    .line 545
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 550
    :cond_3
    :goto_1
    return-void

    .line 540
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 541
    const/4 v1, 0x1

    goto :goto_0

    .line 547
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->snapChildInstantly(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected swipedFarEnough()Z
    .locals 4

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 652
    .local v0, "translation":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 651
    :goto_0
    return v1

    .line 652
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected swipedFastEnough()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 672
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v5}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v2

    .line 673
    .local v2, "velocity":F
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 674
    .local v1, "translation":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 675
    cmpl-float v5, v2, v7

    if-lez v5, :cond_0

    move v5, v3

    :goto_0
    cmpl-float v6, v1, v7

    if-lez v6, :cond_1

    :goto_1
    if-ne v5, v3, :cond_2

    const/4 v0, 0x1

    .line 676
    .local v0, "ret":Z
    :goto_2
    return v0

    .end local v0    # "ret":Z
    :cond_0
    move v5, v4

    .line 675
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_2

    .line 674
    .end local v0    # "ret":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_2
.end method
