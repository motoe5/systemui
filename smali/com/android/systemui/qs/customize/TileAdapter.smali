.class public Lcom/android/systemui/qs/customize/TileAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TileAdapter.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileAdapter$1;,
        Lcom/android/systemui/qs/customize/TileAdapter$2;,
        Lcom/android/systemui/qs/customize/TileAdapter$Holder;,
        Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/qs/customize/TileAdapter$Holder;",
        ">;",
        "Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;"
    }
.end annotation


# instance fields
.field private mAccessibilityFromIndex:I

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityMoving:Z

.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field private mEditIndex:I

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mNeedsFocus:Z

.field private mOtherTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

.field private mTileDividerIndex:I

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/TileAdapter;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/TileAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "-value"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->selectPosition(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->showAccessibilityDialog(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->startAccessibleDrag(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 470
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 515
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$2;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 91
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 92
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 93
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 94
    return-void
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 168
    .local v1, "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v2

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_1
    return-object v3
.end method

.method private move(IILjava/util/List;)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemMoved(II)V

    .line 421
    return-void
.end method

.method private move(IILandroid/view/View;)Z
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 356
    if-ne p2, p1, :cond_0

    .line 357
    return v5

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v1, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 360
    .local v1, "fromLabel":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-direct {p0, p1, p2, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILjava/util/List;)V

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 363
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-lt p2, v2, :cond_1

    .line 364
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 365
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 364
    const/16 v4, 0x168

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x169

    invoke-static {v2, v3, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 368
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    .line 369
    aput-object v1, v3, v6

    .line 368
    const v4, 0x7f110092

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "announcement":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    .line 387
    return v5

    .line 370
    .end local v0    # "announcement":Ljava/lang/CharSequence;
    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-lt p1, v2, :cond_2

    .line 371
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 372
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 371
    const/16 v4, 0x16a

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x16b

    invoke-static {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 375
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v3, v7, [Ljava/lang/Object;

    .line 376
    aput-object v1, v3, v6

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 375
    const v4, 0x7f11008f

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announcement":Ljava/lang/CharSequence;
    goto :goto_0

    .line 378
    .end local v0    # "announcement":Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 379
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 378
    const/16 v4, 0x16c

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x16d

    invoke-static {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 382
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v3, v7, [Ljava/lang/Object;

    .line 383
    aput-object v1, v3, v6

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 382
    const v4, 0x7f110091

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announcement":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private recalcSpecs()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 138
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 139
    :cond_0
    return-void

    .line 141
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 142
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 144
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v2

    .line 145
    .local v2, "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    if-eqz v2, :cond_2

    .line 146
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 151
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 152
    .restart local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v3, :cond_4

    .line 153
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 154
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 150
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    .end local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 158
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method private selectPosition(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    .line 307
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 308
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemRemoved(I)V

    .line 310
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 312
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILandroid/view/View;)Z

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 315
    return-void
.end method

.method private showAccessibilityDialog(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 318
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 319
    .local v1, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 320
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    const v5, 0x7f11008c

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 321
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    const v5, 0x7f11008e

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 323
    .local v2, "options":[Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$6;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/systemui/qs/customize/TileAdapter$6;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;ILcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Landroid/view/View;)V

    .line 323
    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 335
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    .line 323
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 337
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/AlertDialog;Z)V

    .line 338
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Landroid/app/AlertDialog;)V

    .line 339
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 340
    return-void
.end method

.method private startAccessibleDrag(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    .line 344
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 345
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 347
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 349
    return-void
.end method

.method private static strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "tileInfo"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 411
    .local v1, "spec":Ljava/lang/String;
    const-string/jumbo v2, "custom("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 413
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 415
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v1
.end method

.method private updateDividerLocations()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 393
    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 394
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 397
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne v1, v2, :cond_1

    .line 398
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 395
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    goto :goto_1

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne v1, v2, :cond_3

    .line 405
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemChanged(I)V

    .line 407
    :cond_3
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object v0
.end method

.method public getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 179
    const/4 v0, 0x2

    return v0

    .line 181
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne p1, v0, :cond_1

    .line 182
    const/4 v0, 0x4

    return v0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 185
    const/4 v0, 0x1

    return v0

    .line 187
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .param p2, "position"    # I

    .prologue
    const v9, 0x7f11008d

    const/4 v7, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 219
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 220
    iget-object v4, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    return-void

    :cond_0
    move v2, v3

    .line 221
    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 225
    iget-object v2, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 226
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    if-eqz v3, :cond_2

    const v3, 0x7f1101d6

    .line 225
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 228
    return-void

    .line 227
    :cond_2
    const v3, 0x7f1101d5

    goto :goto_1

    .line 230
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 231
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setClickable(Z)V

    .line 232
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusable(Z)V

    .line 233
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusableInTouchMode(Z)V

    .line 234
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setVisibility(I)V

    .line 235
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setImportantForAccessibility(I)V

    .line 236
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    .line 237
    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    .line 236
    invoke-virtual {v5, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 238
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$3;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    if-eqz v3, :cond_4

    .line 247
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->requestLayout()V

    .line 248
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$4;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$4;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 256
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 258
    :cond_4
    return-void

    .line 261
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 263
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v5, :cond_a

    .line 264
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v7, v4, [Ljava/lang/Object;

    .line 265
    iget-object v8, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v8, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v7, v2

    const v8, 0x7f11008b

    .line 264
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 273
    :goto_2
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/customize/CustomizeTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 274
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setAppLabel(Ljava/lang/CharSequence;)V

    .line 275
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v6, :cond_6

    iget-boolean v2, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    xor-int/lit8 v2, v2, 0x1

    :cond_6
    invoke-virtual {v5, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 277
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 278
    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge p2, v2, :cond_c

    :cond_7
    const/4 v1, 0x1

    .line 279
    .local v1, "selectable":Z
    :goto_3
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setClickable(Z)V

    .line 280
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusable(Z)V

    .line 281
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    if-eqz v1, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setImportantForAccessibility(I)V

    .line 284
    if-eqz v1, :cond_9

    .line 285
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$5;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .end local v1    # "selectable":Z
    :cond_9
    return-void

    .line 266
    :cond_a
    iget-boolean v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    if-eqz v5, :cond_b

    .line 267
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v7, v4, [Ljava/lang/Object;

    .line 268
    add-int/lit8 v8, p2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 267
    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    .line 270
    :cond_b
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    .line 271
    add-int/lit8 v8, p2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v8, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v7, v4

    const v8, 0x7f110090

    .line 270
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 278
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "selectable":Z
    goto :goto_3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v5, 0x0

    .line 192
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 194
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    .line 195
    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    const v4, 0x7f0d00d4

    invoke-virtual {v2, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v3

    .line 197
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 198
    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    const v4, 0x7f0d00d1

    invoke-virtual {v2, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v3

    .line 200
    :cond_1
    const v3, 0x7f0d00d5

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 202
    .local v1, "frame":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/android/systemui/qs/customize/CustomizeTileView;

    new-instance v4, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v4, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 203
    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v3
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 211
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->clearDrag()V

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    .line 135
    return-void
.end method

.method public resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "specs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    .line 121
    return-void
.end method

.method public saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 114
    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 115
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 98
    return-void
.end method

.method public setTileSpecs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "currentSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    .line 129
    return-void
.end method
