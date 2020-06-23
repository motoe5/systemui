.class public Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;
.source "QSIconViewImpl.java"


# instance fields
.field private mAnimationEnabled:Z

.field protected final mIcon:Landroid/view/View;

.field protected final mIconSizePx:I

.field private mState:I

.field protected final mTilePaddingBelowIconPx:I

.field private mTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    .line 46
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    .line 54
    const v1, 0x7f070247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTilePaddingBelowIconPx:I

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->createIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->addView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public static animateGrayScale(IILandroid/widget/ImageView;)V
    .locals 10
    .param p0, "fromColor"    # I
    .param p1, "toColor"    # I
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 155
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v1, v0

    .line 156
    .local v1, "fromAlpha":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v2, v0

    .line 157
    .local v2, "toAlpha":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v3, v0

    .line 158
    .local v3, "fromChannel":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v4, v0

    .line 160
    .local v4, "toChannel":F
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v5, 0x0

    const/4 v7, 0x0

    aput v5, v0, v7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aput v5, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 161
    .local v6, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x15e

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 163
    new-instance v0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;-><init>(FFFFLjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 171
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_qs_tileimpl_QSIconViewImpl_6031(FFFFLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p0, "fromAlpha"    # F
    .param p1, "toAlpha"    # F
    .param p2, "fromChannel"    # F
    .param p3, "toChannel"    # F
    .param p4, "iv"    # Landroid/widget/ImageView;
    .param p5, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 164
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 165
    .local v2, "fraction":F
    sub-float v3, p1, p0

    mul-float/2addr v3, v2

    add-float/2addr v3, p0

    float-to-int v0, v3

    .line 166
    .local v0, "alpha":I
    sub-float v3, p3, p2

    mul-float/2addr v3, v2

    add-float/2addr v3, p2

    float-to-int v1, v3

    .line 168
    .local v1, "channel":I
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {p4, v3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public static setTint(Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "color"    # I

    .prologue
    .line 174
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 175
    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 185
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 186
    return-object v0
.end method

.method public disableAnimation()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    .line 62
    return-void
.end method

.method protected final exactly(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 190
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected getColor(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected getIconMeasureMode()I
    .locals 1

    .prologue
    .line 179
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    return-object v0
.end method

.method protected final layout(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 195
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getMeasuredWidth()I

    move-result v2

    .line 79
    .local v2, "w":I
    const/4 v1, 0x0

    .line 80
    .local v1, "top":I
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v0, v3, 0x2

    .line 81
    .local v0, "iconLeft":I
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->layout(Landroid/view/View;II)V

    .line 82
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 70
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 71
    .local v1, "w":I
    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->exactly(I)I

    move-result v0

    .line 72
    .local v0, "iconSpec":I
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getIconMeasureMode()I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    .line 73
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setMeasuredDimension(II)V

    .line 74
    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 132
    iget-boolean v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 137
    :goto_0
    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    if-eq v1, v2, :cond_0

    .line 138
    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(I)I

    move-result v0

    .line 139
    .local v0, "color":I
    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 140
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    if-eqz v1, :cond_2

    .line 141
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    invoke-static {v1, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->animateGrayScale(IILandroid/widget/ImageView;)V

    .line 142
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    .line 148
    .end local v0    # "color":I
    :cond_0
    :goto_1
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 144
    .restart local v0    # "color":I
    :cond_2
    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 145
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    goto :goto_1
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 86
    return-void
.end method

.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 9
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    const v8, 0x7f0a021d

    const/4 v7, 0x0

    .line 89
    iget-object v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v5, :cond_4

    .line 91
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    .line 92
    .local v4, "shouldAnimate":Z
    :goto_0
    iget-object v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v5, :cond_6

    .line 93
    if-eqz v4, :cond_5

    iget-object v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 95
    :goto_1
    iget-object v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v5, :cond_7

    iget-object v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getPadding()I

    move-result v3

    .line 96
    .local v3, "padding":I
    :goto_2
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 101
    :cond_0
    iget-object v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v5, :cond_1

    iget-object v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    instance-of v5, v5, Lcom/android/systemui/qs/CellTileView$SignalIcon;

    if-eqz v5, :cond_1

    .line 102
    iget-object v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    check-cast v5, Lcom/android/systemui/qs/CellTileView$SignalIcon;

    invoke-virtual {v5}, Lcom/android/systemui/qs/CellTileView$SignalIcon;->getState()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 106
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p1, v8, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 108
    invoke-virtual {p1, v7, v3, v7, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 109
    instance-of v5, v2, Landroid/graphics/drawable/Animatable2;

    if-eqz v5, :cond_8

    move-object v0, v2

    .line 110
    check-cast v0, Landroid/graphics/drawable/Animatable2;

    .line 111
    .local v0, "a":Landroid/graphics/drawable/Animatable2;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable2;->start()V

    .line 112
    iget-boolean v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz v5, :cond_2

    .line 113
    new-instance v5, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;

    invoke-direct {v5, p0, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/graphics/drawable/Animatable2;)V

    invoke-interface {v0, v5}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 128
    .end local v0    # "a":Landroid/graphics/drawable/Animatable2;
    .end local v3    # "padding":I
    .end local v4    # "shouldAnimate":Z
    :cond_2
    :goto_3
    return-void

    .line 91
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "shouldAnimate":Z
    goto :goto_0

    .line 90
    .end local v4    # "shouldAnimate":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "shouldAnimate":Z
    goto :goto_0

    .line 94
    :cond_5
    iget-object v5, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    const/4 v2, 0x0

    .local v2, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 95
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "padding":I
    goto :goto_2

    .line 122
    :cond_8
    instance-of v5, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v5, :cond_2

    move-object v1, v2

    .line 123
    check-cast v1, Landroid/graphics/drawable/Animatable;

    .line 124
    .local v1, "a":Landroid/graphics/drawable/Animatable;
    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_3
.end method
