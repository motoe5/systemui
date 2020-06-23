.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mCollapsedSize:I

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpanded:Z

.field private mPaddingBetweenElements:I

.field private mStatusBarHeight:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public static canChildBeDismissed(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 164
    instance-of v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_0

    .line 165
    return v2

    :cond_0
    move-object v0, p0

    .line 167
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 168
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    return v2

    .line 171
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v1

    return v1
.end method

.method private clampHunToMaxTranslation(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 6
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    .line 451
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v1

    .line 452
    .local v1, "maxHeadsUpTranslation":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v5

    add-float/2addr v4, v5

    .line 453
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v5

    .line 452
    add-float v2, v4, v5

    .line 454
    .local v2, "maxShelfPosition":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 455
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v1, v4

    .line 456
    .local v0, "bottomPosition":F
    iget v4, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 457
    .local v3, "newTranslation":F
    iget v4, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v4, v4

    sub-float v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 459
    iput v3, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 460
    return-void
.end method

.method private clampHunToTop(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 3
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    .line 441
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v1

    .line 442
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v2

    .line 441
    add-float/2addr v1, v2

    .line 442
    iget v2, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 441
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 443
    .local v0, "newTranslation":F
    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v1, v1

    .line 444
    iget v2, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 443
    sub-float v2, v0, v2

    sub-float/2addr v1, v2

    .line 444
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    .line 443
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 445
    iput v0, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 446
    return-void
.end method

.method private clampPositionToShelf(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 4
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    const/4 v3, 0x1

    .line 471
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    .line 472
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    .line 471
    sub-int v0, v1, v2

    .line 473
    .local v0, "shelfStart":I
    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 474
    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 475
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 476
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    .line 478
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    int-to-float v1, v1

    iget v2, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 481
    :cond_1
    return-void
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 5
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 97
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 98
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 99
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 100
    .local v3, "v":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 101
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 102
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 98
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    return-void
.end method

.method private getPaddingForValue(Ljava/lang/Float;)F
    .locals 4
    .param p1, "increasedPadding"    # Ljava/lang/Float;

    .prologue
    const/4 v3, 0x0

    .line 305
    if-nez p1, :cond_0

    .line 306
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    return v0

    .line 307
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 309
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    .line 310
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    int-to-float v1, v1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 308
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    return v0

    .line 315
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    .line 316
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    .line 313
    invoke-static {v3, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method private handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 9
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/4 v8, 0x0

    .line 202
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v3

    .line 203
    .local v3, "draggedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "draggedView$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 204
    .local v1, "draggedView":Landroid/view/View;
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 205
    .local v0, "childIndex":I
    if-ltz v0, :cond_0

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 206
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 207
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 210
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 213
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 215
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 220
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 222
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_0

    .line 225
    .end local v0    # "childIndex":I
    .end local v1    # "draggedView":Landroid/view/View;
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_2
    return-void
.end method

.method private initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 23
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 232
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v4

    .line 234
    .local v4, "bottomOverScroll":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v19

    .line 238
    .local v19, "scrollY":I
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 239
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v10

    .line 243
    .local v10, "hostView":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 244
    .local v5, "childCount":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 245
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 246
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 247
    const/4 v15, 0x0

    .line 248
    .local v15, "notGoneIndex":I
    const/4 v13, 0x0

    .line 249
    .local v13, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v11, 0x0

    .end local v13    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_8

    .line 250
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/ExpandableView;

    .line 251
    .local v20, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 252
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 249
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 255
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I

    move-result v15

    .line 256
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v12

    .line 257
    .local v12, "increasedPadding":F
    const/16 v21, 0x0

    cmpl-float v21, v12, v21

    if-eqz v21, :cond_6

    .line 258
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    if-eqz v13, :cond_3

    .line 260
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    .line 261
    .local v17, "prevValue":Ljava/lang/Float;
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v14

    .line 262
    .local v14, "newValue":F
    if-eqz v17, :cond_2

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v16

    .line 264
    .local v16, "prevPadding":F
    const/16 v21, 0x0

    cmpl-float v21, v12, v21

    if-lez v21, :cond_5

    .line 265
    move/from16 v0, v16

    invoke-static {v0, v14, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    .line 276
    .end local v16    # "prevPadding":F
    :cond_2
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .end local v14    # "newValue":F
    .end local v17    # "prevValue":Ljava/lang/Float;
    :cond_3
    :goto_3
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v18, v20

    .line 283
    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 287
    .local v18, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v9

    .line 288
    .local v9, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v21

    if-eqz v21, :cond_7

    if-eqz v9, :cond_7

    .line 289
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "childRow$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 290
    .local v6, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 292
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v8

    .line 293
    .local v8, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput v15, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 294
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 269
    .end local v6    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "childRow$iterator":Ljava/util/Iterator;
    .end local v8    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v9    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v18    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v14    # "newValue":F
    .restart local v16    # "prevPadding":F
    .restart local v17    # "prevValue":Ljava/lang/Float;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_2

    .line 273
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 270
    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    goto :goto_2

    .line 278
    .end local v14    # "newValue":F
    .end local v16    # "prevPadding":F
    .end local v17    # "prevValue":Ljava/lang/Float;
    :cond_6
    if-eqz v13, :cond_3

    .line 279
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Float;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v14

    .line 280
    .restart local v14    # "newValue":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 299
    .end local v14    # "newValue":F
    :cond_7
    move-object/from16 v13, v20

    .local v13, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    goto/16 :goto_1

    .line 302
    .end local v12    # "increasedPadding":F
    .end local v13    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v20    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_8
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    const v1, 0x7f0701d1

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    const v1, 0x7f0701d2

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    const v1, 0x7f0701e0

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    .line 69
    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 15
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 128
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v13

    .line 129
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v14

    .line 128
    add-float v3, v13, v14

    .line 130
    .local v3, "drawStart":F
    :goto_0
    const/4 v10, 0x0

    .line 131
    .local v10, "previousNotificationEnd":F
    const/4 v11, 0x0

    .line 132
    .local v11, "previousNotificationStart":F
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 133
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 134
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 135
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v12

    .line 136
    .local v12, "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v13

    if-nez v13, :cond_0

    .line 137
    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 138
    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 140
    :cond_0
    iget v8, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 141
    .local v8, "newYTranslation":F
    iget v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v6, v13

    .line 142
    .local v6, "newHeight":F
    add-float v7, v8, v6

    .line 143
    .local v7, "newNotificationEnd":F
    instance-of v13, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v13, :cond_4

    move-object v13, v1

    .line 144
    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v5

    .line 145
    :goto_2
    iget-boolean v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    if-nez v13, :cond_5

    cmpg-float v13, v8, v10

    if-gez v13, :cond_5

    .line 146
    if-eqz v5, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v13

    .line 145
    if-eqz v13, :cond_5

    .line 148
    :cond_1
    sub-float v9, v10, v8

    .line 149
    .local v9, "overlapAmount":F
    float-to-int v13, v9

    iput v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 154
    .end local v9    # "overlapAmount":F
    :goto_3
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isTransparent()Z

    move-result v13

    if-nez v13, :cond_2

    .line 157
    move v10, v7

    .line 158
    move v11, v8

    .line 133
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 129
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "childCount":I
    .end local v3    # "drawStart":F
    .end local v4    # "i":I
    .end local v6    # "newHeight":F
    .end local v7    # "newNotificationEnd":F
    .end local v8    # "newYTranslation":F
    .end local v10    # "previousNotificationEnd":F
    .end local v11    # "previousNotificationStart":F
    .end local v12    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "drawStart":F
    goto :goto_0

    .line 143
    .restart local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v2    # "childCount":I
    .restart local v4    # "i":I
    .restart local v6    # "newHeight":F
    .restart local v7    # "newNotificationEnd":F
    .restart local v8    # "newYTranslation":F
    .restart local v10    # "previousNotificationEnd":F
    .restart local v11    # "previousNotificationStart":F
    .restart local v12    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_4
    const/4 v5, 0x0

    .local v5, "isHeadsUp":Z
    goto :goto_2

    .line 151
    .end local v5    # "isHeadsUp":Z
    :cond_5
    const/4 v13, 0x0

    iput v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    goto :goto_3

    .line 161
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v6    # "newHeight":F
    .end local v7    # "newNotificationEnd":F
    .end local v8    # "newYTranslation":F
    .end local v12    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_6
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v5

    .line 180
    .local v5, "dimmed":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v4

    .line 181
    .local v4, "dark":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v6

    .line 182
    .local v6, "hideSensitive":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 183
    .local v0, "activatedChild":Landroid/view/View;
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 184
    .local v2, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 185
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 186
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 187
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    .line 188
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 189
    iput-boolean v6, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    .line 190
    if-ne v0, v1, :cond_1

    const/4 v8, 0x1

    .line 191
    .local v8, "isActivatedChild":Z
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v8, :cond_0

    .line 192
    iget v9, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 184
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 190
    .end local v8    # "isActivatedChild":Z
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "isActivatedChild":Z
    goto :goto_1

    .line 195
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v8    # "isActivatedChild":Z
    :cond_2
    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 12
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    const/4 v11, 0x0

    .line 392
    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 393
    .local v1, "childCount":I
    const/4 v6, 0x0

    .line 394
    .local v6, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v3, 0x0

    .end local v6    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 395
    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 396
    .local v0, "child":Landroid/view/View;
    instance-of v9, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v9, :cond_1

    .line 437
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void

    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    move-object v5, v0

    .line 399
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 400
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 403
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v2

    .line 404
    .local v2, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v6, :cond_2

    .line 405
    move-object v6, v5

    .line 406
    .local v6, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v9, 0x1

    iput v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 408
    .end local v6    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    if-ne v6, v5, :cond_7

    const/4 v4, 0x1

    .line 409
    .local v4, "isTopEntry":Z
    :goto_1
    iget v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v10, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 410
    .local v8, "unmodifiedEndLocation":F
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_3

    .line 412
    invoke-direct {p0, p3, v5, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampHunToTop(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    .line 413
    if-nez v3, :cond_3

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 415
    invoke-direct {p0, p3, v5, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampHunToMaxTranslation(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    .line 416
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 419
    :cond_3
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 420
    iget v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 421
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iget v10, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 422
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 423
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v7

    .line 424
    .local v7, "topState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v4, :cond_5

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_4

    .line 425
    iget v9, v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v10, v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    cmpg-float v9, v8, v9

    if-gez v9, :cond_5

    .line 428
    :cond_4
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 429
    iget v9, v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v10, v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 430
    iget v10, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    .line 429
    sub-float/2addr v9, v10

    iput v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 433
    .end local v7    # "topState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 434
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 394
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 408
    .end local v4    # "isTopEntry":Z
    .end local v8    # "unmodifiedEndLocation":F
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "isTopEntry":Z
    goto :goto_1
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "notGoneIndex"    # I
    .param p4, "v"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 323
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 324
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput p3, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 325
    iget-object v1, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 p3, p3, 0x1

    .line 327
    return p3
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 7
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 341
    iget v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v0, v0

    int-to-float v5, v0

    .line 342
    .local v5, "currentYPosition":F
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 343
    .local v6, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 344
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChild(ILcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;F)F

    move-result v5

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method

.method private updateShelfState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 1
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 122
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    .line 123
    .local v0, "shelf":Lcom/android/systemui/statusbar/NotificationShelf;
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 124
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 6
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 109
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 110
    .local v2, "childCount":I
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v0

    .line 111
    .local v0, "belowSpeedBump":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 112
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 113
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 117
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-lt v4, v0, :cond_0

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 120
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 7
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 500
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 501
    .local v6, "childCount":I
    const/4 v2, 0x0

    .line 502
    .local v2, "childrenOnTop":F
    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 503
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChildZValue(IFLcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)F

    move-result v2

    .line 502
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 506
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 484
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 485
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 486
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 488
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    if-nez p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method protected getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 1
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 387
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getPaddingAfterChild(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v0

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 77
    .local v0, "algorithmState":Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    .line 79
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 81
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 83
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 85
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 89
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 90
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 91
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateShelfState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 92
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 93
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 551
    return-void
.end method

.method protected updateChild(ILcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;F)F
    .locals 9
    .param p1, "i"    # I
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p4, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p5, "currentYPosition"    # F

    .prologue
    const/4 v7, 0x0

    .line 352
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 353
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v2

    .line 354
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput v7, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 355
    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v5

    .line 356
    .local v5, "paddingAfterChild":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v1

    .line 357
    .local v1, "childHeight":I
    iput p5, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 358
    instance-of v3, v0, Lcom/android/systemui/statusbar/DismissView;

    .line 359
    .local v3, "isDismissView":Z
    instance-of v4, v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 361
    .local v4, "isEmptyShadeView":Z
    const/4 v6, 0x4

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 362
    if-eqz v3, :cond_2

    .line 363
    iget v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 364
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    .line 363
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 372
    :goto_0
    iget v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v7, v1

    add-float/2addr v6, v7

    int-to-float v7, v5

    add-float p5, v6, v7

    .line 373
    const/4 v6, 0x0

    cmpg-float v6, p5, v6

    if-gtz v6, :cond_0

    .line 374
    const/4 v6, 0x2

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 376
    :cond_0
    iget v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    if-nez v6, :cond_1

    .line 377
    const-string/jumbo v6, "StackScrollAlgorithm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to assign location for child "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1
    iget v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v7

    .line 381
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v8

    .line 380
    add-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 382
    return p5

    .line 365
    :cond_2
    if-eqz v4, :cond_3

    .line 366
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    .line 367
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v7, v8

    .line 366
    add-float/2addr v6, v7

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    goto :goto_0

    .line 369
    :cond_3
    invoke-direct {p0, v2, p4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToShelf(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    goto :goto_0
.end method

.method protected updateChildZValue(IFLcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)F
    .locals 13
    .param p1, "i"    # I
    .param p2, "childrenOnTop"    # F
    .param p3, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p4, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p5, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 511
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 512
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 513
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v9

    .line 514
    .local v9, "zDistanceBetweenElements":I
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v10

    int-to-float v1, v10

    .line 515
    .local v1, "baseZ":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 516
    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v11

    .line 517
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v12

    .line 516
    add-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 518
    const/4 v10, 0x0

    cmpl-float v10, p2, v10

    if-eqz v10, :cond_0

    .line 519
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr p2, v10

    .line 526
    :goto_0
    int-to-float v10, v9

    mul-float/2addr v10, p2

    .line 525
    add-float/2addr v10, v1

    iput v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 546
    :goto_1
    return p2

    .line 521
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v10

    .line 522
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v11

    .line 521
    add-float/2addr v10, v11

    .line 522
    iget v11, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 521
    sub-float v6, v10, v11

    .line 523
    .local v6, "overlap":F
    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    div-float v10, v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    add-float/2addr p2, v10

    goto :goto_0

    .line 527
    .end local v6    # "overlap":F
    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->isAboveShelf()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 530
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v7

    .line 531
    .local v7, "shelfHeight":I
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v10

    sub-int/2addr v10, v7

    int-to-float v10, v10

    .line 532
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v11

    .line 531
    add-float/2addr v10, v11

    .line 533
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v11

    .line 531
    add-float v8, v10, v11

    .line 534
    .local v8, "shelfStart":F
    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 535
    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v11, v11

    .line 534
    add-float v5, v10, v11

    .line 536
    .local v5, "notificationEnd":F
    cmpl-float v10, v8, v5

    if-lez v10, :cond_2

    .line 537
    iput v1, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1

    .line 539
    :cond_2
    sub-float v10, v5, v8

    int-to-float v11, v7

    div-float v4, v10, v11

    .line 540
    .local v4, "factor":F
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 541
    int-to-float v10, v9

    mul-float/2addr v10, v4

    add-float/2addr v10, v1

    iput v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1

    .line 544
    .end local v4    # "factor":F
    .end local v5    # "notificationEnd":F
    .end local v7    # "shelfHeight":I
    .end local v8    # "shelfStart":F
    :cond_3
    iput v1, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1
.end method
