.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSAnimator$1;,
        Lcom/android/systemui/qs/QSAnimator$2;
    }
.end annotation


# instance fields
.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mTopFiveQs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSAnimator;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSAnimator;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSAnimator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V
    .locals 3
    .param p1, "qs"    # Lcom/android/systemui/plugins/qs/QS;
    .param p2, "quickPanel"    # Lcom/android/systemui/qs/QuickQSPanel;
    .param p3, "panel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 374
    new-instance v1, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    .line 373
    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 386
    new-instance v1, Lcom/android/systemui/qs/QSAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSAnimator$2;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/QSPanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 75
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    .line 80
    .local v0, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_1

    .line 81
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .end local v0    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    .line 86
    :goto_0
    return-void

    .line 84
    .restart local v0    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    :cond_1
    const-string/jumbo v1, "QSAnimator"

    const-string/jumbo v2, "QS Not using page layout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearAnimationState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 346
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 347
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    .line 348
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 349
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 350
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 351
    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 352
    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 355
    .local v1, "N2":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 356
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 358
    :cond_1
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "loc1"    # [I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    aput v0, p1, v1

    .line 285
    const/4 v0, 0x1

    aput v1, p1, v0

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    .line 287
    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "loc1"    # [I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 290
    if-eq p2, p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    .line 293
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-nez v0, :cond_2

    .line 294
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 295
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 297
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    .line 298
    return-void
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v2, :cond_0

    .line 277
    return v1

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 280
    .local v0, "columnCount":I
    iget v2, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private updateAnimators()V
    .locals 34

    .prologue
    .line 146
    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 147
    .local v6, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v23, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v23 .. v23}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 148
    .local v23, "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v24, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v24 .. v24}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 150
    .local v24, "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v28

    if-nez v28, :cond_0

    return-void

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v22

    .line 152
    .local v22, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    const/4 v5, 0x0

    .line 153
    .local v5, "count":I
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v12, v0, [I

    .line 154
    .local v12, "loc1":[I
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v13, v0, [I

    .line 155
    .local v13, "loc2":[I
    const/4 v11, 0x0

    .line 156
    .local v11, "lastXDiff":I
    const/4 v10, 0x0

    .line 158
    .local v10, "lastX":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v20

    .line 163
    .local v20, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v28, v20

    check-cast v28, Landroid/view/View;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v28

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 165
    .local v7, "height":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v28

    sub-int v28, v7, v28

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    .line 165
    add-int v8, v28, v29

    .line 167
    .local v8, "heightDiff":I
    const-string/jumbo v28, "translationY"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    int-to-float v0, v8

    move/from16 v30, v0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 169
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "tile$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/plugins/qs/QSTile;

    .line 170
    .local v17, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v21

    .line 171
    .local v21, "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    if-nez v21, :cond_3

    .line 172
    const-string/jumbo v28, "QSAnimator"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "tileView is null "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v17 .. v17}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    .end local v7    # "height":I
    .end local v8    # "heightDiff":I
    .end local v17    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v18    # "tile$iterator":Ljava/util/Iterator;
    .end local v21    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "height":I
    goto/16 :goto_0

    .line 175
    .restart local v8    # "heightDiff":I
    .restart local v17    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .restart local v18    # "tile$iterator":Ljava/util/Iterator;
    .restart local v21    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    :cond_3
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v19

    .line 176
    .local v19, "tileIcon":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v25

    .line 177
    .local v25, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v5, v0, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v16

    .line 180
    .local v16, "quickTileView":Lcom/android/systemui/plugins/qs/QSTileView;
    if-eqz v16, :cond_1

    .line 182
    const/16 v28, 0x0

    aget v10, v12, v28

    .line 183
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-direct {v0, v12, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-direct {v0, v13, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 185
    const/16 v28, 0x0

    aget v28, v13, v28

    const/16 v29, 0x0

    aget v29, v12, v29

    sub-int v26, v28, v29

    .line 186
    .local v26, "xDiff":I
    const/16 v28, 0x1

    aget v28, v13, v28

    const/16 v29, 0x1

    aget v29, v12, v29

    sub-int v27, v28, v29

    .line 187
    .local v27, "yDiff":I
    const/16 v28, 0x0

    aget v28, v12, v28

    sub-int v11, v28, v10

    .line 189
    const-string/jumbo v28, "translationX"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput v30, v29, v31

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 190
    const-string/jumbo v28, "translationY"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput v30, v29, v31

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 198
    const-string/jumbo v28, "translationX"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 199
    const-string/jumbo v28, "translationY"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v16    # "quickTileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .end local v26    # "xDiff":I
    .end local v27    # "yDiff":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 204
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 209
    const/16 v28, 0x0

    aget v29, v12, v28

    add-int v29, v29, v11

    aput v29, v12, v28

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-direct {v0, v13, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 211
    const/16 v28, 0x0

    aget v28, v13, v28

    const/16 v29, 0x0

    aget v29, v12, v29

    sub-int v26, v28, v29

    .line 212
    .restart local v26    # "xDiff":I
    const/16 v28, 0x1

    aget v28, v13, v28

    const/16 v29, 0x1

    aget v29, v12, v29

    sub-int v27, v28, v29

    .line 214
    .restart local v27    # "yDiff":I
    const-string/jumbo v28, "translationY"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    int-to-float v0, v8

    move/from16 v30, v0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 215
    const-string/jumbo v28, "translationX"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 216
    const-string/jumbo v28, "translationY"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 217
    const-string/jumbo v28, "translationY"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 221
    .end local v26    # "xDiff":I
    .end local v27    # "yDiff":I
    :cond_5
    const-string/jumbo v28, "alpha"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 222
    const-string/jumbo v28, "translationY"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    neg-int v0, v8

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto/16 :goto_2

    .line 227
    .end local v17    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v19    # "tileIcon":Landroid/view/View;
    .end local v21    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .end local v25    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object v4

    .line 230
    .local v4, "brightness":Landroid/view/View;
    if-eqz v4, :cond_9

    .line 231
    const-string/jumbo v28, "translationY"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    int-to-float v0, v8

    move/from16 v30, v0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v4, v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 232
    new-instance v28, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v28 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 233
    const-string/jumbo v29, "alpha"

    .line 232
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    .line 233
    const/16 v31, 0x0

    const/16 v32, 0x0

    aput v31, v30, v32

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x1

    aput v31, v30, v32

    .line 232
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    .line 234
    const/high16 v29, 0x3f000000    # 0.5f

    .line 232
    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 244
    new-instance v28, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v28 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 245
    const v29, 0x3f5c28f6    # 0.86f

    .line 244
    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    .line 246
    const-string/jumbo v29, "alpha"

    .line 244
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    .line 246
    const/16 v31, 0x0

    const/16 v32, 0x0

    aput v31, v30, v32

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x1

    aput v31, v30, v32

    .line 244
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v29

    const-string/jumbo v30, "alpha"

    .line 244
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    .line 247
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v32, v31, v33

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x1

    aput v32, v31, v33

    .line 244
    invoke-virtual/range {v28 .. v31}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v29

    const-string/jumbo v30, "alpha"

    .line 244
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    .line 248
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v32, v31, v33

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x1

    aput v32, v31, v33

    .line 244
    invoke-virtual/range {v28 .. v31}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v29

    const-string/jumbo v30, "alpha"

    .line 244
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    .line 249
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v32, v31, v33

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x1

    aput v32, v31, v33

    .line 244
    invoke-virtual/range {v28 .. v31}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    const/4 v14, 0x0

    .line 254
    .local v14, "px":F
    const/high16 v15, 0x3f800000    # 1.0f

    .line 255
    .local v15, "py":F
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_a

    .line 256
    const/high16 v14, 0x3f800000    # 1.0f

    .line 260
    :cond_7
    :goto_4
    new-instance v9, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v9, v0, v1, v14, v15}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(FFFF)V

    .line 261
    .local v9, "interpolatorBuilder":Lcom/android/systemui/qs/PathInterpolatorBuilder;
    invoke-virtual {v9}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 262
    invoke-virtual {v9}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 263
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 264
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 266
    .end local v4    # "brightness":Landroid/view/View;
    .end local v9    # "interpolatorBuilder":Lcom/android/systemui/qs/PathInterpolatorBuilder;
    .end local v14    # "px":F
    .end local v15    # "py":F
    :cond_8
    new-instance v28, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v28 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v29, v0

    const-string/jumbo v30, "alpha"

    .line 266
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    .line 267
    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    aput v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x1

    aput v32, v31, v33

    .line 266
    invoke-virtual/range {v28 .. v31}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v29

    const-string/jumbo v30, "alpha"

    .line 266
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    .line 268
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v32, v31, v33

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x1

    aput v32, v31, v33

    .line 266
    invoke-virtual/range {v28 .. v31}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v29

    const-string/jumbo v30, "alpha"

    .line 266
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    .line 269
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v32, v31, v33

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x1

    aput v32, v31, v33

    .line 266
    invoke-virtual/range {v28 .. v31}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    move-object/from16 v29, v0

    .line 266
    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    .line 271
    const/high16 v29, 0x3f000000    # 0.5f

    .line 266
    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 273
    return-void

    .line 238
    .restart local v4    # "brightness":Landroid/view/View;
    :cond_9
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto/16 :goto_3

    .line 257
    .restart local v14    # "px":F
    .restart local v15    # "py":F
    :cond_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_7

    .line 258
    const v14, 0x3ecccccd    # 0.4f

    goto/16 :goto_4
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    .prologue
    .line 327
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 328
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 329
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 323
    return-void
.end method

.method public onAnimationStarted()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 336
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 337
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 339
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 340
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 336
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 343
    :cond_1
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 139
    :cond_0
    if-nez p1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 142
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 143
    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 90
    return-void
.end method

.method public onTilesChanged()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    const-string/jumbo v2, "sysui_qs_fancy_anim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 133
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 134
    return-void

    :cond_2
    move v0, v1

    .line 123
    goto :goto_0

    .line 127
    :cond_3
    const-string/jumbo v2, "sysui_qs_move_whole_rows"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    .line 129
    :cond_6
    const-string/jumbo v0, "sysui_qqs_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_fancy_anim"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 109
    const-string/jumbo v2, "sysui_qs_move_whole_rows"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysui_qqs_count"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 108
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 117
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 118
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "qsh"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 102
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 104
    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 2
    .param p1, "onKeyguard"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 94
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 98
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    .line 303
    return-void

    .line 305
    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 318
    :cond_2
    :goto_0
    return-void

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_0
.end method
