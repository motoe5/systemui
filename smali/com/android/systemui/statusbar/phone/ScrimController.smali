.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# static fields
.field public static final KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final KEYGUARD_FADE_OUT_INTERPOLATOR_LOCKED:Landroid/view/animation/Interpolator;


# instance fields
.field protected mAnimateChange:Z

.field private mAnimateKeyguardFadingOut:Z

.field private mAnimationDelay:J

.field protected mBouncerIsKeyguard:Z

.field protected mBouncerShowing:Z

.field private mCurrentBehindAlpha:F

.field private mCurrentHeadsUpAlpha:F

.field private mCurrentInFrontAlpha:F

.field private mDarkenWhileDragging:Z

.field private mDontAnimateBouncerChanges:Z

.field private mDozeBehindAlpha:F

.field private mDozeInFrontAlpha:F

.field private mDozing:Z

.field private mDraggedHeadsUpView:Landroid/view/View;

.field protected mDurationOverride:J

.field private mForceHideScrims:Z

.field private mFraction:F

.field private final mHeadsUpScrim:Landroid/view/View;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

.field private mKeyguardFadingOutInProgress:Z

.field protected mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mOnAnimationFinished:Ljava/lang/Runnable;

.field private mPinnedHeadsUpCount:I

.field protected final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field protected mScrimBehindAlpha:F

.field protected mScrimBehindAlphaKeyguard:F

.field protected mScrimBehindAlphaUnlocking:F

.field private final mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field private mSkipFirstFrame:Z

.field private mTopHeadsUpDragAmount:F

.field private mTracking:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdatePending:Z

.field private mUseBrighterScrimInFrontAlpha:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/ScrimController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1, "-value"    # Ljava/lang/Runnable;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentScrimAlpha(Landroid/view/View;F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 49
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v3, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 48
    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 50
    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR_LOCKED:Landroid/view/animation/Interpolator;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Landroid/view/View;)V
    .locals 6
    .param p1, "lightBarController"    # Lcom/android/systemui/statusbar/phone/LightBarController;
    .param p2, "scrimBehind"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p3, "scrimInFront"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p4, "headsUpScrim"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const v1, 0x3ee66666    # 0.45f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    .line 72
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaUnlocking:F

    .line 79
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerIsKeyguard:Z

    .line 85
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 88
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 93
    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 94
    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    .line 99
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUseBrighterScrimInFrontAlpha:Z

    .line 107
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 108
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 109
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    .line 110
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 112
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070291

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    .line 116
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 118
    return-void
.end method

