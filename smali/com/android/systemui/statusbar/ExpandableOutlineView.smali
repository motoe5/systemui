.class public abstract Lcom/android/systemui/statusbar/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "ExpandableOutlineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableOutlineView$1;
    }
.end annotation


# instance fields
.field private mCustomOutline:Z

.field private mOutlineAlpha:F

.field private final mOutlineRect:Landroid/graphics/Rect;

.field mProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableOutlineView;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableOutlineView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableOutlineView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getOutlineAlpha()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    return v0
.end method

.method public getOutlineTranslation()I
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getTranslation()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected needsOutline()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpansionChanging()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpansionChanging()Z

    move-result v0

    :cond_2
    return v0

    .line 120
    :cond_3
    return v0
.end method

.method public setActualHeight(IZ)V
    .locals 0
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 61
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBottomAmount(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 73
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 67
    return-void
.end method

.method protected setOutlineAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 76
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 77
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 80
    :cond_0
    return-void
.end method

.method protected setOutlineRect(FFFF)V
    .locals 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipToOutline(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 139
    return-void
.end method

.method protected setOutlineRect(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v0, 0x0

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineRect(FFFF)V

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipToOutline(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    goto :goto_0
.end method

.method public updateOutline()V
    .locals 2

    .prologue
    .line 103
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v1, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->needsOutline()Z

    move-result v0

    .line 107
    .local v0, "hasOutline":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 108
    return-void

    .line 107
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
