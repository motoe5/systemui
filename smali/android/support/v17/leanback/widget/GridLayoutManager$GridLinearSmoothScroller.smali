.class abstract Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GridLinearSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    .line 199
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 200
    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 4
    .param p1, "dx"    # I

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v1

    .line 232
    .local v1, "ms":I
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    if-lez v2, :cond_0

    .line 234
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    int-to-float v2, v2

    .line 233
    const/high16 v3, 0x41f00000    # 30.0f

    div-float v2, v3, v2

    .line 234
    int-to-float v3, p1

    .line 233
    mul-float v0, v2, v3

    .line 235
    .local v0, "minMs":F
    int-to-float v2, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    .line 236
    float-to-int v1, v0

    .line 239
    .end local v0    # "minMs":F
    :cond_0
    return v1
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "targetView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 210
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    .line 212
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStop()V

    .line 213
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 217
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v2

    iput v2, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 219
    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 222
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput-boolean v3, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 224
    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 225
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap0(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    .line 226
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStop()V

    .line 227
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 9
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "action"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 245
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    sget-object v5, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_1

    .line 248
    sget-object v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v1, v4, v7

    .line 249
    .local v1, "dx":I
    sget-object v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v2, v4, v8

    .line 254
    .local v2, "dy":I
    :goto_0
    mul-int v4, v1, v1

    mul-int v5, v2, v2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 255
    .local v0, "distance":I
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 256
    .local v3, "time":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 258
    .end local v0    # "distance":I
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "time":I
    :cond_0
    return-void

    .line 251
    :cond_1
    sget-object v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v1, v4, v8

    .line 252
    .restart local v1    # "dx":I
    sget-object v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v2, v4, v7

    .restart local v2    # "dy":I
    goto :goto_0
.end method
