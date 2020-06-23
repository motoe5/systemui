.class public abstract Lcom/android/systemui/statusbar/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ActivatableNotificationView$1;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$2;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$3;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$4;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
    }
.end annotation


# static fields
.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivated:Z

.field private mAnimationTranslationY:F

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBgAlpha:F

.field protected mBgTint:I

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentBackgroundTint:I

.field private mDark:Z

.field private mDimmed:Z

.field private mDimmedAlpha:I

.field private mDimmedBackgroundFadeInAmount:F

.field private final mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mDrawingAppearAnimation:Z

.field private mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

.field private mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mIsBelowSpeedBump:Z

.field private final mLowPriorityColor:I

.field private final mLowPriorityRippleColor:I

.field private mNeedsDimming:Z

.field private mNormalBackgroundVisibilityAmount:F

.field private final mNormalColor:I

.field protected final mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

.field private mOverrideAmount:F

.field private mOverrideTint:I

.field private mShadowAlpha:F

.field private mShadowHidden:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTint:I

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTargetTint:I

.field private final mTintedRippleColor:I

.field private mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mWasActivatedOnDown:Z


# direct methods
.method static synthetic -com_android_systemui_statusbar_ActivatableNotificationView-mthref-2(Lcom/android/systemui/classifier/FalsingManager;ZFF)V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationDoubleTap(ZFF)V

    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/ActivatableNotificationView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mStartTint:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/ActivatableNotificationView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTargetTint:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "-value"    # Landroid/animation/ObjectAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/ActivatableNotificationView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 98
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 97
    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 100
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 99
    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 111
    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    .line 134
    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 143
    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 144
    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 162
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 161
    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 168
    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    .line 226
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    .line 186
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 187
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipChildren(Z)V

    .line 188
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToPadding(Z)V

    .line 189
    const v0, 0x7f060094

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    .line 191
    const v0, 0x7f060097

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    .line 193
    const v0, 0x7f06009b

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    .line 195
    const v0, 0x7f06009a

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    .line 197
    const v0, 0x7f06009c

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    .line 198
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 201
    new-instance v0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    new-instance v2, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ;-><init>(Ljava/lang/Object;)V

    .line 207
    new-instance v3, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$1;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$3;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$2;

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$2;-><init>(Ljava/lang/Object;)V

    move-object v1, p0

    .line 201
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    .line 208
    return-void
.end method

.method private calculateBgColor(ZZ)I
    .locals 3
    .param p1, "withTint"    # Z
    .param p2, "withOverRide"    # Z

    .prologue
    const/4 v2, 0x0

    .line 901
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v1, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 904
    :cond_0
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideTint:I

    if-eqz v1, :cond_1

    .line 905
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result v0

    .line 906
    .local v0, "defaultTint":I
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideTint:I

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v1

    return v1

    .line 908
    .end local v0    # "defaultTint":I
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v1, :cond_2

    .line 909
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    return v1

    .line 910
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v1, :cond_3

    .line 911
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    return v1

    .line 913
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    return v1
.end method

.method private cancelAppearAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 821
    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 823
    :cond_0
    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 693
    return-void
.end method

.method private enableAppearDrawing(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v0, :cond_1

    .line 936
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 937
    if-nez p1, :cond_0

    .line 938
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setContentAlpha(F)V

    .line 939
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 940
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(Landroid/graphics/RectF;)V

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->invalidate()V

    .line 944
    :cond_1
    return-void
.end method

.method private fadeDimmedBackground()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 600
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 601
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 602
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v3, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 604
    return-void

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v3

    if-nez v3, :cond_1

    .line 607
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_2

    .line 608
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 613
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 614
    .local v2, "startAlpha":F
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    .line 615
    .local v1, "endAlpha":F
    :goto_2
    const/16 v0, 0xdc

    .line 617
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_5

    .line 618
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 619
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    long-to-int v0, v4

    .line 620
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 621
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 622
    if-gtz v0, :cond_5

    .line 623
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 624
    return-void

    .line 610
    .end local v0    # "duration":I
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    .line 613
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "startAlpha":F
    goto :goto_1

    .line 614
    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "endAlpha":F
    goto :goto_2

    .line 627
    .restart local v0    # "duration":I
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 629
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 628
    iput-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 630
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 631
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 632
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 642
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 643
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 644
    return-void
.end method

.method private fadeInFromDark(J)V
    .locals 7
    .param p1, "delay"    # J

    .prologue
    const-wide/16 v4, 0xc8

    .line 570
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 571
    .local v0, "background":Landroid/view/View;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 573
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 574
    const/high16 v2, 0x3f800000    # 1.0f

    .line 573
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 577
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 573
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 578
    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/view/View;)V

    .line 573
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 585
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 573
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 587
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/TimeAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    .line 588
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 589
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 590
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 591
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 592
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 593
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 594
    return-void

    .line 570
    .end local v0    # "background":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .restart local v0    # "background":Landroid/view/View;
    goto :goto_0

    .line 587
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 299
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method private makeActive()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationActive()V

    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 319
    :cond_0
    return-void
