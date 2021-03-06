.class public Lcom/android/settingslib/graph/BottomLabelLayout;
.super Landroid/widget/LinearLayout;
.source "BottomLabelLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BottomLabelLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 49
    .local v5, "widthSize":I
    invoke-direct {p0}, Lcom/android/settingslib/graph/BottomLabelLayout;->isStacked()Z

    move-result v1

    .line 50
    .local v1, "isStacked":Z
    const/4 v4, 0x0

    .line 56
    .local v4, "needsRemeasure":Z
    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_2

    .line 57
    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 60
    .local v0, "initialWidthMeasureSpec":I
    const/4 v4, 0x1

    .line 65
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BottomLabelLayout;->getMeasuredWidthAndState()I

    move-result v2

    .line 68
    .local v2, "measuredWidth":I
    const/high16 v6, -0x1000000

    and-int v3, v2, v6

    .line 70
    .local v3, "measuredWidthState":I
    const/high16 v6, 0x1000000

    if-ne v3, v6, :cond_0

    .line 71
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settingslib/graph/BottomLabelLayout;->setStacked(Z)V

    .line 73
    const/4 v4, 0x1

    .line 77
    .end local v2    # "measuredWidth":I
    .end local v3    # "measuredWidthState":I
    :cond_0
    if-eqz v4, :cond_1

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 81
    :cond_1
    return-void

    .line 62
    .end local v0    # "initialWidthMeasureSpec":I
    :cond_2
    move v0, p1

    .restart local v0    # "initialWidthMeasureSpec":I
    goto :goto_0
.end method

.method setStacked(Z)V
    .locals 3
    .param p1, "stacked"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 85
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settingslib/graph/BottomLabelLayout;->setOrientation(I)V

    .line 86
    if-eqz p1, :cond_3

    const v1, 0x800003

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/graph/BottomLabelLayout;->setGravity(I)V

    .line 88
    sget v1, Lcom/android/settingslib/R$id;->spacer:I

    invoke-virtual {p0, v1}, Lcom/android/settingslib/graph/BottomLabelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 90
    if-eqz p1, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_1
    return-void

    .end local v0    # "spacer":Landroid/view/View;
    :cond_2
    move v1, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/16 v1, 0x50

    goto :goto_1
.end method
