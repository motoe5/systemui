.class final Landroid/support/v17/leanback/widget/GridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GridLayoutManager$1;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$2;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    }
.end annotation


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;

.field static sTwoInts:[I


# instance fields
.field final mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

.field mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

.field private mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

.field private mChildViewHolderSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field mChildVisibility:I

.field final mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

.field mDisappearingPositions:[I

.field private mExtraLayoutSpace:I

.field mExtraLayoutSpaceInPreLayout:I

.field private mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

.field private mFixedRowSizeSecondary:I

.field private mFocusOutEnd:Z

.field private mFocusOutFront:Z

.field private mFocusOutSideEnd:Z

.field private mFocusOutSideStart:Z

.field mFocusPosition:I

.field private mFocusPositionOffset:I

.field private mFocusScrollStrategy:I

.field private mFocusSearchDisabled:Z

.field private mForceFullLayout:Z

.field private mGravity:I

.field mGrid:Landroid/support/v17/leanback/widget/Grid;

.field private mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field private mHorizontalSpacing:I

.field mInFastRelayout:Z

.field mInLayout:Z

.field mInLayoutSearchFocus:Z

.field private mInScroll:Z

.field mInSelection:Z

.field mIsSlidingChildViews:Z

.field private final mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

.field mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutEatenInSliding:Z

.field private mLayoutEnabled:Z

.field mMaxPendingMoves:I

.field private mMaxSizeSecondary:I

.field private mMeasuredDimension:[I

.field mNumRows:I

.field private mNumRowsRequested:I

.field mOrientation:I

.field private mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

.field mPositionDeltaInPreLayout:I

.field final mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

.field private mPrimaryScrollExtra:I

.field private mPruneChild:Z

.field mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;

.field mReverseFlowPrimary:Z

.field private mReverseFlowSecondary:Z

.field private mRowSecondarySizeRefresh:Z

.field private mRowSizeSecondary:[I

.field private mRowSizeSecondaryRequested:I

.field private mScrollEnabled:Z

.field mScrollOffsetSecondary:I

.field private mSizePrimary:I

.field private mSpacingPrimary:I

.field private mSpacingSecondary:I

.field mState:Landroid/support/v7/widget/RecyclerView$State;

.field mSubFocusPosition:I

.field private mVerticalSpacing:I

.field final mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;


# direct methods
.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0
    .param p0, "-this"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .prologue
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 444
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    .line 645
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseGridView;)V
    .locals 5
    .param p1, "baseGridView"    # Landroid/support/v17/leanback/widget/BaseGridView;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 669
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 384
    const/16 v0, 0xa

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    .line 426
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 427
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 439
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    .line 454
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 456
    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    .line 458
    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 460
    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    .line 467
    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 473
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 487
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 502
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    .line 507
    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    .line 565
    const v0, 0x800033

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    .line 574
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 584
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    .line 588
    new-instance v0, Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    .line 593
    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    .line 620
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    .line 625
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    .line 635
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    .line 640
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    .line 650
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    .line 655
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    .line 660
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    .line 662
    new-instance v0, Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    .line 1363
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$1;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1527
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$2;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    .line 670
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    .line 671
    return-void
.end method

.method private appendOneColumnVisibleItems()Z
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private appendVisibleItems()V
    .locals 3

    .prologue
    .line 1860
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_0

    .line 1861
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v0, v2

    .line 1860
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(I)V

    .line 1863
    return-void

    .line 1862
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private discardLayoutInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3463
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 3464
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    .line 3465
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    .line 3466
    return-void
.end method

.method private dispatchChildSelectedAndPositioned()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 981
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    return-void

    .line 986
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v3, :cond_1

    const/4 v7, 0x0

    .line 987
    :goto_0
    if-eqz v7, :cond_2

    .line 988
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 989
    .local v6, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 990
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 989
    invoke-virtual {p0, v0, v6, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 999
    .end local v6    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_1
    return-void

    .line 986
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .local v7, "view":Landroid/view/View;
    goto :goto_0

    .line 992
    .end local v7    # "view":Landroid/view/View;
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_3

    .line 993
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const-wide/16 v4, -0x1

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 995
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    goto :goto_1
.end method

.method private fastRelayout()V
    .locals 19

    .prologue
    .line 1877
    const/4 v11, 0x0

    .line 1878
    .local v11, "invalidateAfter":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v8

    .line 1879
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v15

    .line 1880
    .local v15, "position":I
    const/4 v10, 0x0

    .line 1881
    .local v10, "index":I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 1882
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1888
    .local v4, "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v2

    if-eq v15, v2, :cond_1

    .line 1889
    const/4 v11, 0x1

    .line 1927
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    if-eqz v11, :cond_8

    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v17

    .line 1929
    .local v17, "savedLastPos":I
    add-int/lit8 v9, v8, -0x1

    .local v9, "i":I
    :goto_2
    if-lt v9, v10, :cond_6

    .line 1930
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1931
    .local v18, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1929
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 1892
    .end local v9    # "i":I
    .end local v17    # "savedLastPos":I
    .end local v18    # "v":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v15}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v12

    .line 1893
    .local v12, "location":Landroid/support/v17/leanback/widget/Grid$Location;
    if-nez v12, :cond_2

    .line 1894
    const/4 v11, 0x1

    .line 1895
    goto :goto_1

    .line 1898
    :cond_2
    iget v2, v12, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v2

    .line 1899
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    .line 1898
    add-int/2addr v2, v3

    .line 1899
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 1898
    sub-int v7, v2, v3

    .line 1901
    .local v7, "startSecondary":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v5

    .line 1902
    .local v5, "start":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v14

    .line 1904
    .local v14, "oldPrimarySize":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1905
    .local v13, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->viewNeedsUpdate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1906
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1907
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    .line 1908
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    .line 1911
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1912
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_4

    .line 1913
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v16

    .line 1914
    .local v16, "primarySize":I
    add-int v6, v5, v16

    .line 1919
    .local v6, "end":I
    :goto_3
    iget v3, v12, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    .line 1920
    move/from16 v0, v16

    if-eq v14, v0, :cond_5

    .line 1923
    const/4 v11, 0x1

    .line 1924
    goto/16 :goto_1

    .line 1916
    .end local v6    # "end":I
    .end local v16    # "primarySize":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v16

    .line 1917
    .restart local v16    # "primarySize":I
    add-int v6, v5, v16

    .restart local v6    # "end":I
    goto :goto_3

    .line 1881
    :cond_5
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 1933
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "startSecondary":I
    .end local v12    # "location":Landroid/support/v17/leanback/widget/Grid$Location;
    .end local v13    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v14    # "oldPrimarySize":I
    .end local v16    # "primarySize":I
    .restart local v9    # "i":I
    .restart local v17    # "savedLastPos":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v15}, Landroid/support/v17/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 1934
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v2, :cond_7

    .line 1936
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 1937
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v0, v17

    if-gt v2, v0, :cond_8

    .line 1940
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v2, v3, :cond_8

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    goto :goto_4

    .line 1946
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move/from16 v0, v17

    if-lt v2, v0, :cond_7

    .line 1950
    .end local v9    # "i":I
    .end local v17    # "savedLastPos":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 1951
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 1952
    return-void
.end method

.method private findImmediateChildIndex(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3039
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-eq p1, v2, :cond_1

    .line 3040
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 3041
    if-eqz p1, :cond_1

    .line 3042
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3043
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 3044
    return v1

    .line 3042
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3049
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private focusToViewInLayout(ZZ)V
    .locals 5
    .param p1, "hadFocus"    # Z
    .param p2, "alignToView"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1967
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 1968
    .local v1, "focusView":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1969
    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 1971
    :cond_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 1972
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1990
    :cond_1
    :goto_0
    return-void

    .line 1973
    :cond_2
    if-nez p1, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 1974
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1975
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    .line 1986
    :cond_3
    :goto_1
    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1987
    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    goto :goto_0

    .line 1977
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1978
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1979
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1980
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1

    .line 1977
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private forceRequestLayout()V
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1361
    return-void
.end method

.method private getAdapterPositionByIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 935
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getAdapterPositionByView(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 898
    if-nez p1, :cond_0

    .line 899
    return v2

    .line 901
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 902
    .local v0, "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 904
    :cond_1
    return v2

    .line 906
    :cond_2
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v1

    return v1
.end method

.method private getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "scrollPrimary"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "childView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 2823
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 2824
    .local v1, "subindex":I
    if-eqz v1, :cond_0

    .line 2825
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2826
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v3

    aget v3, v3, v4

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 2828
    .end local v0    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    :cond_0
    return p1
.end method

.method private getAdjustedViewCenter(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1109
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1111
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 1112
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v1, p1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I

    move-result v1

    return v1

    .line 1115
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    return v1
.end method

.method private getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "deltas"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2966
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    .line 2967
    .local v0, "scrollPrimary":I
    if-eqz p2, :cond_0

    .line 2968
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 2970
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v1

    .line 2975
    .local v1, "scrollSecondary":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    add-int/2addr v0, v2

    .line 2976
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 2977
    :cond_1
    aput v0, p3, v3

    .line 2978
    aput v1, p3, v4

    .line 2979
    return v4

    .line 2981
    :cond_2
    aput v3, p3, v3

    .line 2982
    aput v3, p3, v4

    .line 2984
    return v3
.end method

.method private getMovement(I)I
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 3390
    const/16 v0, 0x11

    .line 3392
    .local v0, "movement":I
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_3

    .line 3393
    sparse-switch p1, :sswitch_data_0

    .line 3424
    :cond_0
    :goto_0
    return v0

    .line 3395
    :sswitch_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3398
    :sswitch_1
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3401
    :sswitch_2
    const/4 v0, 0x2

    .line 3402
    goto :goto_0

    .line 3404
    :sswitch_3
    const/4 v0, 0x3

    .line 3405
    goto :goto_0

    .line 3407
    :cond_3
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3408
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 3410
    :sswitch_4
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 3413
    :sswitch_5
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    .line 3416
    :sswitch_6
    const/4 v0, 0x0

    .line 3417
    goto :goto_0

    .line 3419
    :sswitch_7
    const/4 v0, 0x1

    .line 3420
    goto :goto_0

    .line 3393
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    .line 3408
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method private getNoneAlignedPosition(Landroid/view/View;[I)Z
    .locals 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "deltas"    # [I

    .prologue
    .line 2891
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v4

    .line 2892
    .local v4, "pos":I
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    .line 2893
    .local v11, "viewMin":I
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v10

    .line 2896
    .local v10, "viewMax":I
    const/4 v1, 0x0

    .line 2897
    .local v1, "firstView":Landroid/view/View;
    const/4 v2, 0x0

    .line 2898
    .local v2, "lastView":Landroid/view/View;
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    .line 2899
    .local v3, "paddingMin":I
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v0

    .line 2900
    .local v0, "clientSize":I
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v12, v4}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v6

    .line 2901
    .local v6, "row":I
    if-ge v11, v3, :cond_4

    .line 2903
    move-object v1, p1

    .line 2904
    .local v1, "firstView":Landroid/view/View;
    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 2907
    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependOneColumnVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2909
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v13, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v13

    invoke-virtual {v12, v13, v4}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v12

    .line 2908
    aget-object v5, v12, v6

    .line 2910
    .local v5, "positions":Landroid/support/v4/util/CircularIntArray;
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 2911
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    sub-int v12, v10, v12

    if-le v12, v0, :cond_0

    .line 2912
    invoke-virtual {v5}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_1

    .line 2913
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 2941
    .end local v1    # "firstView":Landroid/view/View;
    .end local v2    # "lastView":Landroid/view/View;
    .end local v5    # "positions":Landroid/support/v4/util/CircularIntArray;
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 2942
    .local v7, "scrollPrimary":I
    const/4 v8, 0x0

    .line 2943
    .local v8, "scrollSecondary":I
    if-eqz v1, :cond_8

    .line 2944
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    sub-int v7, v12, v3

    .line 2949
    :cond_2
    :goto_1
    if-eqz v1, :cond_9

    .line 2950
    move-object v9, v1

    .line 2956
    .local v9, "secondaryAlignedView":Landroid/view/View;
    :goto_2
    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v8

    .line 2957
    if-nez v7, :cond_3

    if-eqz v8, :cond_b

    .line 2958
    :cond_3
    const/4 v12, 0x0

    aput v7, p2, v12

    .line 2959
    const/4 v12, 0x1

    aput v8, p2, v12

    .line 2960
    const/4 v12, 0x1

    return v12

    .line 2919
    .end local v7    # "scrollPrimary":I
    .end local v8    # "scrollSecondary":I
    .end local v9    # "secondaryAlignedView":Landroid/view/View;
    .local v1, "firstView":Landroid/view/View;
    .restart local v2    # "lastView":Landroid/view/View;
    :cond_4
    add-int v12, v0, v3

    if-le v10, v12, :cond_1

    .line 2921
    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 2923
    move-object v1, p1

    .line 2926
    .end local v2    # "lastView":Landroid/view/View;
    .local v1, "firstView":Landroid/view/View;
    :goto_3
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v13, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v13

    invoke-virtual {v12, v4, v13}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v12

    .line 2925
    aget-object v5, v12, v6

    .line 2927
    .restart local v5    # "positions":Landroid/support/v4/util/CircularIntArray;
    invoke-virtual {v5}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 2928
    .local v2, "lastView":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v12, v11

    if-le v12, v0, :cond_6

    .line 2929
    const/4 v2, 0x0

    .line 2933
    .end local v2    # "lastView":Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_1

    .line 2935
    const/4 v1, 0x0

    .local v1, "firstView":Landroid/view/View;
    goto :goto_0

    .line 2932
    .local v1, "firstView":Landroid/view/View;
    .restart local v2    # "lastView":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_3

    .line 2938
    .end local v5    # "positions":Landroid/support/v4/util/CircularIntArray;
    .local v1, "firstView":Landroid/view/View;
    .local v2, "lastView":Landroid/view/View;
    :cond_7
    move-object v2, p1

    .local v2, "lastView":Landroid/view/View;
    goto :goto_0

    .line 2945
    .end local v1    # "firstView":Landroid/view/View;
    .end local v2    # "lastView":Landroid/view/View;
    .restart local v7    # "scrollPrimary":I
    .restart local v8    # "scrollSecondary":I
    :cond_8
    if-eqz v2, :cond_2

    .line 2946
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v12

    add-int v13, v3, v0

    sub-int v7, v12, v13

    goto :goto_1

    .line 2951
    :cond_9
    if-eqz v2, :cond_a

    .line 2952
    move-object v9, v2

    .restart local v9    # "secondaryAlignedView":Landroid/view/View;
    goto :goto_2

    .line 2954
    .end local v9    # "secondaryAlignedView":Landroid/view/View;
    :cond_a
    move-object v9, p1

    .restart local v9    # "secondaryAlignedView":Landroid/view/View;
    goto :goto_2

    .line 2962
    :cond_b
    const/4 v12, 0x0

    return v12
.end method

.method private getPrimaryAlignedScrollDistance(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2814
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v0

    return v0
.end method

.method private getRowSizeSecondary(I)I
    .locals 2
    .param p1, "rowIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1201
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-eqz v0, :cond_0

    .line 1202
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    return v0

    .line 1204
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v0, :cond_1

    .line 1205
    return v1

    .line 1207
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aget v0, v0, p1

    return v0
.end method

.method private getSecondaryScrollDistance(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2832
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v0

    .line 2833
    .local v0, "viewCenterSecondary":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v1

    return v1
.end method

.method private getSizeSecondary()I
    .locals 3

    .prologue
    .line 1227
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1228
    .local v0, "rightmostIndex":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 1227
    .end local v0    # "rightmostIndex":I
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "rightmostIndex":I
    goto :goto_0
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1105
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private getViewCenterSecondary(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1119
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private getViewCenterX(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1123
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1124
    .local v0, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignX()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewCenterY(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1128
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1129
    .local v0, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignY()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3342
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 3343
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 3344
    invoke-virtual {v1, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 3348
    .local v0, "result":Z
    return v0

    .line 3350
    .end local v0    # "result":Z
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private gridOnRequestFocusInDescendantsUnaligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 3359
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .line 3360
    .local v1, "count":I
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_0

    .line 3361
    const/4 v5, 0x0

    .line 3362
    .local v5, "index":I
    const/4 v4, 0x1

    .line 3363
    .local v4, "increment":I
    move v2, v1

    .line 3369
    .local v2, "end":I
    :goto_0
    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v6

    .line 3370
    .local v6, "left":I
    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v8

    add-int v7, v8, v6

    .line 3371
    .local v7, "right":I
    move v3, v5

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 3372
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3373
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 3374
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v8

    if-lt v8, v6, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v8

    if-gt v8, v7, :cond_1

    .line 3375
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3376
    const/4 v8, 0x1

    return v8

    .line 3365
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "increment":I
    .end local v5    # "index":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 3366
    .restart local v5    # "index":I
    const/4 v4, -0x1

    .line 3367
    .restart local v4    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 3371
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v6    # "left":I
    .restart local v7    # "right":I
    :cond_1
    add-int/2addr v3, v4

    goto :goto_1

    .line 3381
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v9
.end method

.method private initScrollController()V
    .locals 3

    .prologue
    .line 2550
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->reset()V

    .line 2551
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2552
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2553
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2554
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2555
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    .line 2556
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2562
    return-void
.end method

.method private layoutInit()Z
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1162
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 1163
    .local v0, "newItemCount":I
    if-nez v0, :cond_1

    .line 1164
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1165
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 1174
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_3

    .line 1175
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    xor-int/lit8 v1, v1, 0x1

    .line 1174
    if-eqz v1, :cond_3

    .line 1175
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ne v1, v2, :cond_3

    .line 1176
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollController()V

    .line 1177
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 1178
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setSpacing(I)V

    .line 1179
    const/4 v1, 0x1

    return v1

    .line 1166
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt v1, v0, :cond_2

    .line 1167
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1168
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 1169
    :cond_2
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 1171
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1172
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 1181
    :cond_3
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    .line 1183
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1185
    :cond_4
    :goto_1
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    invoke-static {v1}, Landroid/support/v17/leanback/widget/Grid;->createGrid(I)Landroid/support/v17/leanback/widget/Grid;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 1186
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V

    .line 1187
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setReversedFlow(Z)V

    .line 1189
    :cond_5
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->initScrollController()V

    .line 1190
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 1191
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setSpacing(I)V

    .line 1192
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1193
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    .line 1194
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMin()V

    .line 1195
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMax()V

    .line 1196
    return v3

    .line 1184
    :cond_6
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-eq v1, v2, :cond_5

    goto :goto_1
.end method

.method private leaveContext()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1149
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 1150
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 1151
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 1152
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 1153
    return-void
.end method

.method private measureScrapChild(III[I)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "measuredDimension"    # [I

    .prologue
    .line 1243
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    .line 1244
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1245
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1246
    .local v3, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    sget-object v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1247
    iget v6, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    .line 1248
    .local v5, "widthUsed":I
    iget v6, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int v2, v6, v7

    .line 1251
    .local v2, "heightUsed":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    .line 1250
    invoke-static {p2, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1253
    .local v1, "childWidthSpec":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    .line 1252
    invoke-static {p3, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1254
    .local v0, "childHeightSpec":I
    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1256
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    aput v6, p4, v7

    .line 1257
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    aput v6, p4, v7

    .line 1258
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 1260
    .end local v0    # "childHeightSpec":I
    .end local v1    # "childWidthSpec":I
    .end local v2    # "heightUsed":I
    .end local v3    # "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v5    # "widthUsed":I
    :cond_0
    return-void
.end method

.method private offsetChildrenPrimary(I)V
    .locals 4
    .param p1, "increment"    # I

    .prologue
    .line 2326
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2327
    .local v0, "childCount":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2328
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2329
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2332
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2333
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2332
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2336
    :cond_1
    return-void
.end method

.method private offsetChildrenSecondary(I)V
    .locals 3
    .param p1, "increment"    # I

    .prologue
    .line 2313
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2314
    .local v0, "childCount":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_0

    .line 2315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2316
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2319
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2320
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2323
    :cond_1
    return-void
.end method

.method private prependOneColumnVisibleItems()Z
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->prependOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private prependVisibleItems()V
    .locals 3

    .prologue
    .line 1866
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_0

    .line 1867
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v0, v2

    .line 1866
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(I)V

    .line 1869
    return-void

    .line 1868
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method private processPendingMovement(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2685
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    .line 2686
    return-void

    .line 2685
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    goto :goto_0

    .line 2688
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v1, :cond_5

    .line 2690
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    .line 2691
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 2692
    if-eqz p1, :cond_3

    move v1, v2

    :goto_1
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v4, v2, :cond_4

    .line 2691
    :goto_2
    invoke-direct {v0, p0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;IZ)V

    .line 2693
    .local v0, "linearSmoothScroller":Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2694
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 2695
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2696
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 2705
    .end local v0    # "linearSmoothScroller":Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
    :cond_2
    :goto_3
    return-void

    .line 2692
    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    .line 2699
    :cond_5
    if-eqz p1, :cond_6

    .line 2700
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->increasePendingMoves()V

    goto :goto_3

    .line 2702
    :cond_6
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->decreasePendingMoves()V

    goto :goto_3
.end method

.method private processRowSizeSecondary(Z)Z
    .locals 23
    .param p1, "measure"    # Z

    .prologue
    .line 1263
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 1264
    :cond_0
    const/16 v20, 0x0

    return v20

    .line 1268
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    const/4 v15, 0x0

    .line 1269
    :goto_0
    const/4 v4, 0x0

    .line 1270
    .local v4, "changed":Z
    const/16 v17, -0x1

    .line 1271
    .local v17, "scrapChildWidth":I
    const/16 v16, -0x1

    .line 1273
    .local v16, "scrapChildHeight":I
    const/4 v9, 0x0

    .local v9, "rowIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_12

    .line 1274
    if-nez v15, :cond_4

    const/4 v8, 0x0

    .line 1275
    :goto_2
    if-nez v8, :cond_5

    const/4 v13, 0x0

    .line 1276
    .local v13, "rowItemsPairCount":I
    :goto_3
    const/4 v14, -0x1

    .line 1277
    .local v14, "rowSize":I
    const/4 v12, 0x0

    .local v12, "rowItemPairIndex":I
    :goto_4
    if-ge v12, v13, :cond_a

    .line 1279
    invoke-virtual {v8, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v11

    .line 1280
    .local v11, "rowIndexStart":I
    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v10

    .line 1281
    .local v10, "rowIndexEnd":I
    move v5, v11

    .local v5, "i":I
    :goto_5
    if-gt v5, v10, :cond_9

    .line 1282
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v19

    .line 1283
    .local v19, "view":Landroid/view/View;
    if-nez v19, :cond_6

    .line 1281
    :cond_2
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1268
    .end local v4    # "changed":Z
    .end local v5    # "i":I
    .end local v9    # "rowIndex":I
    .end local v10    # "rowIndexEnd":I
    .end local v11    # "rowIndexStart":I
    .end local v12    # "rowItemPairIndex":I
    .end local v13    # "rowItemsPairCount":I
    .end local v14    # "rowSize":I
    .end local v16    # "scrapChildHeight":I
    .end local v17    # "scrapChildWidth":I
    .end local v19    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows()[Landroid/support/v4/util/CircularIntArray;

    move-result-object v15

    .local v15, "rows":[Landroid/support/v4/util/CircularIntArray;
    goto :goto_0

    .line 1274
    .end local v15    # "rows":[Landroid/support/v4/util/CircularIntArray;
    .restart local v4    # "changed":Z
    .restart local v9    # "rowIndex":I
    .restart local v16    # "scrapChildHeight":I
    .restart local v17    # "scrapChildWidth":I
    :cond_4
    aget-object v8, v15, v9

    .local v8, "row":Landroid/support/v4/util/CircularIntArray;
    goto :goto_2

    .line 1275
    .end local v8    # "row":Landroid/support/v4/util/CircularIntArray;
    :cond_5
    invoke-virtual {v8}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v13

    .restart local v13    # "rowItemsPairCount":I
    goto :goto_3

    .line 1286
    .restart local v5    # "i":I
    .restart local v10    # "rowIndexEnd":I
    .restart local v11    # "rowIndexStart":I
    .restart local v12    # "rowItemPairIndex":I
    .restart local v14    # "rowSize":I
    .restart local v19    # "view":Landroid/view/View;
    :cond_6
    if-eqz p1, :cond_7

    .line 1287
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1289
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 1290
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v18

    .line 1292
    .local v18, "secondarySize":I
    :goto_7
    move/from16 v0, v18

    if-le v0, v14, :cond_2

    .line 1293
    move/from16 v14, v18

    goto :goto_6

    .line 1291
    .end local v18    # "secondarySize":I
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v18

    .restart local v18    # "secondarySize":I
    goto :goto_7

    .line 1278
    .end local v18    # "secondarySize":I
    .end local v19    # "view":Landroid/view/View;
    :cond_9
    add-int/lit8 v12, v12, 0x2

    goto :goto_4

    .line 1298
    .end local v5    # "i":I
    .end local v10    # "rowIndexEnd":I
    .end local v11    # "rowIndexStart":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    .line 1299
    .local v6, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFixedSize()Z

    move-result v20

    if-nez v20, :cond_c

    if-eqz p1, :cond_c

    if-gez v14, :cond_c

    if-lez v6, :cond_c

    .line 1300
    if-gez v17, :cond_b

    if-gez v16, :cond_b

    .line 1302
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 1303
    const/4 v7, 0x0

    .line 1310
    .local v7, "position":I
    :goto_8
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1311
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v22, v0

    .line 1309
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureScrapChild(III[I)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v17, v20, v21

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v16, v20, v21

    .line 1320
    .end local v7    # "position":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    if-nez v20, :cond_11

    move/from16 v14, v16

    .line 1322
    :cond_c
    :goto_9
    if-gez v14, :cond_d

    .line 1323
    const/4 v14, 0x0

    .line 1325
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    aget v20, v20, v9

    move/from16 v0, v20

    if-eq v0, v14, :cond_e

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    aput v14, v20, v9

    .line 1331
    const/4 v4, 0x1

    .line 1273
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1304
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v0, v6, :cond_10

    .line 1305
    add-int/lit8 v7, v6, -0x1

    .restart local v7    # "position":I
    goto :goto_8

    .line 1307
    .end local v7    # "position":I
    :cond_10
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .restart local v7    # "position":I
    goto :goto_8

    .line 1320
    .end local v7    # "position":I
    :cond_11
    move/from16 v14, v17

    goto :goto_9

    .line 1336
    .end local v6    # "itemCount":I
    .end local v12    # "rowItemPairIndex":I
    .end local v13    # "rowItemsPairCount":I
    .end local v14    # "rowSize":I
    :cond_12
    return v4
.end method

.method private removeInvisibleViewsAtEnd()V
    .locals 4

    .prologue
    .line 1755
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1756
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1757
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    .line 1756
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/Grid;->removeInvisibleItemsAtEnd(II)V

    .line 1759
    :cond_0
    return-void

    .line 1757
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private removeInvisibleViewsAtFront()V
    .locals 4

    .prologue
    .line 1762
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1763
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1764
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v3

    .line 1763
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/Grid;->removeInvisibleItemsAtFront(II)V

    .line 1766
    :cond_0
    return-void

    .line 1764
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    goto :goto_0
.end method

.method private saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v2, 0x0

    .line 1136
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-eqz v0, :cond_1

    .line 1137
    :cond_0
    const-string/jumbo v0, "GridLayoutManager"

    const-string/jumbo v1, "Recycler information was not released, bug!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 1140
    iput-object p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 1141
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 1142
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 1143
    return-void
.end method

.method private scrollDirectionPrimary(I)I
    .locals 8
    .param p1, "da"    # I

    .prologue
    const/4 v6, 0x0

    .line 2379
    const/4 v1, 0x0

    .local v1, "isMaxUnknown":Z
    const/4 v2, 0x0

    .line 2380
    .local v2, "isMinUnknown":Z
    const/4 v4, 0x0

    .local v4, "minScroll":I
    const/4 v3, 0x0

    .line 2381
    .local v3, "maxScroll":I
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-nez v7, :cond_0

    .line 2382
    if-lez p1, :cond_1

    .line 2383
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v1

    .line 2384
    .local v1, "isMaxUnknown":Z
    if-nez v1, :cond_0

    .line 2385
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMaxScroll()I

    move-result v3

    .line 2386
    if-le p1, v3, :cond_0

    .line 2387
    move p1, v3

    .line 2400
    .end local v1    # "isMaxUnknown":Z
    .end local v2    # "isMinUnknown":Z
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 2402
    return v6

    .line 2390
    .local v1, "isMaxUnknown":Z
    .restart local v2    # "isMinUnknown":Z
    :cond_1
    if-gez p1, :cond_0

    .line 2391
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v2

    .line 2392
    .local v2, "isMinUnknown":Z
    if-nez v2, :cond_0

    .line 2393
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMinScroll()I

    move-result v4

    .line 2394
    if-ge p1, v4, :cond_0

    .line 2395
    move p1, v4

    goto :goto_0

    .line 2404
    .end local v1    # "isMaxUnknown":Z
    .end local v2    # "isMinUnknown":Z
    :cond_2
    neg-int v7, p1

    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenPrimary(I)V

    .line 2405
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v7, :cond_3

    .line 2406
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2408
    return p1

    .line 2411
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2414
    .local v0, "childCount":I
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v7, :cond_8

    if-lez p1, :cond_9

    .line 2415
    :cond_4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2419
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v7

    if-le v7, v0, :cond_a

    const/4 v5, 0x1

    .line 2420
    .local v5, "updated":Z
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2423
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v7, :cond_b

    if-lez p1, :cond_c

    .line 2424
    :cond_5
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 2429
    :goto_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v7

    if-ge v7, v0, :cond_6

    const/4 v6, 0x1

    :cond_6
    or-int/2addr v5, v6

    .line 2430
    .local v5, "updated":Z
    if-eqz v5, :cond_7

    .line 2431
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    .line 2434
    :cond_7
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    .line 2435
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2437
    return p1

    .line 2414
    .end local v5    # "updated":Z
    :cond_8
    if-ltz p1, :cond_4

    .line 2417
    :cond_9
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    goto :goto_1

    .line 2419
    :cond_a
    const/4 v5, 0x0

    .local v5, "updated":Z
    goto :goto_2

    .line 2423
    :cond_b
    if-ltz p1, :cond_5

    .line 2426
    :cond_c
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    goto :goto_3
.end method

.method private scrollDirectionSecondary(I)I
    .locals 1
    .param p1, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 2442
    if-nez p1, :cond_0

    .line 2443
    return v0

    .line 2445
    :cond_0
    neg-int v0, p1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenSecondary(I)V

    .line 2446
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2447
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 2448
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    .line 2449
    return p1
.end method

.method private scrollGrid(IIZ)V
    .locals 3
    .param p1, "scrollPrimary"    # I
    .param p2, "scrollSecondary"    # I
    .param p3, "smooth"    # Z

    .prologue
    .line 2988
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v2, :cond_0

    .line 2989
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 2990
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    .line 3008
    :goto_0
    return-void

    .line 2994
    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_1

    .line 2995
    move v0, p1

    .line 2996
    .local v0, "scrollX":I
    move v1, p2

    .line 3001
    .local v1, "scrollY":I
    :goto_1
    if-eqz p3, :cond_2

    .line 3002
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(II)V

    goto :goto_0

    .line 2998
    .end local v0    # "scrollX":I
    .end local v1    # "scrollY":I
    :cond_1
    move v0, p2

    .line 2999
    .restart local v0    # "scrollX":I
    move v1, p1

    .restart local v1    # "scrollY":I
    goto :goto_1

    .line 3004
    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->scrollBy(II)V

    .line 3005
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    goto :goto_0
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "smooth"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2847
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v2, :cond_0

    .line 2848
    return-void

    .line 2850
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    .line 2851
    .local v0, "newFocusPosition":I
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 2852
    .local v1, "newSubFocusPosition":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v1, v2, :cond_3

    .line 2853
    :cond_1
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2854
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2855
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2856
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v2, :cond_2

    .line 2857
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 2859
    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabledInternal()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2860
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    .line 2863
    :cond_3
    if-nez p1, :cond_4

    .line 2864
    return-void

    .line 2866
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2869
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2871
    :cond_5
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-nez v2, :cond_6

    if-eqz p3, :cond_6

    .line 2872
    return-void

    .line 2874
    :cond_6
    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, p1, p2, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2875
    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v2, v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-direct {p0, v2, v3, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollGrid(IIZ)V

    .line 2877
    :cond_7
    return-void
.end method

.method private updateChildAlignments(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1718
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1719
    .local v0, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1721
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    .line 1722
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    .line 1732
    :goto_0
    return-void

    .line 1725
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->calculateItemAlignments(ILandroid/view/View;)V

    .line 1726
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_1

    .line 1727
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_0

    .line 1729
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    goto :goto_0
.end method

.method private updateRowSecondarySizeRefresh()V
    .locals 1

    .prologue
    .line 1343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    .line 1344
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    if-eqz v0, :cond_0

    .line 1346
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    .line 1348
    :cond_0
    return-void
.end method

.method private updateScrollController()V
    .locals 3

    .prologue
    .line 2565
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2566
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2567
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2568
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2569
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    .line 2575
    return-void
.end method

.method private updateSecondaryScrollLimits()V
    .locals 5

    .prologue
    .line 2543
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    .line 2544
    .local v2, "secondAxis":Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v1, v3, v4

    .line 2545
    .local v1, "minEdge":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v3

    add-int v0, v1, v3

    .line 2546
    .local v0, "maxEdge":I
    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    .line 2547
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1005
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method canScrollTo(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 3323
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1012
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 2456
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2457
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_1

    move v0, p1

    .line 2458
    .local v0, "da":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    .line 2468
    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2460
    return-void

    .line 2457
    .end local v0    # "da":I
    :cond_1
    move v0, p2

    .restart local v0    # "da":I
    goto :goto_0

    .line 2463
    :cond_2
    if-gez v0, :cond_3

    .line 2464
    :try_start_1
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v2

    .line 2466
    .local v1, "fromLimit":I
    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v1, v0, p4}, Landroid/support/v17/leanback/widget/Grid;->collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2468
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2470
    return-void

    .line 2465
    .end local v1    # "fromLimit":I
    :cond_3
    :try_start_2
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int v1, v2, v3

    .restart local v1    # "fromLimit":I
    goto :goto_1

    .line 2467
    .end local v0    # "da":I
    .end local v1    # "fromLimit":I
    :catchall_0
    move-exception v2

    .line 2468
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2467
    throw v2
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 6
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    const/4 v5, 0x0

    .line 2475
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v2, v3, Landroid/support/v17/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    .line 2476
    .local v2, "numToPrefetch":I
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    .line 2478
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    add-int/lit8 v4, v2, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 2479
    sub-int v4, p1, v2

    .line 2478
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2480
    .local v1, "initialPos":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    add-int v3, v1, v2

    if-ge v0, v3, :cond_0

    .line 2481
    invoke-interface {p2, v0, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 2480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2484
    .end local v0    # "i":I
    .end local v1    # "initialPos":I
    :cond_0
    return-void
.end method

.method dispatchChildSelected()V
    .locals 13

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 939
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 940
    return-void

    .line 944
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v7, :cond_3

    const/4 v2, 0x0

    .line 945
    :goto_0
    if-eqz v2, :cond_5

    .line 946
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v12

    .line 947
    .local v12, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 949
    if-nez v12, :cond_4

    move-wide v4, v8

    .line 948
    :goto_1
    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 951
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v0, v12, v1, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 969
    .end local v12    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 970
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v10

    .line 971
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v10, :cond_2

    .line 972
    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 973
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    .line 978
    .end local v10    # "childCount":I
    .end local v11    # "i":I
    :cond_2
    return-void

    .line 944
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    goto :goto_0

    .line 949
    .end local v2    # "view":Landroid/view/View;
    .restart local v12    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    goto :goto_1

    .line 953
    .end local v12    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_6

    .line 954
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-interface/range {v4 .. v9}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 956
    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v6, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    goto :goto_2

    .line 971
    .restart local v10    # "childCount":I
    .restart local v11    # "i":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method fillScrapViewsInPostLayout()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2029
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v3

    .line 2030
    .local v3, "scrapList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2031
    .local v4, "scrapSize":I
    if-nez v4, :cond_0

    .line 2032
    return-void

    .line 2035
    :cond_0
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    array-length v7, v7

    if-le v4, v7, :cond_4

    .line 2036
    :cond_1
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-nez v7, :cond_2

    const/16 v1, 0x10

    .line 2037
    .local v1, "length":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 2038
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2036
    .end local v1    # "length":I
    :cond_2
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    array-length v1, v7

    .restart local v1    # "length":I
    goto :goto_0

    .line 2040
    :cond_3
    new-array v7, v1, [I

    iput-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    .line 2042
    .end local v1    # "length":I
    :cond_4
    const/4 v5, 0x0

    .line 2043
    .local v5, "totalItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v6, v5

    .end local v5    # "totalItems":I
    .local v6, "totalItems":I
    :goto_1
    if-ge v0, v4, :cond_5

    .line 2044
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 2045
    .local v2, "pos":I
    if-ltz v2, :cond_7

    .line 2046
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "totalItems":I
    .restart local v5    # "totalItems":I
    aput v2, v7, v6

    .line 2043
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    .end local v5    # "totalItems":I
    .restart local v6    # "totalItems":I
    goto :goto_1

    .line 2050
    .end local v2    # "pos":I
    :cond_5
    if-lez v6, :cond_6

    .line 2051
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    invoke-static {v7, v8, v6}, Ljava/util/Arrays;->sort([III)V

    .line 2052
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    .line 2053
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    .line 2052
    invoke-virtual {v7, v8, v6, v9}, Landroid/support/v17/leanback/widget/Grid;->fillDisappearingItems([IILandroid/util/SparseIntArray;)V

    .line 2055
    :cond_6
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 2056
    return-void

    .restart local v2    # "pos":I
    :cond_7
    move v5, v6

    .end local v6    # "totalItems":I
    .restart local v5    # "totalItems":I
    goto :goto_2
.end method

.method fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .prologue
    .line 873
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 874
    return-void

    .line 876
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 877
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 876
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 880
    :cond_1
    return-void
.end method

.method fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .prologue
    .line 884
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 885
    return-void

    .line 887
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 888
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 887
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 891
    :cond_1
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1017
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1023
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1028
    instance-of v0, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 1029
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)V

    return-object v0

    .line 1030
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    .line 1031
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 1032
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 1033
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1035
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getChildDrawingOrder(Landroid/support/v7/widget/RecyclerView;II)I
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "childCount"    # I
    .param p3, "i"    # I

    .prologue
    .line 3428
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 3429
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 3430
    return p3

    .line 3432
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3435
    .local v0, "focusIndex":I
    if-ge p3, v0, :cond_1

    .line 3436
    return p3

    .line 3437
    :cond_1
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_2

    .line 3438
    add-int v2, v0, p2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p3

    return v2

    .line 3440
    :cond_2
    return v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 3577
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_0

    .line 3578
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    .line 3580
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1077
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    .line 1078
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    .line 1077
    sub-int v0, v1, v0

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1083
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1084
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1085
    .local v0, "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 1086
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 1087
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 1088
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 1089
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1061
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1237
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1238
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1232
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1233
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1071
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    .line 1072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 1071
    sub-int v0, v1, v0

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1066
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/lang/Class",
            "<+TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 1514
    .local p2, "facetClass":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    const/4 v0, 0x0

    .line 1515
    .local v0, "facet":Ljava/lang/Object;, "TE;"
    instance-of v2, p1, Landroid/support/v17/leanback/widget/FacetProvider;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 1516
    check-cast v2, Landroid/support/v17/leanback/widget/FacetProvider;

    invoke-interface {v2, p2}, Landroid/support/v17/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1518
    .end local v0    # "facet":Ljava/lang/Object;, "TE;"
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    if-eqz v2, :cond_1

    .line 1519
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/FacetProviderAdapter;->getFacetProvider(I)Landroid/support/v17/leanback/widget/FacetProvider;

    move-result-object v1

    .line 1520
    .local v1, "p":Landroid/support/v17/leanback/widget/FacetProvider;
    if-eqz v1, :cond_1

    .line 1521
    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1524
    .end local v1    # "p":Landroid/support/v17/leanback/widget/FacetProvider;
    :cond_1
    return-object v0
.end method

.method final getOpticalLeft(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1044
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method final getOpticalRight(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1048
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 3568
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_0

    .line 3569
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    .line 3571
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method getRowStartSecondary(I)I
    .locals 4
    .param p1, "rowIndex"    # I

    .prologue
    .line 1211
    const/4 v1, 0x0

    .line 1214
    .local v1, "start":I
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v2, :cond_0

    .line 1215
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 1216
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1215
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1219
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 1220
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1223
    :cond_1
    return v1
.end method

.method getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "deltas"    # [I

    .prologue
    .line 2880
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_0

    .line 2883
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    return v0

    .line 2886
    :pswitch_0
    invoke-direct {p0, p1, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getNoneAlignedPosition(Landroid/view/View;[I)Z

    move-result v0

    return v0

    .line 2880
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 2607
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    return v0
.end method

.method getSlideOutDistance()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1802
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1803
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v3

    neg-int v0, v3

    .line 1804
    .local v0, "distance":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1805
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1806
    .local v2, "top":I
    if-gez v2, :cond_0

    .line 1808
    add-int/2addr v0, v2

    .line 1832
    .end local v2    # "top":I
    :cond_0
    :goto_0
    return v0

    .line 1812
    .end local v0    # "distance":I
    :cond_1
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v3, :cond_2

    .line 1813
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v0

    .line 1814
    .restart local v0    # "distance":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1815
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1816
    .local v1, "start":I
    if-le v1, v0, :cond_0

    .line 1818
    move v0, v1

    goto :goto_0

    .line 1822
    .end local v0    # "distance":I
    .end local v1    # "start":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v3

    neg-int v0, v3

    .line 1823
    .restart local v0    # "distance":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1824
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1825
    .restart local v1    # "start":I
    if-gez v1, :cond_0

    .line 1827
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getSubPositionByView(Landroid/view/View;Landroid/view/View;)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 910
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 911
    :cond_0
    return v7

    .line 913
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 914
    .local v4, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    .line 915
    .local v1, "facet":Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    if-eqz v1, :cond_4

    .line 916
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v0

    .line 917
    .local v0, "defs":[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    .line 918
    :goto_0
    if-eq p2, p1, :cond_4

    .line 919
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    .line 920
    .local v3, "id":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 921
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 922
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentFocusViewId()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 923
    return v2

    .line 921
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 927
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .end local p2    # "childView":Landroid/view/View;
    check-cast p2, Landroid/view/View;

    .restart local p2    # "childView":Landroid/view/View;
    goto :goto_0

    .line 931
    .end local v0    # "defs":[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    .end local v3    # "id":I
    :cond_4
    return v7
.end method

.method getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GridLayoutManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/BaseGridView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    .line 820
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    return v0
.end method

.method protected getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1040
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewMax(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewMin(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1092
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewPrimarySize(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1100
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1101
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0
.end method

.method gridOnRequestFocusInDescendants(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3328
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_0

    .line 3331
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 3335
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsUnaligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 3328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method hasCreatedFirstItem()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3318
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    .line 3319
    .local v0, "count":I
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method hasCreatedLastItem()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3313
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    .line 3314
    .local v0, "count":I
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected hasDoneFirstLayout()Z
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasOnChildViewHolderSelectedListener()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 867
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 867
    :cond_0
    return v0
.end method

.method layoutChild(ILandroid/view/View;III)V
    .locals 12
    .param p1, "rowIndex"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "startSecondary"    # I

    .prologue
    .line 1673
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v8

    .line 1675
    .local v8, "sizeSecondary":I
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-lez v0, :cond_0

    .line 1676
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1678
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v9, v0, 0x70

    .line 1679
    .local v9, "verticalGravity":I
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v0, :cond_4

    .line 1680
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    const v1, 0x800007

    and-int/2addr v0, v1

    .line 1681
    const/4 v1, 0x1

    .line 1680
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    .line 1683
    .local v6, "horizontalGravity":I
    :goto_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_5

    const/16 v0, 0x30

    if-ne v9, v0, :cond_5

    .line 1694
    :cond_2
    :goto_2
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_b

    .line 1695
    move v2, p3

    .line 1696
    .local v2, "left":I
    move/from16 v3, p5

    .line 1697
    .local v3, "top":I
    move/from16 v4, p4

    .line 1698
    .local v4, "right":I
    add-int v5, p5, v8

    .line 1705
    .local v5, "bottom":I
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .local v7, "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    move-object v0, p0

    move-object v1, p2

    .line 1706
    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1710
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-super {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1711
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    sget-object v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    .line 1712
    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v4

    sget-object v11, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v5

    .line 1711
    invoke-virtual {v7, v0, v1, v10, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setOpticalInsets(IIII)V

    .line 1713
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    .line 1715
    return-void

    .line 1674
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    .end local v6    # "horizontalGravity":I
    .end local v7    # "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v8    # "sizeSecondary":I
    .end local v9    # "verticalGravity":I
    :cond_3
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v8

    .restart local v8    # "sizeSecondary":I
    goto :goto_0

    .line 1682
    .restart local v9    # "verticalGravity":I
    :cond_4
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v6, v0, 0x7

    .restart local v6    # "horizontalGravity":I
    goto :goto_1

    .line 1684
    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x3

    if-eq v6, v0, :cond_2

    .line 1686
    :cond_6
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_8

    const/16 v0, 0x50

    if-ne v9, v0, :cond_8

    .line 1688
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    sub-int/2addr v0, v8

    add-int p5, p5, v0

    .line 1687
    goto :goto_2

    :cond_8
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x5

    if-eq v6, v0, :cond_7

    .line 1689
    :cond_9
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_a

    const/16 v0, 0x10

    if-ne v9, v0, :cond_a

    .line 1691
    :goto_4
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    add-int p5, p5, v0

    goto :goto_2

    .line 1690
    :cond_a
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    goto :goto_4

    .line 1700
    :cond_b
    move v3, p3

    .line 1701
    .restart local v3    # "top":I
    move/from16 v2, p5

    .line 1702
    .restart local v2    # "left":I
    move/from16 v5, p4

    .line 1703
    .restart local v5    # "bottom":I
    add-int v4, p5, v8

    .restart local v4    # "right":I
    goto :goto_3
.end method

.method measureChild(Landroid/view/View;)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 1478
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1479
    .local v2, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    sget-object v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1480
    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    .line 1481
    .local v5, "widthUsed":I
    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int v1, v6, v7

    .line 1484
    .local v1, "heightUsed":I
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_0

    .line 1485
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1489
    .local v3, "secondarySpec":I
    :goto_0
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_1

    .line 1491
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    .line 1490
    invoke-static {v6, v5, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1492
    .local v4, "widthSpec":I
    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v1, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1498
    .local v0, "heightSpec":I
    :goto_1
    invoke-virtual {p1, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1508
    return-void

    .line 1486
    .end local v0    # "heightSpec":I
    .end local v3    # "secondarySpec":I
    .end local v4    # "widthSpec":I
    :cond_0
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "secondarySpec":I
    goto :goto_0

    .line 1495
    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    .line 1494
    invoke-static {v6, v1, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1496
    .restart local v0    # "heightSpec":I
    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .restart local v4    # "widthSpec":I
    goto :goto_1
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 3448
    if-eqz p1, :cond_0

    .line 3449
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    .line 3450
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3451
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3452
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 3454
    :cond_0
    instance-of v0, p2, Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 3455
    check-cast v0, Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    .line 3459
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 3460
    return-void

    .line 3457
    :cond_1
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    goto :goto_0
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 24
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 3172
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3173
    const/16 v22, 0x1

    return v22

    .line 3182
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_17

    .line 3183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 3185
    const/16 v22, 0x1

    return v22

    .line 3187
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v18

    .line 3188
    .local v18, "movement":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->findFocus()Landroid/view/View;

    move-result-object v7

    .line 3189
    .local v7, "focused":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findImmediateChildIndex(Landroid/view/View;)I

    move-result v8

    .line 3190
    .local v8, "focusedIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v9

    .line 3193
    .local v9, "focusedPos":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_4

    const/4 v12, 0x0

    .line 3196
    :goto_0
    if-eqz v12, :cond_2

    .line 3197
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3199
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v22

    if-nez v22, :cond_5

    .line 3201
    :cond_3
    const/16 v22, 0x1

    return v22

    .line 3194
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    .local v12, "immediateFocusedChild":Landroid/view/View;
    goto :goto_0

    .line 3203
    .end local v12    # "immediateFocusedChild":Landroid/view/View;
    :cond_5
    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_7

    .line 3205
    const/16 v22, 0x1

    return v22

    .line 3208
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    if-eqz v12, :cond_b

    .line 3209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v22

    move-object/from16 v0, v22

    iget v10, v0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    .line 3210
    .local v10, "focusedRow":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3211
    .local v6, "focusableCount":I
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    :cond_8
    const/4 v13, 0x1

    .line 3212
    .local v13, "inc":I
    :goto_2
    if-lez v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v22

    add-int/lit8 v16, v22, -0x1

    .line 3214
    .local v16, "loop_end":I
    :goto_3
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_f

    .line 3215
    if-lez v13, :cond_e

    const/16 v17, 0x0

    .line 3219
    .local v17, "loop_start":I
    :goto_4
    move/from16 v11, v17

    .local v11, "i":I
    :goto_5
    if-lez v13, :cond_10

    move/from16 v0, v16

    if-gt v11, v0, :cond_11

    .line 3220
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3221
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_12

    .line 3219
    :cond_a
    :goto_6
    add-int/2addr v11, v13

    goto :goto_5

    .line 3209
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "focusableCount":I
    .end local v10    # "focusedRow":I
    .end local v11    # "i":I
    .end local v13    # "inc":I
    .end local v16    # "loop_end":I
    .end local v17    # "loop_start":I
    :cond_b
    const/4 v10, -0x1

    .restart local v10    # "focusedRow":I
    goto :goto_1

    .line 3211
    .restart local v6    # "focusableCount":I
    :cond_c
    const/4 v13, -0x1

    .restart local v13    # "inc":I
    goto :goto_2

    .line 3212
    :cond_d
    const/16 v16, 0x0

    .restart local v16    # "loop_end":I
    goto :goto_3

    .line 3215
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v22

    add-int/lit8 v17, v22, -0x1

    .restart local v17    # "loop_start":I
    goto :goto_4

    .line 3217
    .end local v17    # "loop_start":I
    :cond_f
    add-int v17, v8, v13

    .restart local v17    # "loop_start":I
    goto :goto_4

    .line 3219
    .restart local v11    # "i":I
    :cond_10
    move/from16 v0, v16

    if-ge v11, v0, :cond_9

    .line 3309
    .end local v7    # "focused":Landroid/view/View;
    .end local v8    # "focusedIndex":I
    .end local v9    # "focusedPos":I
    .end local v10    # "focusedRow":I
    .end local v11    # "i":I
    .end local v13    # "inc":I
    .end local v16    # "loop_end":I
    .end local v17    # "loop_start":I
    .end local v18    # "movement":I
    :cond_11
    :goto_7
    const/16 v22, 0x1

    return v22

    .line 3226
    .restart local v4    # "child":Landroid/view/View;
    .restart local v7    # "focused":Landroid/view/View;
    .restart local v8    # "focusedIndex":I
    .restart local v9    # "focusedPos":I
    .restart local v10    # "focusedRow":I
    .restart local v11    # "i":I
    .restart local v13    # "inc":I
    .restart local v16    # "loop_end":I
    .restart local v17    # "loop_start":I
    .restart local v18    # "movement":I
    :cond_12
    if-nez v12, :cond_13

    .line 3227
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3228
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v6, :cond_a

    goto :goto_7

    .line 3233
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v19

    .line 3234
    .local v19, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v15

    .line 3235
    .local v15, "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    if-eqz v15, :cond_a

    .line 3238
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 3240
    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_a

    move/from16 v0, v19

    if-le v0, v9, :cond_a

    .line 3241
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3242
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v6, :cond_a

    goto :goto_7

    .line 3246
    :cond_14
    if-nez v18, :cond_15

    .line 3248
    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_a

    move/from16 v0, v19

    if-ge v0, v9, :cond_a

    .line 3249
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3250
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v6, :cond_a

    goto :goto_7

    .line 3254
    :cond_15
    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 3256
    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v10, :cond_a

    .line 3258
    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v0, v10, :cond_11

    .line 3261
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto/16 :goto_6

    .line 3262
    :cond_16
    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 3264
    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v10, :cond_a

    .line 3266
    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v0, v10, :cond_11

    .line 3269
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto/16 :goto_6

    .line 3273
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "focusableCount":I
    .end local v7    # "focused":Landroid/view/View;
    .end local v8    # "focusedIndex":I
    .end local v9    # "focusedPos":I
    .end local v10    # "focusedRow":I
    .end local v11    # "i":I
    .end local v13    # "inc":I
    .end local v15    # "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    .end local v16    # "loop_end":I
    .end local v17    # "loop_start":I
    .end local v18    # "movement":I
    .end local v19    # "position":I
    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3274
    .restart local v6    # "focusableCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 3276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v14

    .line 3277
    .local v14, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v22

    add-int v20, v22, v14

    .line 3278
    .local v20, "right":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    .local v5, "count":I
    :goto_8
    if-ge v11, v5, :cond_19

    .line 3279
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3280
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_18

    .line 3281
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v14, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_18

    .line 3282
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3278
    :cond_18
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 3287
    .end local v4    # "child":Landroid/view/View;
    :cond_19
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v6, :cond_1c

    .line 3288
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    :goto_9
    if-ge v11, v5, :cond_1c

    .line 3289
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3290
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_1a

    .line 3291
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3288
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 3296
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "count":I
    .end local v11    # "i":I
    .end local v14    # "left":I
    .end local v20    # "right":I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v21

    .line 3297
    .local v21, "view":Landroid/view/View;
    if-eqz v21, :cond_1c

    .line 3298
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3302
    .end local v21    # "view":Landroid/view/View;
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-eq v0, v6, :cond_1d

    .line 3303
    const/16 v22, 0x1

    return v22

    .line 3305
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->isFocusable()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 3306
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7
.end method

.method onChildRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3545
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 3546
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3547
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveOffscreenView(Landroid/view/View;I)V

    .line 3549
    :cond_0
    return-void
.end method

.method onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3053
    if-eqz p1, :cond_0

    .line 3055
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3056
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 3057
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 3066
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 3060
    .restart local v0    # "i":I
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3061
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 3055
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v2, 0x1

    .line 3684
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3685
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3686
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3687
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3689
    :cond_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3690
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3691
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3695
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 3696
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    .line 3697
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    .line 3698
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    .line 3694
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 3699
    .local v0, "collectionInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 3700
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 3701
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 3586
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 3587
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_0

    instance-of v1, v9, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3588
    :cond_0
    return-void

    :cond_1
    move-object v8, v9

    .line 3590
    check-cast v8, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 3591
    .local v8, "glp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v10

    .line 3592
    .local v10, "position":I
    if-ltz v10, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1, v10}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v0

    .line 3593
    .local v0, "rowIndex":I
    :goto_0
    if-gez v0, :cond_3

    .line 3594
    return-void

    .line 3592
    .end local v0    # "rowIndex":I
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "rowIndex":I
    goto :goto_0

    .line 3596
    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v1

    div-int v2, v10, v1

    .line 3597
    .local v2, "guessSpanIndex":I
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_4

    .line 3599
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3598
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 3604
    :goto_1
    return-void

    .line 3602
    :cond_4
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v0

    .line 3601
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3078
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    if-eqz v6, :cond_0

    .line 3079
    return-object p1

    .line 3082
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    .line 3083
    .local v1, "ff":Landroid/view/FocusFinder;
    const/4 v4, 0x0

    .line 3084
    .local v4, "result":Landroid/view/View;
    if-eq p2, v10, :cond_1

    if-ne p2, v7, :cond_8

    .line 3087
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3089
    if-ne p2, v10, :cond_4

    const/16 v0, 0x82

    .line 3090
    .local v0, "absDir":I
    :goto_0
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 3092
    .end local v0    # "absDir":I
    .end local v4    # "result":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollHorizontally()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3093
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getLayoutDirection()I

    move-result v6

    if-ne v6, v7, :cond_5

    const/4 v5, 0x1

    .line 3094
    .local v5, "rtl":Z
    :goto_1
    if-ne p2, v10, :cond_6

    move v6, v7

    :goto_2
    xor-int/2addr v6, v5

    if-eqz v6, :cond_7

    .line 3095
    const/16 v0, 0x42

    .line 3096
    .restart local v0    # "absDir":I
    :goto_3
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 3101
    .end local v0    # "absDir":I
    .end local v5    # "rtl":Z
    :cond_3
    :goto_4
    if-eqz v4, :cond_9

    .line 3102
    return-object v4

    .line 3089
    .restart local v4    # "result":Landroid/view/View;
    :cond_4
    const/16 v0, 0x21

    .restart local v0    # "absDir":I
    goto :goto_0

    .line 3093
    .end local v0    # "absDir":I
    .end local v4    # "result":Landroid/view/View;
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "rtl":Z
    goto :goto_1

    :cond_6
    move v6, v8

    .line 3094
    goto :goto_2

    .line 3095
    :cond_7
    const/16 v0, 0x11

    .restart local v0    # "absDir":I
    goto :goto_3

    .line 3099
    .end local v0    # "absDir":I
    .end local v5    # "rtl":Z
    .restart local v4    # "result":Landroid/view/View;
    :cond_8
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .local v4, "result":Landroid/view/View;
    goto :goto_4

    .line 3105
    .end local v4    # "result":Landroid/view/View;
    :cond_9
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getDescendantFocusability()I

    move-result v6

    const/high16 v9, 0x60000

    if-ne v6, v9, :cond_a

    .line 3106
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    return-object v6

    .line 3110
    :cond_a
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v3

    .line 3111
    .local v3, "movement":I
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getScrollState()I

    move-result v6

    if-eqz v6, :cond_e

    const/4 v2, 0x1

    .line 3112
    .local v2, "isScroll":Z
    :goto_5
    if-ne v3, v7, :cond_f

    .line 3113
    if-nez v2, :cond_b

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutEnd:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_c

    .line 3114
    :cond_b
    move-object v4, p1

    .line 3116
    :cond_c
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    .line 3117
    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3118
    move-object v4, p1

    .line 3137
    :cond_d
    :goto_6
    if-eqz v4, :cond_16

    .line 3138
    return-object v4

    .line 3111
    .end local v2    # "isScroll":Z
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "isScroll":Z
    goto :goto_5

    .line 3120
    :cond_f
    if-nez v3, :cond_12

    .line 3121
    if-nez v2, :cond_10

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutFront:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_11

    .line 3122
    :cond_10
    move-object v4, p1

    .line 3124
    :cond_11
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    .line 3125
    invoke-direct {p0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3126
    move-object v4, p1

    .restart local v4    # "result":Landroid/view/View;
    goto :goto_6

    .line 3128
    .end local v4    # "result":Landroid/view/View;
    :cond_12
    const/4 v6, 0x3

    if-ne v3, v6, :cond_14

    .line 3129
    if-nez v2, :cond_13

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    .line 3130
    :cond_13
    move-object v4, p1

    .restart local v4    # "result":Landroid/view/View;
    goto :goto_6

    .line 3132
    .end local v4    # "result":Landroid/view/View;
    :cond_14
    if-ne v3, v10, :cond_d

    .line 3133
    if-nez v2, :cond_15

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    .line 3134
    :cond_15
    move-object v4, p1

    .restart local v4    # "result":Landroid/view/View;
    goto :goto_6

    .line 3142
    .end local v4    # "result":Landroid/view/View;
    :cond_16
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 3143
    .restart local v4    # "result":Landroid/view/View;
    if-eqz v4, :cond_17

    .line 3144
    return-object v4

    .line 3146
    :cond_17
    if-eqz p1, :cond_18

    .end local p1    # "focused":Landroid/view/View;
    :goto_7
    return-object p1

    .restart local p1    # "focused":Landroid/view/View;
    :cond_18
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    goto :goto_7
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 2711
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2712
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 2713
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    .line 2714
    .local v0, "pos":I
    if-gt p2, v0, :cond_0

    .line 2715
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2718
    .end local v0    # "pos":I
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2719
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 2724
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2725
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2726
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "fromPosition"    # I
    .param p3, "toPosition"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 2752
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 2753
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    .line 2754
    .local v0, "pos":I
    if-gt p2, v0, :cond_1

    add-int v1, p2, p4

    if-ge v0, v1, :cond_1

    .line 2756
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2765
    .end local v0    # "pos":I
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2766
    return-void

    .line 2757
    .restart local v0    # "pos":I
    :cond_1
    if-ge p2, v0, :cond_2

    sub-int v1, v0, p4

    if-le p3, v1, :cond_2

    .line 2759
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    .line 2760
    :cond_2
    if-le p2, v0, :cond_0

    if-ge p3, v0, :cond_0

    .line 2762
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 2732
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2733
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 2734
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    .line 2735
    .local v0, "pos":I
    if-gt p2, v0, :cond_0

    .line 2736
    add-int v1, p2, p3

    if-le v1, v0, :cond_1

    .line 2738
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int v2, p2, v0

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2744
    .end local v0    # "pos":I
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2745
    return-void

    .line 2740
    .restart local v0    # "pos":I
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p3

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 2772
    move v1, p2

    .local v1, "i":I
    add-int v0, p2, p3

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2773
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->remove(I)V

    .line 2772
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2775
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 41
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 2069
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    move/from16 v39, v0

    if-nez v39, :cond_0

    .line 2071
    return-void

    .line 2073
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    .line 2074
    .local v9, "itemCount":I
    if-gez v9, :cond_1

    .line 2075
    return-void

    .line 2078
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2

    .line 2081
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v39

    if-lez v39, :cond_2

    .line 2082
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEatenInSliding:Z

    .line 2083
    return-void

    .line 2086
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    move/from16 v39, v0

    if-nez v39, :cond_3

    .line 2087
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    .line 2088
    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2089
    return-void

    .line 2091
    :cond_3
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    .line 2093
    invoke-direct/range {p0 .. p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2094
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v39

    if-eqz v39, :cond_c

    .line 2095
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    .line 2096
    .local v4, "childCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    if-eqz v39, :cond_b

    if-lez v4, :cond_b

    .line 2097
    const v14, 0x7fffffff

    .line 2098
    .local v14, "minChangedEdge":I
    const/high16 v12, -0x80000000

    .line 2099
    .local v12, "maxChangeEdge":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    .line 2100
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    .line 2099
    invoke-virtual/range {v39 .. v40}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v15

    .line 2101
    .local v15, "minOldAdapterPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    .line 2102
    add-int/lit8 v40, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    .line 2101
    invoke-virtual/range {v39 .. v40}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v13

    .line 2103
    .local v13, "maxOldAdapterPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_9

    .line 2104
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 2105
    .local v38, "view":Landroid/view/View;
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2106
    .local v11, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    if-nez v8, :cond_4

    .line 2109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v39

    .line 2110
    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v40

    .line 2109
    sub-int v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 2112
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v16

    .line 2118
    .local v16, "newAdapterPosition":I
    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v39

    if-nez v39, :cond_5

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v39

    if-nez v39, :cond_5

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->isLayoutRequested()Z

    move-result v39

    if-nez v39, :cond_5

    .line 2119
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->hasFocus()Z

    move-result v39

    if-nez v39, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_7

    .line 2123
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v39

    move/from16 v0, v39

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2124
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v39

    move/from16 v0, v39

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2103
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2120
    :cond_7
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->hasFocus()Z

    move-result v39

    if-eqz v39, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_5

    .line 2121
    :cond_8
    move/from16 v0, v16

    if-lt v0, v15, :cond_5

    .line 2122
    move/from16 v0, v16

    if-le v0, v13, :cond_6

    goto :goto_1

    .line 2127
    .end local v11    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v16    # "newAdapterPosition":I
    .end local v38    # "view":Landroid/view/View;
    :cond_9
    if-le v12, v14, :cond_a

    .line 2128
    sub-int v39, v12, v14

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 2131
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2132
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2134
    .end local v8    # "i":I
    .end local v12    # "maxChangeEdge":I
    .end local v13    # "maxOldAdapterPosition":I
    .end local v14    # "minChangedEdge":I
    .end local v15    # "minOldAdapterPosition":I
    :cond_b
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    .line 2135
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2137
    return-void

    .line 2141
    .end local v4    # "childCount":I
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v39

    if-eqz v39, :cond_d

    .line 2142
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updatePositionToRowMapInPostLayout()V

    .line 2145
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v39

    if-nez v39, :cond_18

    .line 2146
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    move/from16 v39, v0

    if-nez v39, :cond_17

    const/16 v33, 0x1

    .line 2147
    .local v33, "scrollToFocus":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    const/16 v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    move/from16 v39, v0

    const/high16 v40, -0x80000000

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_e

    .line 2148
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2149
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2151
    :cond_e
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2153
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v29

    .line 2154
    .local v29, "savedFocusView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v28, v0

    .line 2155
    .local v28, "savedFocusPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    move/from16 v30, v0

    .line 2156
    .local v30, "savedSubFocusPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v7

    .line 2157
    .local v7, "hadFocus":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    if-eqz v39, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v6

    .line 2158
    .local v6, "firstVisibleIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    if-eqz v39, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v10

    .line 2159
    .local v10, "lastVisibleIndex":I
    :goto_4
    if-nez v29, :cond_1b

    const/16 v31, 0x0

    .line 2160
    .local v31, "savedViewCenter":I
    :goto_5
    if-nez v29, :cond_1c

    const/16 v32, 0x0

    .line 2163
    .local v32, "savedViewCenterSecondary":I
    :goto_6
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutInit()Z

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-eqz v39, :cond_1d

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    .line 2166
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fastRelayout()V

    .line 2192
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v23

    .line 2194
    .local v23, "oldFirstVisible":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v24

    .line 2195
    .local v24, "oldLastVisible":I
    if-eqz v33, :cond_21

    if-eqz v29, :cond_21

    .line 2197
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->focusToViewInLayout(ZZ)V

    .line 2198
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v21

    .line 2199
    .local v21, "newViewCenter":I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v22

    .line 2200
    .local v22, "newViewCenterSecondary":I
    sub-int v39, v21, v31

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 2201
    sub-int v39, v22, v32

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    .line 2206
    .end local v21    # "newViewCenter":I
    .end local v22    # "newViewCenterSecondary":I
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2207
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2208
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2209
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 2210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 2213
    if-eqz v33, :cond_12

    .line 2215
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v18

    .line 2216
    .local v18, "newFocusView":Landroid/view/View;
    if-eqz v18, :cond_22

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasFocus()Z

    move-result v39

    if-eqz v39, :cond_22

    .line 2217
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v17

    .line 2218
    :goto_8
    if-eqz v18, :cond_12

    .line 2221
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v19

    .line 2222
    .local v19, "newFocusViewCenter":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v20

    .line 2224
    .local v20, "newFocusViewCenterSecondary":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v23

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v24

    .line 2227
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    .line 2228
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2229
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2230
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2231
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 2233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 2234
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v39

    sub-int v25, v19, v39

    .line 2235
    .local v25, "primary":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v39

    sub-int v36, v20, v39

    .line 2237
    .local v36, "secondary":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v39, v0

    if-nez v39, :cond_23

    .line 2238
    move/from16 v34, v25

    .line 2239
    .local v34, "scrollX":I
    move/from16 v35, v36

    .line 2244
    .local v35, "scrollY":I
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getRemainingScrollHorizontal()I

    move-result v26

    .line 2245
    .local v26, "remainingScrollX":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result v27

    .line 2247
    .local v27, "remainingScrollY":I
    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    move/from16 v0, v27

    move/from16 v1, v35

    if-eq v0, v1, :cond_27

    .line 2248
    :cond_11
    if-nez v26, :cond_24

    if-nez v27, :cond_24

    .line 2267
    .end local v18    # "newFocusView":Landroid/view/View;
    .end local v19    # "newFocusViewCenter":I
    .end local v20    # "newFocusViewCenterSecondary":I
    .end local v25    # "primary":I
    .end local v26    # "remainingScrollX":I
    .end local v27    # "remainingScrollY":I
    .end local v34    # "scrollX":I
    .end local v35    # "scrollY":I
    .end local v36    # "secondary":I
    :cond_12
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v39

    if-eqz v39, :cond_13

    .line 2268
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fillScrapViewsInPostLayout()V

    .line 2278
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    move/from16 v39, v0

    if-eqz v39, :cond_28

    .line 2279
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    .line 2285
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v30

    if-eq v0, v1, :cond_29

    .line 2287
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 2293
    :cond_15
    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    .line 2294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    move/from16 v39, v0

    if-eqz v39, :cond_16

    .line 2295
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 2298
    :cond_16
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    .line 2299
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2301
    return-void

    .line 2146
    .end local v6    # "firstVisibleIndex":I
    .end local v7    # "hadFocus":Z
    .end local v10    # "lastVisibleIndex":I
    .end local v23    # "oldFirstVisible":I
    .end local v24    # "oldLastVisible":I
    .end local v28    # "savedFocusPos":I
    .end local v29    # "savedFocusView":Landroid/view/View;
    .end local v30    # "savedSubFocusPos":I
    .end local v31    # "savedViewCenter":I
    .end local v32    # "savedViewCenterSecondary":I
    .end local v33    # "scrollToFocus":Z
    :cond_17
    const/16 v33, 0x0

    .restart local v33    # "scrollToFocus":Z
    goto/16 :goto_2

    .line 2145
    .end local v33    # "scrollToFocus":Z
    :cond_18
    const/16 v33, 0x0

    .restart local v33    # "scrollToFocus":Z
    goto/16 :goto_2

    .line 2157
    .restart local v7    # "hadFocus":Z
    .restart local v28    # "savedFocusPos":I
    .restart local v29    # "savedFocusView":Landroid/view/View;
    .restart local v30    # "savedSubFocusPos":I
    :cond_19
    const/4 v6, -0x1

    .restart local v6    # "firstVisibleIndex":I
    goto/16 :goto_3

    .line 2158
    :cond_1a
    const/4 v10, -0x1

    .restart local v10    # "lastVisibleIndex":I
    goto/16 :goto_4

    .line 2159
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v31

    .restart local v31    # "savedViewCenter":I
    goto/16 :goto_5

    .line 2161
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v32

    .restart local v32    # "savedViewCenterSecondary":I
    goto/16 :goto_6

    .line 2169
    :cond_1d
    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    .line 2171
    if-eqz v33, :cond_20

    if-ltz v6, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-le v0, v10, :cond_1f

    .line 2173
    :cond_1e
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .local v5, "endPos":I
    move/from16 v37, v5

    .line 2179
    .local v37, "startFromPosition":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    .line 2180
    const/16 v39, -0x1

    move/from16 v0, v39

    if-eq v5, v0, :cond_f

    .line 2181
    :goto_e
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v39

    if-eqz v39, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v39

    if-nez v39, :cond_f

    goto :goto_e

    .line 2172
    .end local v5    # "endPos":I
    .end local v37    # "startFromPosition":I
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-lt v0, v6, :cond_1e

    .line 2175
    :cond_20
    move/from16 v37, v6

    .line 2176
    .restart local v37    # "startFromPosition":I
    move v5, v10

    .restart local v5    # "endPos":I
    goto :goto_d

    .line 2204
    .end local v5    # "endPos":I
    .end local v37    # "startFromPosition":I
    .restart local v23    # "oldFirstVisible":I
    .restart local v24    # "oldLastVisible":I
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->focusToViewInLayout(ZZ)V

    goto/16 :goto_7

    .line 2217
    .restart local v18    # "newFocusView":Landroid/view/View;
    :cond_22
    const/16 v17, 0x0

    .local v17, "newChildFocusView":Landroid/view/View;
    goto/16 :goto_8

    .line 2241
    .end local v17    # "newChildFocusView":Landroid/view/View;
    .restart local v19    # "newFocusViewCenter":I
    .restart local v20    # "newFocusViewCenterSecondary":I
    .restart local v25    # "primary":I
    .restart local v36    # "secondary":I
    :cond_23
    move/from16 v35, v25

    .line 2242
    .restart local v35    # "scrollY":I
    move/from16 v34, v36

    .restart local v34    # "scrollX":I
    goto/16 :goto_9

    .line 2254
    .restart local v26    # "remainingScrollX":I
    .restart local v27    # "remainingScrollY":I
    :cond_24
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollAndAppendPrepend(II)V

    .line 2255
    if-nez v34, :cond_25

    if-eqz v35, :cond_26

    .line 2256
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(II)V

    goto/16 :goto_a

    .line 2258
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    goto/16 :goto_a

    .line 2263
    :cond_27
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollAndAppendPrepend(II)V

    goto/16 :goto_a

    .line 2281
    .end local v18    # "newFocusView":Landroid/view/View;
    .end local v19    # "newFocusViewCenter":I
    .end local v20    # "newFocusViewCenterSecondary":I
    .end local v25    # "primary":I
    .end local v26    # "remainingScrollX":I
    .end local v27    # "remainingScrollY":I
    .end local v34    # "scrollX":I
    .end local v35    # "scrollY":I
    .end local v36    # "secondary":I
    :cond_28
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    goto/16 :goto_b

    .line 2286
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 2288
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    move/from16 v39, v0

    if-nez v39, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    move/from16 v39, v0

    if-eqz v39, :cond_15

    .line 2291
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto/16 :goto_c
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 2003
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2006
    :cond_0
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 10
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1373
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1377
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_2

    .line 1378
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1379
    .local v4, "sizePrimary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1380
    .local v5, "sizeSecondary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1381
    .local v2, "modeSecondary":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v8

    add-int v3, v6, v8

    .line 1395
    .local v3, "paddingSecondary":I
    :goto_0
    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .line 1397
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_5

    .line 1398
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_3

    move v6, v7

    :goto_1
    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1399
    iput v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1401
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    array-length v6, v6

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-eq v6, v8, :cond_1

    .line 1402
    :cond_0
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    .line 1406
    :cond_1
    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    .line 1408
    sparse-switch v2, :sswitch_data_0

    .line 1420
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "wrong spec"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1383
    .end local v2    # "modeSecondary":I
    .end local v3    # "paddingSecondary":I
    .end local v4    # "sizePrimary":I
    .end local v5    # "sizeSecondary":I
    :cond_2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1384
    .restart local v5    # "sizeSecondary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1385
    .restart local v4    # "sizePrimary":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1386
    .restart local v2    # "modeSecondary":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v8

    add-int v3, v6, v8

    .restart local v3    # "paddingSecondary":I
    goto :goto_0

    .line 1398
    :cond_3
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    goto :goto_1

    .line 1410
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v6

    add-int v1, v6, v3

    .line 1462
    .local v1, "measuredSizeSecondary":I
    :cond_4
    :goto_2
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_b

    .line 1463
    invoke-virtual {p0, v4, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 1473
    :goto_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 1474
    return-void

    .line 1413
    .end local v1    # "measuredSizeSecondary":I
    :sswitch_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v6

    add-int/2addr v6, v3

    .line 1414
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .line 1413
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "measuredSizeSecondary":I
    goto :goto_2

    .line 1417
    .end local v1    # "measuredSizeSecondary":I
    :sswitch_2
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .restart local v1    # "measuredSizeSecondary":I
    goto :goto_2

    .line 1424
    .end local v1    # "measuredSizeSecondary":I
    :cond_5
    sparse-switch v2, :sswitch_data_1

    .line 1459
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "wrong spec"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1426
    :sswitch_3
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_6

    .line 1427
    sub-int v6, v5, v3

    .line 1426
    :goto_4
    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1428
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_7

    :goto_5
    iput v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1429
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 1430
    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    .line 1429
    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int v1, v6, v3

    .line 1431
    .restart local v1    # "measuredSizeSecondary":I
    goto :goto_2

    .line 1427
    .end local v1    # "measuredSizeSecondary":I
    :cond_6
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    goto :goto_4

    .line 1428
    :cond_7
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    goto :goto_5

    .line 1434
    :sswitch_4
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_8

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_8

    .line 1435
    iput v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1436
    sub-int v6, v5, v3

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1449
    :goto_6
    move v1, v5

    .line 1450
    .restart local v1    # "measuredSizeSecondary":I
    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_4

    .line 1451
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 1452
    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    .line 1451
    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int v0, v6, v3

    .line 1453
    .local v0, "childrenSize":I
    if-ge v0, v1, :cond_4

    .line 1454
    move v1, v0

    goto :goto_2

    .line 1437
    .end local v0    # "childrenSize":I
    .end local v1    # "measuredSizeSecondary":I
    :cond_8
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_9

    .line 1438
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1439
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v6, v5

    .line 1440
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v7, v8

    .line 1439
    div-int/2addr v6, v7

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_6

    .line 1441
    :cond_9
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_a

    .line 1442
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1443
    sub-int v6, v5, v3

    .line 1444
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    .line 1443
    sub-int/2addr v6, v7

    .line 1444
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1443
    div-int/2addr v6, v7

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_6

    .line 1446
    :cond_a
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1447
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_6

    .line 1465
    .restart local v1    # "measuredSizeSecondary":I
    :cond_b
    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    goto/16 :goto_3

    .line 1408
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 1424
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 2779
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    if-eqz v0, :cond_0

    .line 2780
    return v2

    .line 2782
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2784
    return v2

    .line 2786
    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2787
    invoke-direct {p0, p2, p3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    .line 2789
    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 3553
    instance-of v1, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    if-nez v1, :cond_0

    .line 3554
    return-void

    :cond_0
    move-object v0, p1

    .line 3556
    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    .line 3557
    .local v0, "loadingState":Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    iget v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3558
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3559
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadFromBundle(Landroid/os/Bundle;)V

    .line 3560
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    .line 3561
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 3563
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 688
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_1

    .line 689
    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    .line 690
    .local v0, "reversePrimary":Z
    :goto_0
    const/4 v1, 0x0

    .line 695
    .local v1, "reverseSecondary":Z
    :goto_1
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-ne v4, v0, :cond_3

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-ne v4, v1, :cond_3

    .line 696
    return-void

    .line 689
    .end local v0    # "reversePrimary":Z
    .end local v1    # "reverseSecondary":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "reversePrimary":Z
    goto :goto_0

    .line 692
    .end local v0    # "reversePrimary":Z
    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .line 693
    .restart local v1    # "reverseSecondary":Z
    :goto_2
    const/4 v0, 0x0

    .restart local v0    # "reversePrimary":Z
    goto :goto_1

    .line 692
    .end local v0    # "reversePrimary":Z
    .end local v1    # "reverseSecondary":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "reverseSecondary":Z
    goto :goto_2

    .line 698
    .restart local v0    # "reversePrimary":Z
    :cond_3
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    .line 699
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    .line 700
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    .line 701
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    if-ne p1, v2, :cond_4

    :goto_3
    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setReversedFlow(Z)V

    .line 702
    return-void

    :cond_4
    move v2, v3

    .line 701
    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 3527
    new-instance v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;-><init>()V

    .line 3529
    .local v4, "ss":Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v6

    iput v6, v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    .line 3531
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveAsBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 3533
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3534
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3535
    .local v5, "view":Landroid/view/View;
    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v3

    .line 3536
    .local v3, "position":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 3537
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6, v0, v5, v3}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;

    move-result-object v0

    .line 3533
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3540
    .end local v3    # "position":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    iput-object v0, v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    .line 3541
    return-object v4
.end method

.method public performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 3613
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3614
    sparse-switch p3, :sswitch_data_0

    .line 3623
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 3624
    const/4 v0, 0x1

    return v0

    .line 3617
    :sswitch_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_0

    .line 3620
    :sswitch_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_0

    .line 3614
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method processSelectionMoves(ZI)I
    .locals 13
    .param p1, "preventScroll"    # Z
    .param p2, "moves"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 3633
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-nez v9, :cond_0

    .line 3634
    return p2

    .line 3636
    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3637
    .local v2, "focusPosition":I
    if-eq v2, v11, :cond_2

    .line 3638
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9, v2}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v3

    .line 3639
    .local v3, "focusedRow":I
    :goto_0
    const/4 v6, 0x0

    .line 3640
    .local v6, "newSelected":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .end local v6    # "newSelected":Landroid/view/View;
    .local v1, "count":I
    :goto_1
    if-ge v4, v1, :cond_8

    if-eqz p2, :cond_8

    .line 3641
    if-lez p2, :cond_3

    move v5, v4

    .line 3642
    .local v5, "index":I
    :goto_2
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3643
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3640
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3638
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v3    # "focusedRow":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_2
    const/4 v3, -0x1

    .restart local v3    # "focusedRow":I
    goto :goto_0

    .line 3641
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v9, v1, -0x1

    sub-int v5, v9, v4

    .restart local v5    # "index":I
    goto :goto_2

    .line 3646
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v7

    .line 3647
    .local v7, "position":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9, v7}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v8

    .line 3648
    .local v8, "rowIndex":I
    if-ne v3, v11, :cond_5

    .line 3649
    move v2, v7

    .line 3650
    move-object v6, v0

    .line 3651
    .local v6, "newSelected":Landroid/view/View;
    move v3, v8

    goto :goto_3

    .line 3652
    .end local v6    # "newSelected":Landroid/view/View;
    :cond_5
    if-ne v8, v3, :cond_1

    .line 3653
    if-lez p2, :cond_6

    if-le v7, v2, :cond_6

    .line 3655
    :goto_4
    move v2, v7

    .line 3656
    move-object v6, v0

    .line 3657
    .restart local v6    # "newSelected":Landroid/view/View;
    if-lez p2, :cond_7

    .line 3658
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 3654
    .end local v6    # "newSelected":Landroid/view/View;
    :cond_6
    if-gez p2, :cond_1

    if-ge v7, v2, :cond_1

    goto :goto_4

    .line 3660
    .restart local v6    # "newSelected":Landroid/view/View;
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 3665
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "index":I
    .end local v6    # "newSelected":Landroid/view/View;
    .end local v7    # "position":I
    .end local v8    # "rowIndex":I
    :cond_8
    if-eqz v6, :cond_a

    .line 3666
    if-eqz p1, :cond_b

    .line 3667
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3668
    iput-boolean v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 3669
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 3670
    iput-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 3672
    :cond_9
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3673
    iput v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 3678
    :cond_a
    :goto_5
    return p2

    .line 3675
    :cond_b
    invoke-virtual {p0, v6, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    goto :goto_5
.end method

.method public removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 1958
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1959
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1958
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1962
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 2796
    const/4 v0, 0x0

    return v0
.end method

.method scrollAndAppendPrepend(II)V
    .locals 0
    .param p1, "primary"    # I
    .param p2, "secondary"    # I

    .prologue
    .line 2304
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 2305
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    .line 2306
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2307
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2308
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2309
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 2310
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v2, 0x0

    .line 2341
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2342
    :cond_0
    return v2

    .line 2344
    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2345
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    .line 2347
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_2

    .line 2348
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    .line 2352
    .local v0, "result":I
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2353
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    .line 2354
    return v0

    .line 2350
    .end local v0    # "result":I
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 2579
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2580
    return-void
.end method

.method scrollToSelection(IIZI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "smooth"    # Z
    .param p4, "primaryScrollExtra"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2625
    iput p4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    .line 2626
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2627
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2628
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 2629
    invoke-virtual {p0, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 2630
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 2656
    :cond_0
    :goto_0
    return-void

    .line 2632
    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2633
    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2634
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2635
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v1, :cond_3

    .line 2636
    :cond_2
    return-void

    .line 2638
    :cond_3
    if-eqz p3, :cond_5

    .line 2639
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2640
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    return-void

    .line 2644
    :cond_4
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)I

    move-result p1

    .line 2645
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq p1, v1, :cond_0

    .line 2647
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2648
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 2651
    :cond_5
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    .line 2652
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method scrollToView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "smooth"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2840
    if-nez p1, :cond_0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    .line 2841
    return-void

    .line 2840
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2360
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2361
    :cond_0
    return v2

    .line 2363
    :cond_1
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    .line 2364
    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2366
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v1, v3, :cond_2

    .line 2367
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    .line 2371
    .local v0, "result":I
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2372
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    .line 2373
    return v0

    .line 2369
    .end local v0    # "result":I
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public setFocusOutAllowed(ZZ)V
    .locals 0
    .param p1, "throughFront"    # Z
    .param p2, "throughEnd"    # Z

    .prologue
    .line 773
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutFront:Z

    .line 774
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutEnd:Z

    .line 775
    return-void
.end method

.method public setFocusOutSideAllowed(ZZ)V
    .locals 0
    .param p1, "throughStart"    # Z
    .param p2, "throughEnd"    # Z

    .prologue
    .line 778
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    .line 779
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    .line 780
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 828
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    .line 829
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "space"    # I

    .prologue
    .line 812
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 813
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    goto :goto_0
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "numRows"    # I

    .prologue
    .line 783
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 784
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 785
    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .prologue
    const/4 v0, 0x0

    .line 840
    if-nez p1, :cond_0

    .line 841
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 842
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 849
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    return-void

    .line 847
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 674
    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 676
    return-void

    .line 679
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 680
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 681
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment;->setOrientation(I)V

    .line 682
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment;->setOrientation(I)V

    .line 683
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    .line 684
    return-void
.end method

.method public setRowHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 791
    if-gez p1, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 792
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    .line 796
    return-void

    .line 794
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid row height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "primaryScrollExtra"    # I

    .prologue
    const/4 v0, 0x0

    .line 2590
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2591
    return-void
.end method

.method public setSelection(IIZI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "smooth"    # Z
    .param p4, "primaryScrollExtra"    # I

    .prologue
    .line 2616
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v0, p1, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 2618
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    .line 2620
    :cond_1
    return-void

    .line 2617
    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    if-eq p4, v0, :cond_1

    goto :goto_0
.end method

.method public setSelectionSmooth(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 2594
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2595
    return-void
.end method

.method public setSelectionWithSub(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "primaryScrollExtra"    # I

    .prologue
    .line 2599
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2600
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 2
    .param p1, "space"    # I

    .prologue
    .line 804
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 805
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    .line 809
    :goto_0
    return-void

    .line 807
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    goto :goto_0
.end method

.method public setWindowAlignment(I)V
    .locals 1
    .param p1, "windowAlignment"    # I

    .prologue
    .line 713
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setWindowAlignment(I)V

    .line 714
    return-void
.end method

.method startPositionSmoothScroller(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2659
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;

    invoke-direct {v0, p0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$4;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    .line 2679
    .local v0, "linearSmoothScroller":Landroid/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2680
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 2681
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    return v1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 2010
    const/4 v0, 0x1

    return v0
.end method

.method updatePositionToRowMapInPostLayout()V
    .locals 6

    .prologue
    .line 2014
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 2015
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2016
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2018
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v3

    .line 2019
    .local v3, "position":I
    if-ltz v3, :cond_0

    .line 2020
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v2

    .line 2021
    .local v2, "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    if-eqz v2, :cond_0

    .line 2022
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    iget v5, v2, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2016
    .end local v2    # "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2026
    .end local v3    # "position":I
    :cond_1
    return-void
.end method

.method updateScrollLimits()V
    .locals 20

    .prologue
    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    if-nez v17, :cond_0

    .line 2488
    return-void

    .line 2492
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v5

    .line 2494
    .local v5, "highVisiblePos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    .line 2495
    .local v4, "highMaxPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v8

    .line 2496
    .local v8, "lowVisiblePos":I
    const/4 v7, 0x0

    .line 2503
    .local v7, "lowMinPos":I
    :goto_0
    if-ltz v5, :cond_1

    if-gez v8, :cond_3

    .line 2504
    :cond_1
    return-void

    .line 2498
    .end local v4    # "highMaxPos":I
    .end local v5    # "highVisiblePos":I
    .end local v7    # "lowMinPos":I
    .end local v8    # "lowVisiblePos":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v5

    .line 2499
    .restart local v5    # "highVisiblePos":I
    const/4 v4, 0x0

    .line 2500
    .restart local v4    # "highMaxPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v8

    .line 2501
    .restart local v8    # "lowVisiblePos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .restart local v7    # "lowMinPos":I
    goto :goto_0

    .line 2506
    :cond_3
    if-ne v5, v4, :cond_4

    const/4 v3, 0x1

    .line 2507
    .local v3, "highAvailable":Z
    :goto_1
    if-ne v8, v7, :cond_5

    const/4 v6, 0x1

    .line 2508
    .local v6, "lowAvailable":Z
    :goto_2
    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2509
    xor-int/lit8 v17, v6, 0x1

    .line 2508
    if-eqz v17, :cond_6

    .line 2509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v17

    .line 2508
    if-eqz v17, :cond_6

    .line 2510
    return-void

    .line 2506
    .end local v3    # "highAvailable":Z
    .end local v6    # "lowAvailable":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "highAvailable":Z
    goto :goto_1

    .line 2507
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "lowAvailable":Z
    goto :goto_2

    .line 2513
    :cond_6
    if-eqz v3, :cond_8

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    sget-object v18, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v11

    .line 2515
    .local v11, "maxEdge":I
    sget-object v17, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 2516
    .local v10, "maxChild":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v12

    .line 2517
    .local v12, "maxViewCenter":I
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2518
    .local v9, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v16

    .line 2519
    .local v16, "multipleAligns":[I
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 2520
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget v17, v16, v17

    const/16 v18, 0x0

    aget v18, v16, v18

    sub-int v17, v17, v18

    add-int v12, v12, v17

    .line 2527
    .end local v9    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v10    # "maxChild":Landroid/view/View;
    .end local v16    # "multipleAligns":[I
    :cond_7
    :goto_3
    if-eqz v6, :cond_9

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    sget-object v18, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v14

    .line 2529
    .local v14, "minEdge":I
    sget-object v17, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    .line 2530
    .local v13, "minChild":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v15

    .line 2535
    .end local v13    # "minChild":Landroid/view/View;
    .local v15, "minViewCenter":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v11, v15, v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    .line 2536
    return-void

    .line 2523
    .end local v11    # "maxEdge":I
    .end local v12    # "maxViewCenter":I
    .end local v14    # "minEdge":I
    .end local v15    # "minViewCenter":I
    :cond_8
    const v11, 0x7fffffff

    .line 2524
    .restart local v11    # "maxEdge":I
    const v12, 0x7fffffff

    .restart local v12    # "maxViewCenter":I
    goto :goto_3

    .line 2532
    :cond_9
    const/high16 v14, -0x80000000

    .line 2533
    .restart local v14    # "minEdge":I
    const/high16 v15, -0x80000000

    .restart local v15    # "minViewCenter":I
    goto :goto_4
.end method
