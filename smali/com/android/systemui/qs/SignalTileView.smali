.class public Lcom/android/systemui/qs/SignalTileView;
.super Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.source "SignalTileView.java"


# static fields
.field private static final DEFAULT_DURATION:J

.field private static final SHORT_DURATION:J


# instance fields
.field private mBaseIconWidth:I

.field private mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mDoubleWideIconWidth:I

.field protected mIconFrame:Landroid/widget/FrameLayout;

.field private mIconHeight:I

.field private mIn:Landroid/widget/ImageView;

.field private mOut:Landroid/widget/ImageView;

.field private mOverlay:Landroid/widget/ImageView;

.field private mOverlayDoubleWideImageView:Landroid/widget/ImageView;

.field private mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

.field protected mSignal:Landroid/widget/ImageView;

.field private mSimStatusImageView:Landroid/widget/ImageView;

.field private mWideOverlayIconStartPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    .line 40
    sget-wide v0, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/systemui/qs/SignalTileView;->SHORT_DURATION:J

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    .line 68
    const v0, 0x7f0801d4

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addTrafficView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0801d8

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addTrafficView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    const v1, 0x7f0702ed

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    .line 73
    return-void
.end method

.method private addTrafficView(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "icon"    # I

    .prologue
    .line 76
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "traffic":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addView(Landroid/view/View;)V

    .line 80
    return-object v0
.end method

.method private layoutIndicator(Landroid/view/View;)V
    .locals 5
    .param p1, "indicator"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 182
    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 183
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    .line 184
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v1, v2, v3

    .line 191
    .local v1, "left":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 193
    iget-object v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    .line 189
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 194
    return-void

    .line 180
    .end local v0    # "isRtl":Z
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isRtl":Z
    goto :goto_0

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    .line 187
    .restart local v1    # "left":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v2, v1, v3

    .restart local v2    # "right":I
    goto :goto_1
.end method

.method private setVisibility(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shown"    # Z
    .param p3, "visible"    # Z

    .prologue
    .line 311
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-float v0, v1

    .line 312
    .local v0, "newAlpha":F
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    return-void

    .line 311
    .end local v0    # "newAlpha":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 313
    .restart local v0    # "newAlpha":F
    :cond_1
    if-eqz p2, :cond_3

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 315
    if-eqz p3, :cond_2

    sget-wide v2, Lcom/android/systemui/qs/SignalTileView;->SHORT_DURATION:J

    .line 314
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 321
    :goto_2
    return-void

    .line 315
    :cond_2
    sget-wide v2, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    goto :goto_1

    .line 319
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method private updateAutoMirrorState(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "autoMirrorDrawable"    # Z

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 326
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 329
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustWiFiActivityLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    .line 149
    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    .line 148
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    .line 153
    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    .line 152
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_1
    return-void
.end method

.method protected createIcon()Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x13

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    const v1, 0x7f070244

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    .line 92
    iget v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    .line 93
    iget v0, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    iget v1, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDoubleWideIconWidth:I

    .line 96
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 97
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    .line 100
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    .line 105
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    .line 115
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDoubleWideIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    .line 120
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDoubleWideIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 126
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 132
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v0, Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 137
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDoubleWideIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getIconMeasureMode()I
    .locals 1

    .prologue
    .line 176
    const/high16 v0, -0x80000000

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 169
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->onLayout(ZIIII)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->onMeasure(II)V

    .line 161
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 162
    .local v0, "hs":I
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 163
    .local v1, "ws":I
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 164
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 165
    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 10
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    move-object v3, p1

    .line 198
    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 199
    .local v3, "s":Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/qs/SignalTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 200
    iget v5, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/SignalTileView;->getColor(I)I

    move-result v0

    .line 202
    .local v0, "color":I
    iget v5, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    if-lez v5, :cond_2

    .line 203
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    iget v6, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 208
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 218
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget v5, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayWideIconId:I

    if-lez v5, :cond_3

    .line 219
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    iget v6, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayWideIconId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/SignalTileView;->updateAutoMirrorState(Landroid/widget/ImageView;Z)V

    .line 222
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    invoke-static {v5, v0}, Lcom/android/systemui/qs/SignalTileView;->setTint(Landroid/widget/ImageView;I)V

    .line 228
    :goto_1
    iget v5, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    if-lez v5, :cond_6

    iget-boolean v5, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-eqz v5, :cond_6

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getLayoutDirection()I

    move-result v5

    if-ne v5, v9, :cond_4

    const/4 v2, 0x1

    .line 236
    .local v2, "isRtl":Z
    :goto_2
    if-eqz v2, :cond_5

    .line 237
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    invoke-virtual {v5, v7, v7, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 238
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    invoke-virtual {v5, v6, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 248
    .end local v2    # "isRtl":Z
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 253
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 254
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v5, :cond_7

    .line 255
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 262
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->isShown()Z

    move-result v4

    .line 263
    .local v4, "shown":Z
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    iget-boolean v6, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    invoke-direct {p0, v5, v4, v6}, Lcom/android/systemui/qs/SignalTileView;->setVisibility(Landroid/view/View;ZZ)V

    .line 264
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    iget-boolean v6, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    invoke-direct {p0, v5, v4, v6}, Lcom/android/systemui/qs/SignalTileView;->setVisibility(Landroid/view/View;ZZ)V

    .line 271
    iget v5, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->simStatusIconId:I

    if-lez v5, :cond_8

    .line 272
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    iget v6, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->simStatusIconId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/SignalTileView;->updateAutoMirrorState(Landroid/widget/ImageView;Z)V

    .line 275
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    invoke-static {v5, v0}, Lcom/android/systemui/qs/SignalTileView;->setTint(Landroid/widget/ImageView;I)V

    .line 280
    :goto_5
    iget v5, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->roamingIconId:I

    if-lez v5, :cond_9

    .line 281
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    .line 282
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v6, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->roamingIconId:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 283
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/SignalTileView;->updateAutoMirrorState(Landroid/widget/ImageView;Z)V

    .line 284
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-static {v5, v0}, Lcom/android/systemui/qs/SignalTileView;->setTint(Landroid/widget/ImageView;I)V

    .line 289
    :goto_6
    iget v5, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityIconId:I

    if-lez v5, :cond_a

    .line 290
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    .line 291
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v6, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityIconId:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 292
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/SignalTileView;->updateAutoMirrorState(Landroid/widget/ImageView;Z)V

    .line 293
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-static {v5, v0}, Lcom/android/systemui/qs/SignalTileView;->setTint(Landroid/widget/ImageView;I)V

    .line 298
    :goto_7
    iget v5, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityWideIconId:I

    if-lez v5, :cond_b

    .line 299
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    .line 300
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v6, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityWideIconId:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 301
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/SignalTileView;->updateAutoMirrorState(Landroid/widget/ImageView;Z)V

    .line 302
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-static {v5, v0}, Lcom/android/systemui/qs/SignalTileView;->setTint(Landroid/widget/ImageView;I)V

    .line 308
    :goto_8
    return-void

    .line 213
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "shown":Z
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 224
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 235
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isRtl":Z
    goto/16 :goto_2

    .line 240
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    invoke-virtual {v5, v6, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 241
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    invoke-virtual {v5, v7, v7, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 244
    .end local v2    # "isRtl":Z
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 245
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 257
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto/16 :goto_4

    .line 277
    .restart local v4    # "shown":Z
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 286
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto :goto_6

    .line 295
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto :goto_7

    .line 304
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto :goto_8
.end method
