.class public Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.super Landroid/widget/ImageView;
.source "KeyguardAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;,
        Lcom/android/systemui/statusbar/KeyguardAffordanceView$2;,
        Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;,
        Lcom/android/systemui/statusbar/KeyguardAffordanceView$4;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCenterX:I

.field private mCenterY:I

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleColor:I

.field private mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mCircleStartRadius:F

.field private mCircleStartValue:F

.field private mCircleWillBeHidden:Z

.field private mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mColorInterpolator:Landroid/animation/ArgbEvaluator;

.field private mFinishing:Z

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHwCenterX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCenterY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCirclePaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCircleRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mImageScale:F

.field private final mInverseColor:I

.field private mLaunchingAffordance:Z

.field private mMaxCircleSize:F

.field private final mMinBackgroundRadius:I

.field private final mNormalColor:I

.field private mPreviewClipper:Landroid/animation/Animator;

.field private mPreviewView:Landroid/view/View;

.field private mRestingAlpha:F

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mShouldTint:Z

.field private mSupportHardware:Z

.field private mTempPoint:[I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "-value"    # Landroid/animation/Animator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 78
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mShouldTint:Z

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    .line 135
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mInverseColor:I

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    const v1, 0x7f0700b1

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    .line 138
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 140
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 412
    :cond_0
    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 185
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 190
    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 191
    .local v0, "displayListCanvas":Landroid/view/DisplayListCanvas;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    .line 192
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    .line 191
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 198
    .end local v0    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateCircleColor()V

    .line 195
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getAnimatorToRadius(F)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "circleRadius"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    aput v4, v3, v2

    aput p1, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 393
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 394
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartValue:F

    .line 395
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    .line 396
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 404
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 405
    return-object v0

    :cond_0
    move v1, v2

    .line 395
    goto :goto_0
.end method

.method private getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 527
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$10;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getMaxCircleSize()F
    .locals 8

    .prologue
    .line 309
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLocationInWindow([I)V

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 311
    .local v1, "rootWidth":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v3, v4

    int-to-float v2, v3

    .line 312
    .local v2, "width":F
    sub-float v3, v1, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 313
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v3, v4

    int-to-float v0, v3

    .line 314
    .local v0, "height":F
    float-to-double v4, v2

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method private getRtAnimatorToRadius(F)Landroid/animation/Animator;
    .locals 2
    .param p1, "circleRadius"    # F

    .prologue
    .line 296
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    invoke-direct {v0, v1, p1}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 297
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 298
    return-object v0
.end method

.method private initHwProperties()V
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    .line 303
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterY:Landroid/graphics/CanvasProperty;

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    .line 305
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    .line 306
    return-void
.end method

.method private setCircleRadius(FZZ)V
    .locals 14
    .param p1, "circleRadius"    # F
    .param p2, "slowAnimation"    # Z
    .param p3, "noAnimation"    # Z

    .prologue
    .line 333
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    if-nez v10, :cond_2

    .line 334
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v10, :cond_3

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    const/4 v7, 0x1

    .line 335
    .local v7, "radiusHidden":Z
    :goto_0
    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-nez v10, :cond_4

    const/4 v6, 0x1

    .line 336
    .local v6, "nowHidden":Z
    :goto_1
    if-eq v7, v6, :cond_5

    xor-int/lit8 v8, p3, 0x1

    .line 337
    :goto_2
    if-nez v8, :cond_7

    .line 338
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v10, :cond_6

    .line 339
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 342
    if-eqz v6, :cond_1

    .line 343
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v10, :cond_1

    .line 344
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_1
    :goto_3
    return-void

    .line 333
    .end local v6    # "nowHidden":Z
    .end local v7    # "radiusHidden":Z
    :cond_2
    const/4 v7, 0x1

    .restart local v7    # "radiusHidden":Z
    goto :goto_0

    .line 334
    .end local v7    # "radiusHidden":Z
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "radiusHidden":Z
    goto :goto_0

    .line 335
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "nowHidden":Z
    goto :goto_1

    .line 336
    :cond_5
    const/4 v8, 0x0

    .local v8, "radiusNeedsAnimation":Z
    goto :goto_2

    .line 347
    .end local v8    # "radiusNeedsAnimation":Z
    :cond_6
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    if-nez v10, :cond_1

    .line 350
    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v10, v10

    sub-float v1, p1, v10

    .line 351
    .local v1, "diff":F
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 352
    .local v9, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const/4 v11, 0x2

    new-array v11, v11, [F

    iget v12, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartValue:F

    add-float/2addr v12, v1

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x1

    aput p1, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 353
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_3

    .line 356
    .end local v1    # "diff":F
    .end local v9    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 357
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 358
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 359
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-nez v10, :cond_9

    .line 360
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 362
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    :goto_4
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 363
    const-wide/16 v2, 0xfa

    .line 364
    .local v2, "duration":J
    if-nez p2, :cond_8

    .line 365
    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 366
    iget v11, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v11, v11

    .line 365
    div-float v4, v10, v11

    .line 367
    .local v4, "durationFactor":F
    const/high16 v10, 0x42a00000    # 80.0f

    mul-float/2addr v10, v4

    float-to-long v2, v10

    .line 368
    const-wide/16 v10, 0xc8

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 370
    .end local v4    # "durationFactor":F
    :cond_8
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 371
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 372
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 373
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLeft()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getTop()I

    move-result v12

    iget v13, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 374
    invoke-static {v10, v11, v12, v13, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 377
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 379
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 380
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v11, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    goto/16 :goto_3

    .line 361
    .end local v2    # "duration":J
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_9
    sget-object v5, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_4
.end method

.method private startRtAlphaFadeIn()V
    .locals 5

    .prologue
    .line 261
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 262
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 263
    .local v1, "modifiedPaint":Landroid/graphics/Paint;
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    .line 266
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    .line 267
    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x1

    .line 266
    invoke-direct {v0, v2, v4, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 268
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 269
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 271
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 273
    .end local v0    # "animator":Landroid/view/RenderNodeAnimator;
    .end local v1    # "modifiedPaint":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method private startRtCircleFadeOut(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 287
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    .line 288
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 287
    invoke-direct {v0, v1, v3, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 289
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 290
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 292
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 293
    return-void
.end method

.method private updateCircleColor()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 202
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    .line 201
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v5

    add-float v2, v5, v3

    .line 203
    .local v2, "fraction":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 204
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 205
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v4, v5

    .line 204
    div-float/2addr v3, v4

    sub-float v1, v7, v3

    .line 206
    .local v1, "finishingFraction":F
    mul-float/2addr v2, v1

    .line 208
    .end local v1    # "finishingFraction":F
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 209
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 210
    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 208
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 211
    .local v0, "color":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    return-void
.end method

.method private updateIconColor()V
    .locals 6

    .prologue
    .line 176
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mShouldTint:Z

    if-nez v3, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 178
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 179
    .local v0, "alpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 180
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mInverseColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 181
    .local v1, "color":I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 182
    return-void
.end method


# virtual methods
.method public finishAnimation(FLjava/lang/Runnable;)V
    .locals 10
    .param p1, "velocity"    # F
    .param p2, "mAnimationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x1

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 217
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    .line 218
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getMaxCircleSize()F

    move-result v3

    .line 221
    .local v3, "maxCircleSize":F
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    if-eqz v0, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->initHwProperties()V

    .line 223
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRtAnimatorToRadius(F)Landroid/animation/Animator;

    move-result-object v1

    .line 224
    .local v1, "animatorToRadius":Landroid/animation/Animator;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->startRtAlphaFadeIn()V

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 230
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;

    invoke-direct {v0, p0, p2, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;F)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLeft()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getTop()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 243
    invoke-static {v0, v2, v4, v5, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 246
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    move v7, v3

    move v8, p1

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->startRtCircleFadeOut(J)V

    .line 254
    :cond_0
    return-void

    .line 226
    .end local v1    # "animatorToRadius":Landroid/animation/Animator;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .restart local v1    # "animatorToRadius":Landroid/animation/Animator;
    goto :goto_0
.end method

.method public getCircleRadius()F
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    return v0
.end method

.method public getRestingAlpha()F
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    return v0
.end method

.method public instantFinishAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 284
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    .line 159
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 162
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 150
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    .line 154
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0

    .line 552
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCircleRadius(FZ)V
    .locals 1
    .param p1, "circleRadius"    # F
    .param p2, "slowAnimation"    # Z

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    .line 323
    return-void
.end method

.method public setCircleRadiusWithoutAnimation(F)V
    .locals 2
    .param p1, "circleRadius"    # F

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 327
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    .line 328
    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 8
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 473
    const-wide/16 v4, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v5, 0x0

    .line 487
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 488
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mLaunchingAffordance:Z

    if-eqz v6, :cond_0

    move p1, v5

    .line 489
    :cond_0
    mul-float v6, p1, v8

    float-to-int v4, v6

    .line 490
    .local v4, "endAlpha":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 491
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_2

    .line 492
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 493
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(I)V

    .line 524
    :goto_0
    return-void

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getImageAlpha()I

    move-result v2

    .line 496
    .local v2, "currentAlpha":I
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 497
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 498
    new-instance v6, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 506
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 507
    if-nez p5, :cond_3

    .line 508
    cmpl-float v5, p1, v5

    if-nez v5, :cond_6

    .line 509
    sget-object p5, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 512
    :cond_3
    :goto_1
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 513
    const-wide/16 v6, -0x1

    cmp-long v5, p3, v6

    if-nez v5, :cond_4

    .line 514
    sub-int v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v8

    .line 515
    .local v3, "durationFactor":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 516
    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v3

    float-to-long p3, v5

    .line 518
    .end local v3    # "durationFactor":F
    :cond_4
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 519
    if-eqz p6, :cond_5

    .line 520
    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 522
    :cond_5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 510
    :cond_6
    sget-object p5, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tint"    # Z

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mShouldTint:Z

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    .line 146
    return-void
.end method

.method public setImageScale(FZ)V
    .locals 7
    .param p1, "imageScale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 415
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 416
    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 5
    .param p1, "imageScale"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 429
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 430
    if-nez p2, :cond_0

    .line 431
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 459
    :goto_0
    return-void

    .line 434
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 435
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 436
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardAffordanceView$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 443
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 444
    if-nez p5, :cond_1

    .line 445
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    .line 446
    sget-object p5, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 449
    :cond_1
    :goto_1
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 450
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    .line 451
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 452
    const v3, 0x3e4ccccc    # 0.19999999f

    .line 451
    div-float v1, v2, v3

    .line 453
    .local v1, "durationFactor":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 454
    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v1

    float-to-long p3, v2

    .line 456
    .end local v1    # "durationFactor":F
    :cond_2
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 457
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 447
    :cond_3
    sget-object p5, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public setLaunchingAffordance(Z)V
    .locals 0
    .param p1, "launchingAffordance"    # Z

    .prologue
    .line 557
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mLaunchingAffordance:Z

    .line 558
    return-void
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 168
    .local v0, "oldPreviewView":Landroid/view/View;
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mLaunchingAffordance:Z

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 170
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_0
    return-void

    .line 171
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setRestingAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 462
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 466
    return-void
.end method
