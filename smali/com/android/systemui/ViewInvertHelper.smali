.class public Lcom/android/systemui/ViewInvertHelper;
.super Ljava/lang/Object;
.source "ViewInvertHelper.java"


# instance fields
.field private final mDarkPaint:Landroid/graphics/Paint;

.field private final mFadeDuration:J

.field private final mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

.field private final mMatrix:Landroid/graphics/ColorMatrix;

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/ViewInvertHelper;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/ViewInvertHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/ViewInvertHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/ViewInvertHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/ViewInvertHelper;F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/ViewInvertHelper;
    .param p1, "intensity"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/ViewInvertHelper;->updateInvertPaint(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fadeDuration"    # J

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 37
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    .line 46
    iput-wide p2, p0, Lcom/android/systemui/ViewInvertHelper;->mFadeDuration:J

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/view/View;J)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "fadeDuration"    # J

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/content/Context;J)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method private updateInvertPaint(F)V
    .locals 7
    .param p1, "intensity"    # F

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 106
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    sub-float v0, v5, v2

    .line 107
    .local v0, "components":F
    const/16 v2, 0x14

    new-array v1, v2, [F

    .line 108
    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    mul-float v2, v6, p1

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 109
    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    const/16 v2, 0x8

    aput v4, v1, v2

    mul-float v2, v6, p1

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 110
    const/16 v2, 0xa

    aput v4, v1, v2

    const/16 v2, 0xb

    aput v4, v1, v2

    const/16 v2, 0xc

    aput v0, v1, v2

    const/16 v2, 0xd

    aput v4, v1, v2

    mul-float v2, v6, p1

    const/16 v3, 0xe

    aput v2, v1, v3

    .line 111
    const/16 v2, 0xf

    aput v4, v1, v2

    const/16 v2, 0x10

    aput v4, v1, v2

    const/16 v2, 0x11

    aput v4, v1, v2

    const/16 v2, 0x12

    aput v5, v1, v2

    const/16 v2, 0x13

    aput v4, v1, v2

    .line 113
    .local v1, "invert":[F
    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 114
    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper;->mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

    sub-float v3, v5, p1

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 115
    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Lcom/android/systemui/ViewInvertHelper;->mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 116
    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v4, p0, Lcom/android/systemui/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 117
    return-void
.end method


# virtual methods
.method public addTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public clearTargets()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    return-void
.end method

.method public fade(ZJ)V
    .locals 6
    .param p1, "invert"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 64
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 65
    .local v2, "startIntensity":F
    :goto_0
    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 66
    .local v1, "endIntensity":F
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 67
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/systemui/ViewInvertHelper$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/ViewInvertHelper$1;-><init>(Lcom/android/systemui/ViewInvertHelper;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 76
    new-instance v3, Lcom/android/systemui/ViewInvertHelper$2;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/ViewInvertHelper$2;-><init>(Lcom/android/systemui/ViewInvertHelper;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    iget-wide v4, p0, Lcom/android/systemui/ViewInvertHelper;->mFadeDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 89
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 90
    return-void

    .line 64
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "endIntensity":F
    .end local v2    # "startIntensity":F
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "startIntensity":F
    goto :goto_0

    .line 65
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "endIntensity":F
    goto :goto_1
.end method

.method public setInverted(ZZJ)V
    .locals 1
    .param p1, "invert"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 120
    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0
.end method

.method public update(Z)V
    .locals 4
    .param p1, "invert"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/android/systemui/ViewInvertHelper;->updateInvertPaint(F)V

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/systemui/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/systemui/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_1
    return-void
.end method