.method private calculateHeadsUpAlpha()F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 554
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 555
    const/high16 v0, 0x3f800000    # 1.0f

    .line 561
    .local v0, "alpha":F
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    sub-float v1, v4, v2

    .line 562
    .local v1, "expandFactor":F
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 563
    mul-float v2, v0, v1

    return v2

    .line 556
    .end local v0    # "alpha":F
    .end local v1    # "expandFactor":F
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    if-nez v2, :cond_1

    .line 557
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 559
    .end local v0    # "alpha":F
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTopHeadsUpDragAmount:F

    sub-float v0, v4, v2

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method private endAnimateKeyguardFadingOut(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 450
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    .line 451
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 454
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 456
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    .line 458
    :cond_2
    return-void
.end method

.method private getScrimInFrontAlpha()F
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const v0, 0x3f59999a    # 0.85f

    .line 246
    :goto_0
    return v0

    .line 248
    :cond_0
    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0
.end method

.method private isAnimating(Landroid/view/View;)Z
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 461
    const v0, 0x7f0a0256

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCurrentScrimAlpha(Landroid/view/View;F)V
    .locals 2
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    .line 357
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setScrimAlpha(F)V

    .line 365
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    .line 360
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0

    .line 362
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 363
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    goto :goto_0
.end method

.method private setScrimBehindColor(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Landroid/view/View;F)V

    .line 328
    return-void
.end method

.method private setScrimColor(Landroid/view/View;F)V
    .locals 2
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(ZLandroid/view/View;FF)V

    .line 343
    return-void
.end method

.method private setScrimInFrontColor(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Landroid/view/View;F)V

    .line 332
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    goto :goto_0
.end method

.method private startScrimAnimation(Landroid/view/View;F)V
    .locals 7
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "target"    # F

    .prologue
    const/4 v6, 0x1

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    .line 383
    .local v1, "current":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    aput p2, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 384
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 393
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 394
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 395
    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 410
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 411
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v2, :cond_0

    .line 412
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    .line 413
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    .line 415
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipFirstFrame:Z

    if-eqz v2, :cond_1

    .line 416
    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 418
    :cond_1
    const v2, 0x7f0a0256

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 419
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x7f0a025b

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 420
    return-void

    .line 394
    :cond_2
    const-wide/16 v2, 0xdc

    goto :goto_0
.end method

.method private updateHeadsUpScrim(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->calculateHeadsUpAlpha()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(ZLandroid/view/View;FF)V

    .line 494
    return-void
.end method

.method private updateScrim(ZLandroid/view/View;FF)V
    .locals 12
    .param p1, "animate"    # Z
    .param p2, "scrim"    # Landroid/view/View;
    .param p3, "alpha"    # F
    .param p4, "currentAlpha"    # F

    .prologue
    .line 497
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 498
    return-void

    .line 502
    :cond_0
    const v7, 0x7f0a0256

    .line 501
    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    .line 503
    .local v2, "previousAnimator":Landroid/animation/ValueAnimator;
    const/high16 v0, -0x40800000    # -1.0f

    .line 504
    .local v0, "animEndValue":F
    if-eqz v2, :cond_2

    .line 505
    if-nez p1, :cond_1

    cmpl-float v7, p3, p4

    if-nez v7, :cond_4

    .line 506
    :cond_1
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 511
    :cond_2
    :goto_0
    cmpl-float v7, p3, p4

    if-eqz v7, :cond_3

    cmpl-float v7, p3, v0

    if-eqz v7, :cond_3

    .line 512
    if-eqz p1, :cond_5

    .line 513
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V

    .line 514
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f0a0258

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 515
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f0a0257

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 537
    :cond_3
    :goto_1
    return-void

    .line 508
    :cond_4
    const v7, 0x7f0a0257

    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 517
    :cond_5
    if-eqz v2, :cond_6

    .line 518
    const v7, 0x7f0a0258

    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 519
    .local v4, "previousStartValue":F
    const v7, 0x7f0a0257

    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 522
    .local v3, "previousEndValue":F
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 523
    .local v6, "values":[Landroid/animation/PropertyValuesHolder;
    sub-float v5, p3, v3

    .line 524
    .local v5, "relativeDiff":F
    add-float v1, v4, v5

    .line 525
    .local v1, "newStartValue":F
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 526
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v9, 0x1

    aput p3, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 527
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f0a0258

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 528
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f0a0257

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 529
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 532
    .end local v1    # "newStartValue":F
    .end local v3    # "previousEndValue":F
    .end local v4    # "previousStartValue":F
    .end local v5    # "relativeDiff":F
    .end local v6    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentScrimAlpha(Landroid/view/View;F)V

    .line 533
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    goto :goto_1
.end method

.method private updateScrimKeyguard()V
    .locals 8

    .prologue
    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 285
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 286
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 287
    .local v1, "behindFraction":F
    sub-float v2, v5, v1

    .line 288
    .local v2, "fraction":F
    float-to-double v4, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 289
    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimInFrontAlpha()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 291
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    mul-float/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 311
    .end local v1    # "behindFraction":F
    .end local v2    # "fraction":F
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerIsKeyguard:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimInFrontAlpha()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimNormal()V

    goto :goto_0

    .line 295
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v3, :cond_3

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "alpha":F
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUseBrighterScrimInFrontAlpha:Z

    if-eqz v3, :cond_2

    .line 299
    const/high16 v0, 0x3f000000    # 0.5f

    .line 301
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 303
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0

    .line 305
    .end local v0    # "alpha":F
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 306
    .restart local v2    # "fraction":F
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 308
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaUnlocking:F

    sub-float/2addr v3, v4

    .line 307
    mul-float/2addr v3, v2

    .line 309
    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaUnlocking:F

    .line 307
    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0
.end method

.method private updateScrimNormal()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 314
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    .line 316
    .local v0, "frac":F
    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v0

    const v3, 0x3e4ccccd    # 0.2f

    sub-float v0, v2, v3

    .line 317
    cmpg-float v2, v0, v4

    if-gtz v2, :cond_0

    .line 318
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x400921fa00000000L    # 3.141590118408203

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double v2, v6, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    sub-double v2, v6, v2

    double-to-float v1, v2

    .line 322
    .local v1, "k":F
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    mul-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_ScrimController-mthref-0()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public abortKeyguardFadingOut()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->endAnimateKeyguardFadingOut(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public animateGoingToFullShade(JJ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 204
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 205
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 208
    return-void
.end method

.method public animateKeyguardFadingOut(JJLjava/lang/Runnable;Z)V
    .locals 5
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "onAnimationFinished"    # Ljava/lang/Runnable;
    .param p6, "skipFirstFrame"    # Z

    .prologue
    const/4 v1, 0x1

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeAndUnlocking:Z

    .line 168
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    .line 169
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 170
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 171
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 172
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipFirstFrame:Z

    .line 173
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onPreDraw()Z

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$Qa_0r0Wgvb30yriIJPTwPtXGSyk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$Qa_0r0Wgvb30yriIJPTwPtXGSyk;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/ScrimView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public animateKeyguardUnoccluding(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 200
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 201
    return-void
.end method

.method public dontAnimateBouncerChangesUntilNextFrame()V
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    .line 574
    return-void
.end method

.method public forceHideScrims(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .prologue
    .line 567
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 569
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 570
    return-void
.end method

.method protected getCurrentScrimAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    :goto_0
    return v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0

    .line 352
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    goto :goto_0
.end method

.method protected getDozeAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    goto :goto_0
.end method

.method public getDozeBehindAlpha()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    return v0
.end method

.method public getDozeInFrontAlpha()F
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    return v0
.end method

.method protected getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR_LOCKED:Landroid/view/animation/Interpolator;

    return-object v0

    .line 425
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_1

    .line 426
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getScrimBehindColor()I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getScrimColorWithAlpha()I

    move-result v0

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 590
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 591
    const v2, 0x7f07009f

    .line 590
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 592
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    .line 139
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 474
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    .line 475
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    .line 476
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 0
    .param p1, "inPinnedMode"    # Z

    .prologue
    .line 470
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 490
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 480
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDraggedHeadsUpView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDraggedHeadsUpView:Landroid/view/View;

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTopHeadsUpDragAmount:F

    .line 485
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    .line 486
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 435
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 436
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    if-eqz v0, :cond_0

    .line 437
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 440
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 442
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipFirstFrame:Z

    .line 445
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->endAnimateKeyguardFadingOut(Z)V

    .line 446
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackingStarted()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    .line 135
    return-void
.end method

.method protected scheduleUpdate()V
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 258
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 158
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "currentUser"    # I

    .prologue
    .line 597
    return-void
.end method

.method public setDozeBehindAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 223
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    .line 225
    return-void
.end method

.method public setDozeInFrontAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 218
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    .line 220
    return-void
.end method

.method public setDozing(Z)V
    .locals 1
    .param p1, "dozing"    # Z

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eq v0, p1, :cond_0

    .line 212
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 215
    :cond_0
    return-void
.end method

.method public setDrawBehindAsSrc(Z)V
    .locals 1
    .param p1, "asSrc"    # Z

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setDrawAsSrc(Z)V

    .line 466
    return-void
.end method

.method public setExcludedBackgroundArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setExcludedArea(Landroid/graphics/Rect;)V

    .line 578
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 123
    return-void
.end method

.method public setPanelExpansion(F)V
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    const/4 v1, 0x0

    .line 142
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 143
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 145
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 152
    :cond_1
    return-void
.end method

.method public setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "changeRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setChangeRunnable(Ljava/lang/Runnable;)V

    .line 586
    return-void
.end method

.method public setTopHeadsUpDragAmount(Landroid/view/View;F)V
    .locals 1
    .param p1, "draggedHeadsUpView"    # Landroid/view/View;
    .param p2, "topHeadsUpDragAmount"    # F

    .prologue
    .line 547
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTopHeadsUpDragAmount:F

    .line 548
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDraggedHeadsUpView:Landroid/view/View;

    .line 549
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    .line 550
    return-void
.end method

.method public setUseBrighterScrimInFrontAlpha(Z)V
    .locals 0
    .param p1, "brighterAlpha"    # Z

    .prologue
    .line 604
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUseBrighterScrimInFrontAlpha:Z

    .line 605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimKeyguard()V

    .line 606
    return-void
.end method

.method public setWakeAndUnlocking()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeAndUnlocking:Z

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 163
    return-void
.end method

.method protected updateScrimColor(Landroid/view/View;)V
    .locals 7
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    .line 369
    .local v1, "alpha1":F
    instance-of v4, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v4, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeAlpha(Landroid/view/View;)F

    move-result v2

    .line 371
    .local v2, "alpha2":F
    sub-float v4, v6, v1

    sub-float v5, v6, v2

    mul-float/2addr v4, v5

    sub-float v0, v6, v4

    .line 372
    .local v0, "alpha":F
    const/4 v4, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move-object v4, p1

    .line 373
    check-cast v4, Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ScrimView;->getScrimColor()I

    move-result v3

    .line 374
    .local v3, "baseColor":I
    check-cast p1, Lcom/android/systemui/statusbar/ScrimView;

    .line 375
    .end local p1    # "scrim":Landroid/view/View;
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 374
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/ScrimView;->setScrimColor(I)V

    .line 379
    .end local v0    # "alpha":F
    .end local v2    # "alpha2":F
    .end local v3    # "baseColor":I
    :goto_0
    return-void

    .line 377
    .restart local p1    # "scrim":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method protected updateScrims()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 263
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 281
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 282
    return-void

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_3

    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eqz v0, :cond_2

    .line 269
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 270
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0

    .line 272
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 273
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0

    .line 275
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimNormal()V

    .line 277
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_0

    .line 279
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimKeyguard()V

    goto :goto_0
.end method