.end method

.method private setBackgroundTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 555
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq p1, v0, :cond_1

    .line 556
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    .line 557
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    if-ne p1, v0, :cond_0

    .line 559
    const/4 p1, 0x0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 564
    :cond_1
    return-void
.end method

.method private setContentAlpha(F)V
    .locals 4
    .param p1, "contentAlpha"    # F

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 878
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 879
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 881
    .local v2, "layerType":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v1

    .line 882
    .local v1, "currentLayerType":I
    if-eq v1, v2, :cond_1

    .line 883
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 886
    .end local v1    # "currentLayerType":I
    .end local v2    # "layerType":I
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 887
    return-void

    .line 880
    :cond_2
    const/4 v2, 0x2

    .restart local v2    # "layerType":I
    goto :goto_0
.end method

.method private startActivateAnimation(Z)V
    .locals 12
    .param p1, "reverse"    # Z

    .prologue
    const-wide/16 v10, 0xdc

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isAttachedToWindow()Z

    move-result v8

    if-nez v8, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 326
    return-void

    .line 328
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    .line 329
    .local v5, "widthHalf":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getActualHeight()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .line 330
    .local v2, "heightHalf":I
    mul-int v8, v5, v5

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 332
    .local v4, "radius":F
    if-eqz p1, :cond_2

    .line 333
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-static {v8, v5, v2, v4, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 339
    .local v1, "animator":Landroid/animation/Animator;
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 342
    if-nez p1, :cond_3

    .line 343
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 344
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 349
    .local v0, "alphaInterpolator":Landroid/view/animation/Interpolator;
    :goto_1
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 350
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 351
    if-eqz p1, :cond_4

    .line 352
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 353
    new-instance v8, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 359
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 364
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 365
    if-eqz p1, :cond_5

    .line 364
    :goto_3
    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 367
    new-instance v7, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 364
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 378
    return-void

    .line 336
    .end local v0    # "alphaInterpolator":Landroid/view/animation/Interpolator;
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-static {v8, v5, v2, v6, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .restart local v1    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 346
    :cond_3
    sget-object v3, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 347
    .restart local v3    # "interpolator":Landroid/view/animation/Interpolator;
    sget-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v0    # "alphaInterpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 361
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 362
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_5
    move v6, v7

    .line 365
    goto :goto_3
.end method

.method private startAppearAnimation(ZFJJLjava/lang/Runnable;)V
    .locals 5
    .param p1, "isAppearing"    # Z
    .param p2, "translationDirection"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 745
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelAppearAnimation()V

    .line 746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    .line 747
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 749
    if-eqz p1, :cond_2

    .line 750
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 751
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 759
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 760
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 761
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 762
    const/high16 v0, 0x3f800000    # 1.0f

    .line 768
    .local v0, "targetValue":F
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 769
    const/4 v2, 0x1

    aput v0, v1, v2

    .line 768
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 770
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 771
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 772
    long-to-float v2, p5

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 771
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 773
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 782
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_1

    .line 784
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    .line 785
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    .line 786
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 788
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;

    invoke-direct {v2, p0, p7, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 812
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 813
    return-void

    .line 753
    .end local v0    # "targetValue":F
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 754
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_0

    .line 764
    :cond_3
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 765
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 766
    const/4 v0, 0x0

    .restart local v0    # "targetValue":F
    goto :goto_1
.end method

.method private updateAppearAnimationAlpha()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 869
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 870
    .local v0, "contentAlphaProgress":F
    div-float/2addr v0, v1

    .line 871
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 872
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 873
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setContentAlpha(F)V

    .line 874
    return-void
.end method

.method private updateAppearRect()V
    .locals 15

    .prologue
    const v14, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 831
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float v3, v13, v10

    .line 832
    .local v3, "inverseFraction":F
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    .line 833
    .local v8, "translationFraction":F
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float v7, v8, v10

    .line 834
    .local v7, "translateYTotalAmount":F
    iput v7, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 837
    sub-float v10, v3, v12

    .line 838
    const v11, 0x3f4ccccd    # 0.8f

    .line 837
    div-float v9, v10, v11

    .line 839
    .local v9, "widthFraction":F
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 840
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 841
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ef33333    # 0.475f

    mul-float/2addr v10, v11

    mul-float v4, v10, v9

    .line 843
    .local v4, "left":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v5, v10, v4

    .line 846
    .local v5, "right":F
    sub-float v10, v3, v12

    div-float v2, v10, v13

    .line 848
    .local v2, "heightFraction":F
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 849
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 853
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v0

    .line 854
    .local v0, "actualHeight":I
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_0

    .line 855
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v11, v2

    mul-float/2addr v11, v14

    sub-float/2addr v10, v11

    sub-float v1, v10, v7

    .line 857
    .local v1, "bottom":F
    mul-float v6, v1, v2

    .line 863
    .local v6, "top":F
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v4, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 864
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v10, v6

    .line 865
    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v11, v1

    .line 864
    invoke-virtual {p0, v4, v10, v5, v11}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(FFFF)V

    .line 866
    return-void

    .line 859
    .end local v1    # "bottom":F
    .end local v6    # "top":F
    :cond_0
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    add-float/2addr v10, v11

    mul-float/2addr v10, v2

    mul-float/2addr v10, v14

    sub-float v6, v10, v7

    .line 861
    .restart local v6    # "top":F
    int-to-float v10, v0

    sub-float v11, v13, v2

    mul-float/2addr v10, v11

    mul-float v11, v6, v2

    add-float v1, v10, v11

    .restart local v1    # "bottom":F
    goto :goto_0
.end method

.method private updateBackgroundTint(Z)V
    .locals 6
    .param p1, "animated"    # Z

    .prologue
    .line 521
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getRippleColor()I

    move-result v1

    .line 525
    .local v1, "rippleColor":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 526
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 527
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    .line 528
    .local v0, "color":I
    if-nez p1, :cond_2

    .line 529
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 552
    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq v0, v2, :cond_1

    .line 531
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mStartTint:I

    .line 532
    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTargetTint:I

    .line 533
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    .line 534
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 542
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x168

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 543
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 544
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 550
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 533
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateOutlineAlpha()V
    .locals 3

    .prologue
    .line 433
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v1, :cond_0

    .line 434
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineAlpha(F)V

    .line 435
    return-void

    .line 437
    :cond_0
    const v0, 0x3f333333    # 0.7f

    .line 438
    .local v0, "alpha":F
    const v1, 0x3e99999a    # 0.3f

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    mul-float/2addr v1, v2

    .line 437
    const v2, 0x3f333333    # 0.7f

    .line 438
    add-float v0, v2, v1

    .line 439
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    mul-float/2addr v0, v1

    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    mul-float/2addr v0, v1

    .line 443
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineAlpha(F)V

    .line 444
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_ActivatableNotificationView-mthref-0()Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performClick()Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_ActivatableNotificationView-mthref-1()Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleSlideBack()Z

    move-result v0

    return v0
.end method

.method public calculateBgColor()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 892
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result v0

    return v0
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 950
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 952
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 953
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    .line 954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 956
    :cond_1
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    .line 284
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->drawableStateChanged()V

    .line 289
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    goto :goto_0
.end method

.method public getBackgroundColorWithoutTint()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 992
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result v0

    return v0
.end method

.method protected abstract getContentView()Landroid/view/View;
.end method

.method protected getRippleColor()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    .line 919
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    return v0

    .line 920
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_1

    .line 921
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    return v0

    .line 923
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    return v0
.end method

.method protected handleSlideBack()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public isBelowSpeedBump()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    return v0
.end method

.method public isDimmable()Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method protected isInteractive()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_ActivatableNotificationView_8375(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeActive()V

    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_0
.end method

.method public makeInactive(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 386
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 387
    if-eqz p1, :cond_2

    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 394
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 398
    return-void

    .line 390
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method protected onAppearAnimationFinished(Z)V
    .locals 0
    .param p1, "wasAppearing"    # Z

    .prologue
    .line 816
    return-void
.end method

.method protected onBelowSpeedBumpChanged()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onFinishInflate()V

    .line 213
    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 214
    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    .line 216
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f0802c4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f0802c5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mContext:Landroid/content/Context;

    .line 220
    const v1, 0x7f060096

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedAlpha:I

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 224
    return-void

    :cond_0
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 235
    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 697
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onLayout(ZIIII)V

    .line 698
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotX(F)V

    .line 699
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 258
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mWasActivatedOnDown:Z

    .line 260
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 262
    .local v1, "wasActivated":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 263
    .local v0, "result":Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 269
    .end local v1    # "wasActivated":Z
    :cond_1
    :goto_0
    return v0

    .line 267
    .end local v0    # "result":Z
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public performAddAnimation(JJ)V
    .locals 9
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v2, 0x1

    .line 737
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 738
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    .line 739
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    .line 741
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mWasActivatedOnDown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->performClick()Z

    move-result v0

    return v0

    .line 309
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 9
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 726
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 727
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    .line 729
    const-wide/16 v4, 0x0

    .line 728
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p3

    move-wide v6, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    if-eqz p4, :cond_0

    .line 731
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected resetBackgroundAlpha()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundAlpha(F)V

    .line 656
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 703
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setActualHeight(IZ)V

    .line 704
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotY(F)V

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 707
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 1
    .param p1, "below"    # Z

    .prologue
    .line 453
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setBelowSpeedBump(Z)V

    .line 454
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_0

    .line 455
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onBelowSpeedBumpChanged()V

    .line 459
    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 1
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 718
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipBottomAmount(I)V

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipBottomAmount(I)V

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipBottomAmount(I)V

    .line 721
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 711
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipTopAmount(I)V

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 714
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 419
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setDark(ZZJ)V

    .line 420
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-ne v0, p1, :cond_0

    .line 421
    return-void

    .line 423
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 426
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 427
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeInFromDark(J)V

    .line 429
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 430
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 1
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    and-int/2addr p1, v0

    .line 403
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eq v0, p1, :cond_0

    .line 404
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->resetBackgroundAlpha()V

    .line 406
    if-eqz p2, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeDimmedBackground()V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 4
    .param p1, "shadowIntensity"    # F
    .param p2, "outlineAlpha"    # F
    .param p3, "shadowYEnd"    # I
    .param p4, "outlineTranslation"    # I

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    .line 983
    .local v0, "hiddenBefore":Z
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    .line 984
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    if-eqz v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getTranslationZ()F

    move-result v2

    .line 986
    const v3, 0x3dcccccd    # 0.1f

    .line 985
    add-float/2addr v2, v3

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->setFakeShadowTranslationZ(FFII)V

    .line 989
    :cond_1
    return-void

    .line 983
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNormalBackgroundVisibilityAmount(F)V
    .locals 0
    .param p1, "normalBackgroundVisibilityAmount"    # F

    .prologue
    .line 447
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 449
    return-void
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V
    .locals 0
    .param p1, "onActivatedListener"    # Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    .line 960
    return-void
.end method

.method public setOverrideTintColor(IF)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "overrideAmount"    # F

    .prologue
    .line 499
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v1, :cond_0

    .line 500
    const/4 p1, 0x0

    .line 501
    const/4 p2, 0x0

    .line 503
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideTint:I

    .line 504
    iput p2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideAmount:F

    .line 505
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    .line 506
    .local v0, "newColor":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/high16 v2, 0x437f0000    # 255.0f

    .line 509
    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedAlpha:I

    int-to-float v3, v3

    .line 508
    invoke-static {v2, v3, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    goto :goto_0
.end method

.method public setShadowAlpha(F)V
    .locals 1
    .param p1, "shadowAlpha"    # F

    .prologue
    .line 973
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 974
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    .line 975
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 977
    :cond_0
    return-void
.end method

.method public setTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTintColor(IZ)V

    .line 476
    return-void
.end method

.method public setTintColor(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 482
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eq p1, v0, :cond_0

    .line 483
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 484
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 486
    :cond_0
    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    return v0
.end method

.method protected updateBackground()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 659
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelFadeAnimations()V

    .line 660
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 661
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 662
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 680
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    move v1, v4

    .line 679
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setNormalBackgroundVisibilityAmount(F)V

    .line 681
    return-void

    :cond_0
    move v1, v2

    .line 662
    goto :goto_0

    .line 663
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_6

    .line 666
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isGroupExpansionChanging()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isChildInGroup()Z

    move-result v0

    .line 667
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v0, :cond_5

    move v3, v2

    :goto_4
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 668
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-nez v5, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_1

    .line 666
    :cond_4
    const/4 v0, 0x0

    .local v0, "dontShowDimmed":Z
    goto :goto_3

    .end local v0    # "dontShowDimmed":Z
    :cond_5
    move v3, v1

    .line 667
    goto :goto_4

    .line 672
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 673
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 674
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 675
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 677
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_1

    .line 680
    :cond_7
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected updateBackgroundAlpha(F)V
    .locals 2
    .param p1, "transformationAmount"    # F

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    .end local p1    # "transformationAmount":F
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    .line 648
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 649
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 652
    return-void

    .line 647
    .restart local p1    # "transformationAmount":F
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected updateBackgroundTint()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 518
    return-void
.end method
