.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "QSContainerImpl.java"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mFullElevation:F

.field private mGutterHeight:I

.field protected mHeader:Landroid/view/View;

.field private mHeightOverride:I

.field private mIsLandScape:Z

.field private mLastOrientation:I

.field private mNavigationBarHeight:I

.field private mOneNavEnabled:Z

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDetail:Landroid/view/View;

.field private mQSFooter:Lcom/android/systemui/qs/QSFooter;

.field protected mQSPanel:Landroid/view/View;

.field protected mQsExpansion:F

.field private final mSizePoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    .line 36
    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 50
    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mLastOrientation:I

    .line 55
    return-void
.end method


# virtual methods
.method protected calculateContainerHeight()I
    .locals 3

    .prologue
    .line 165
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 166
    .local v0, "heightOverride":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->getHeight()I

    move-result v1

    :goto_1
    return v1

    .line 165
    .end local v0    # "heightOverride":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getMeasuredHeight()I

    move-result v0

    .restart local v0    # "heightOverride":I
    goto :goto_0

    .line 167
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 168
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 167
    add-int/2addr v1, v2

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 90
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIsLandScape:Z

    .line 92
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mLastOrientation:I

    .line 93
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f0a0221

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    .line 61
    const v0, 0x7f0a0218

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    .line 62
    const v0, 0x7f0a0109

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Landroid/view/View;

    .line 63
    const v0, 0x7f0a0217

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 64
    const v0, 0x7f0a021b

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSFooter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Lcom/android/systemui/qs/QSFooter;

    .line 65
    const v0, 0x7f0a0215

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070239

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mGutterHeight:I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFullElevation:F

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setClickable(Z)V

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setImportantForAccessibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavigationBarHeight:I

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mLastOrientation:I

    .line 75
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 133
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 135
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 108
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    .line 109
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/4 v5, 0x0

    .line 108
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    .line 110
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 111
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 112
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 113
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 112
    add-int v0, v3, v4

    .line 114
    .local v0, "height":I
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 115
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 114
    invoke-super {p0, v3, v4}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 121
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOneNavEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIsLandScape:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 123
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavigationBarHeight:I

    add-int/2addr v4, v5

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 122
    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->measure(II)V

    .line 129
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 126
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 125
    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->measure(II)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public setExpansion(F)V
    .locals 0
    .param p1, "expansion"    # F

    .prologue
    .line 172
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 174
    return-void
.end method

.method public setGutterEnabled(Z)V
    .locals 2
    .param p1, "gutterEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 177
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mGutterHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 178
    return-void

    :cond_0
    move v0, v1

    .line 177
    goto :goto_0

    .line 180
    :cond_1
    if-eqz p1, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    const v1, 0x7f070239

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mGutterHeight:I

    .line 186
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 187
    return-void

    .line 184
    :cond_2
    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mGutterHeight:I

    goto :goto_1
.end method

.method public setHeightOverride(I)V
    .locals 0
    .param p1, "heightOverride"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 146
    return-void
.end method

.method public updateExpansion()V
    .locals 5

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v2

    .line 150
    .local v2, "height":I
    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mGutterHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 151
    .local v1, "gutterHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSContainerImpl;->setBottom(I)V

    .line 152
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    .line 153
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    .line 155
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSFooter;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSFooter;->setTranslationY(F)V

    .line 157
    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFullElevation:F

    mul-float v0, v3, v4

    .line 158
    .local v0, "elevation":F
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setElevation(F)V

    .line 159
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setElevation(F)V

    .line 160
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSFooter;->setElevation(F)V

    .line 161
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setElevation(F)V

    .line 162
    return-void
.end method

.method public updateOneNav(Z)V
    .locals 1
    .param p1, "mEnable"    # Z

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOneNavEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 81
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOneNavEnabled:Z

    .line 82
    return-void
.end method
